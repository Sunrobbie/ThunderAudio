/* Edge Impulse ingestion SDK
 * Copyright (c) 2020 EdgeImpulse Inc.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

/* Include ----------------------------------------------------------------- */
#include "edge-impulse-sdk/classifier/ei_run_classifier.h"
#include "edge-impulse-sdk/dsp/numpy.hpp"
#include "ei_inertialsensor.h"
#include "ei_microphone.h"
#include "ei_device_silabs_efm32mg.h"

extern "C" {
    void send_classifier_output(const uint8_t *output);
    void sl_system_process_action(void);
}

#if defined(EI_CLASSIFIER_SENSOR) && EI_CLASSIFIER_SENSOR == EI_CLASSIFIER_SENSOR_ACCELEROMETER

/* Private variables ------------------------------------------------------- */
static float acc_buf[EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE];
static int acc_sample_count = 0;

static bool acc_data_callback(const void *sample_buf, uint32_t byteLength)
{
    float *buffer = (float *)sample_buf;
    for(uint32_t i = 0; i < (byteLength / sizeof(float)); i++) {
        acc_buf[acc_sample_count + i] = buffer[i];
    }

    return true;
}

void run_nn(bool debug)
{
    bool stop_inferencing = false;
    uint8_t prev_classification = EI_CLASSIFIER_LABEL_COUNT;

    // summary of inferencing settings (from model_metadata.h)
    ei_printf("Inferencing settings:\n");
    ei_printf("\tInterval: ");
    ei_printf_float((float)EI_CLASSIFIER_INTERVAL_MS);
    ei_printf("ms.\n");
    ei_printf("\tFrame size: %d\n", EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE);
    ei_printf("\tSample length: ");
    ei_printf_float(1000.0f * static_cast<float>(EI_CLASSIFIER_RAW_SAMPLE_COUNT) /
                  (1000.0f / static_cast<float>(EI_CLASSIFIER_INTERVAL_MS)));
    ei_printf("ms.\n");
    ei_printf("\tNo. of classes: %d\n", sizeof(ei_classifier_inferencing_categories) /
                                            sizeof(ei_classifier_inferencing_categories[0]));

    ei_printf("Starting inferencing, press 'b' to break\n");

    ei_inertial_sample_start(&acc_data_callback, EI_CLASSIFIER_INTERVAL_MS);

    while (stop_inferencing == false) {

        sl_system_process_action();

        int ble_stop_detect = 0;

        ei_printf("Starting inferencing in 2 seconds...\n");

        // instead of wait_ms, we'll wait on the signal, this allows threads to cancel us...
        for(int i = 0; i < 200; i++) {
            if (ei_sleep(10) != EI_IMPULSE_OK) {
                ble_stop_detect |= EiDevice.idle_wait();
                break;
            }
        }

        if(ei_user_invoke_stop() || (ble_stop_detect == -1)) {
            ei_printf("Inferencing stopped by user\r\n");
            break;
        }

        if (stop_inferencing) {
            break;
        }

        ei_printf("Sampling...\n");

            /* Run sampler */
        acc_sample_count = 0;
        for(int i = 0; i < EI_CLASSIFIER_RAW_SAMPLE_COUNT; i++) {
            ei_inertial_read_data();
            acc_sample_count += EI_CLASSIFIER_RAW_SAMPLES_PER_FRAME;

            ble_stop_detect |= EiDevice.idle_wait();
        }

        // Create a data structure to represent this window of data
        signal_t signal;
        int err = numpy::signal_from_buffer(acc_buf, EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE, &signal);
        if (err != 0) {
            ei_printf("ERR: signal_from_buffer failed (%d)\n", err);
        }

        // run the impulse: DSP, neural network and the Anomaly algorithm
        ei_impulse_result_t result = { 0 };
        EI_IMPULSE_ERROR ei_error = run_classifier(&signal, &result, debug);
        if (ei_error != EI_IMPULSE_OK) {
            ei_printf("Failed to run impulse (%d)\n", ei_error);
            break;
        }

        // print the predictions
        ei_printf("Predictions (DSP: %d ms., Classification: %d ms., Anomaly: %d ms.): \n",
            result.timing.dsp, result.timing.classification, result.timing.anomaly);
        for (size_t ix = 0; ix < EI_CLASSIFIER_LABEL_COUNT; ix++) {
            ei_printf("    %s: \t", result.classification[ix].label);
            ei_printf_float(result.classification[ix].value);
            ei_printf("\r\n");

            if(result.classification[ix].value > 0.8 && prev_classification != ix) {
                send_classifier_output((const uint8_t *)result.classification[ix].label);
                prev_classification = ix;
            }

        }
#if EI_CLASSIFIER_HAS_ANOMALY == 1
        ei_printf("    anomaly score: ");
        ei_printf_float(result.anomaly);
        ei_printf("\r\n");
        if (result.anomaly > 1.0 && prev_classification != EI_CLASSIFIER_LABEL_COUNT)
        {
            send_classifier_output((const uint8_t *)"anomaly");
            prev_classification = EI_CLASSIFIER_LABEL_COUNT;
        }
#endif

        if(ei_user_invoke_stop() || (EiDevice.idle_wait() == -1) || (ble_stop_detect == -1)) {
            ei_printf("Inferencing stopped by user\r\n");
            break;
        }
    }

    EiDevice.set_state(eiStateIdle);
}
#elif defined(EI_CLASSIFIER_SENSOR) && EI_CLASSIFIER_SENSOR == EI_CLASSIFIER_SENSOR_MICROPHONE
void run_nn(bool debug)
{
    if (EI_CLASSIFIER_FREQUENCY != 16000) {
        ei_printf("ERR: Frequency is %d but can only sample at 16000Hz\n", (int)EI_CLASSIFIER_FREQUENCY);
        return;
    }

    extern signal_t ei_microphone_get_signal();
    uint8_t prev_classification = EI_CLASSIFIER_LABEL_COUNT;

    // summary of inferencing settings (from model_metadata.h)
    ei_printf("Inferencing settings:\n");
    ei_printf("\tInterval: ");
    ei_printf_float((float)EI_CLASSIFIER_INTERVAL_MS);
    ei_printf("ms.\n");
    ei_printf("\tFrame size: %d\n", EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE);
    ei_printf("\tSample length: %d ms.\n", EI_CLASSIFIER_RAW_SAMPLE_COUNT / 16);
    ei_printf("\tNo. of classes: %d\n", sizeof(ei_classifier_inferencing_categories) /
                                            sizeof(ei_classifier_inferencing_categories[0]));

    if (ei_microphone_inference_start(EI_CLASSIFIER_RAW_SAMPLE_COUNT) == false) {
        ei_printf("ERR: Failed to setup audio sampling\r\n");
        return;
    }

    ei_printf("Starting inferencing, press 'b' to break\n");

    while (1) {

        sl_system_process_action();

        int ble_stop_detect = 0;

        ei_printf("Starting inferencing in 2 seconds...\n");

        // instead of wait_ms, we'll wait on the signal, this allows threads to cancel us...
        for(int i = 0; i < 200; i++) {
            if (ei_sleep(10) != EI_IMPULSE_OK) {
                ble_stop_detect |= EiDevice.idle_wait();
                break;
            }
        }

        if(ei_user_invoke_stop() || (ble_stop_detect == -1)) {
            ei_printf("Inferencing stopped by user\r\n");
            break;
        }

        ei_printf("Recording...\n");

        ei_microphone_inference_reset_buffers();
        bool m = ei_microphone_inference_record();
        if (!m) {
            ei_printf("ERR: Failed to record audio...\n");
            break;
        }

        ei_printf("Recording done\n");

        signal_t signal;
        signal.total_length = EI_CLASSIFIER_RAW_SAMPLE_COUNT;
        signal.get_data = &ei_microphone_audio_signal_get_data;
        ei_impulse_result_t result = {0};

        EI_IMPULSE_ERROR r = run_classifier(&signal, &result, debug);
        if (r != EI_IMPULSE_OK) {
            ei_printf("ERR: Failed to run classifier (%d)\n", r);
            break;
        }

        // print the predictions
        ei_printf("Predictions (DSP: %d ms., Classification: %d ms., Anomaly: %d ms.): \n",
            result.timing.dsp, result.timing.classification, result.timing.anomaly);
        for (size_t ix = 0; ix < EI_CLASSIFIER_LABEL_COUNT; ix++) {
            ei_printf("    %s: \t", result.classification[ix].label);
            ei_printf_float(result.classification[ix].value);
            ei_printf("\r\n");

            if(result.classification[ix].value > 0.8 && prev_classification != ix) {
                send_classifier_output((const uint8_t *)result.classification[ix].label);
                prev_classification = ix;
            }
        }
#if EI_CLASSIFIER_HAS_ANOMALY == 1
        ei_printf("    anomaly score: ");
        ei_printf_float(result.anomaly);
        ei_printf("\r\n");
        if (result.anomaly > 1.0 && prev_classification != EI_CLASSIFIER_LABEL_COUNT)
        {
            send_classifier_output((const uint8_t *)"anomaly");
            prev_classification = EI_CLASSIFIER_LABEL_COUNT;
        }
#endif

        if(ei_user_invoke_stop() || (EiDevice.idle_wait() == -1) || (ble_stop_detect == -1)) {
            ei_printf("Inferencing stopped by user\r\n");
            break;
        }
    }

    ei_microphone_inference_end();
}

void run_nn_continuous(bool debug)
{
    if (EI_CLASSIFIER_FREQUENCY != 16000) {
        ei_printf("ERR: Frequency is %d but can only sample at 16000Hz\n", (int)EI_CLASSIFIER_FREQUENCY);
        return;
    }

    bool stop_inferencing = false;
    uint8_t prev_classification = EI_CLASSIFIER_LABEL_COUNT;
    int print_results = -(EI_CLASSIFIER_SLICES_PER_MODEL_WINDOW);
    // summary of inferencing settings (from model_metadata.h)
    ei_printf("Inferencing settings:\n");
    ei_printf("\tInterval: ");
    ei_printf_float((float)EI_CLASSIFIER_INTERVAL_MS);
    ei_printf("ms.\n");
    ei_printf("\tFrame size: %d\n", EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE);
    ei_printf("\tSample length: %d ms.\n", EI_CLASSIFIER_RAW_SAMPLE_COUNT / 16);
    ei_printf("\tNo. of classes: %d\n", sizeof(ei_classifier_inferencing_categories) /
                                            sizeof(ei_classifier_inferencing_categories[0]));

    ei_printf("Starting inferencing, press 'b' to break\n");

    run_classifier_init();
    ei_microphone_inference_start(EI_CLASSIFIER_SLICE_SIZE);

    while (stop_inferencing == false) {

        sl_system_process_action();

        bool m = ei_microphone_inference_record();
        if (!m) {
            ei_printf("ERR: Failed to record audio...\n");
            break;
        }

        signal_t signal;
        signal.total_length = EI_CLASSIFIER_SLICE_SIZE;
        signal.get_data = &ei_microphone_audio_signal_get_data;
        ei_impulse_result_t result = {0};

        EI_IMPULSE_ERROR r = run_classifier_continuous(&signal, &result, debug);
        if (r != EI_IMPULSE_OK) {
            ei_printf("ERR: Failed to run classifier (%d)\n", r);
            break;
        }

        if (++print_results >= (EI_CLASSIFIER_SLICES_PER_MODEL_WINDOW >> 1)) {
            // print the predictions
            ei_printf("Predictions (DSP: %d ms., Classification: %d ms., Anomaly: %d ms.): \n",
                result.timing.dsp, result.timing.classification, result.timing.anomaly);
            for (size_t ix = 0; ix < EI_CLASSIFIER_LABEL_COUNT; ix++) {
                ei_printf("    %s: \t", result.classification[ix].label);
                ei_printf_float(result.classification[ix].value);
                ei_printf("\r\n");

                if(result.classification[ix].value > 0.8 && prev_classification != ix) {
                    send_classifier_output((const uint8_t *)result.classification[ix].label);
                    prev_classification = ix;
                }
            }
#if EI_CLASSIFIER_HAS_ANOMALY == 1
            ei_printf("    anomaly score: ");
            ei_printf_float(result.anomaly);
            ei_printf("\r\n");
            if (result.anomaly > 1.0 && prev_classification != EI_CLASSIFIER_LABEL_COUNT)
            {
                send_classifier_output((const uint8_t *)"anomaly");
                prev_classification = EI_CLASSIFIER_LABEL_COUNT;
            }
#endif

            print_results = 0;
        }

        if(ei_user_invoke_stop() || (EiDevice.idle_wait() == -1)) {
            ei_printf("Inferencing stopped by user\r\n");
            break;
        }
    }

    ei_microphone_inference_end();
}

#else

#error "EI_CLASSIFIER_SENSOR not configured, cannot configure `run_nn`"

#endif  // EI_CLASSIFIER_SENSOR

void run_nn_continuous_normal()
{
#if defined(EI_CLASSIFIER_SENSOR) && EI_CLASSIFIER_SENSOR == EI_CLASSIFIER_SENSOR_MICROPHONE
    run_nn_continuous(false);
#else
    ei_printf("Error no continuous classification available for current model\r\n");
#endif
}

void run_nn_normal(void)
{
    run_nn(false);
}
