#include "mbed.h"
#include "ei_run_classifier.h"
#include "numpy.hpp"
#include "TextLCD.h"
#include "serial_api.h"
#include "Si7021.h"
#include <cstdint>
#include <cstdio>
#include <inttypes.h>

/* Turn on power supply to ENV sensor suite */
DigitalOut env_en(PF9, 1);
DigitalOut mic_en(PF10, 1);

//I2C init
I2C i2c_lcd(PC10, PC11);
I2C env_i2c(PC4, PC5);


const int addr7bit = 0x27;      // 7 bit I2C address
const int addr8bit = addr7bit << 1; // 8bit I2C address

TextLCD_I2C lcd(&i2c_lcd, addr8bit, TextLCD::LCD16x2);  // I2C bus, PCF8574 Slaveaddress, LCD Type, Ctrl Type


static int64_t sampling_freq = EI_CLASSIFIER_FREQUENCY; // in Hz.
static int64_t time_between_samples_us = (1000000 / (sampling_freq - 1));
// to classify 1 frame of data you need EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE values
static float features[EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE];

int main() {
    lcd.cls();

    lcd.printf("Hello World");

    lcd.setCursor(TextLCD::CurOff_BlkOn);
    //aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

    // int16_t pDataXYZ[3] = {0};
    // Timer t;
    // t.start();

    Si7021* rhtSensor = new Si7021(PC4, PC5);

    while (1) {
        rhtSensor -> measure();
        rhtSensor -> measure();

        int32_t temperature = rhtSensor -> get_temperature();

        lcd.cls();

        printf("T: %ld.%03ld degC\r\n", temperature/1000, abs(temperature%1000));

        lcd.printf("T: %ld.%03ld degC\r\n", temperature/1000, abs(temperature%1000));

        ThisThread::sleep_for(1s);
        /**
        // fill the features array
        for (size_t ix = 0; ix < EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE; ix += EI_CLASSIFIER_RAW_SAMPLES_PER_FRAME) {
            int64_t next_tick = t.read_us() + time_between_samples_us;
            BSP_ACCELERO_AccGetXYZ(pDataXYZ);

            // copy accelerometer data into the features array
            features[ix + 0] = (float)pDataXYZ[0];
            features[ix + 1] = (float)pDataXYZ[0];
            features[ix + 2] = (float)pDataXYZ[0];

            while (t.read_us() < next_tick) {
                // busy loop 
            }
        }

        // frame full? then classify
        ei_impulse_result_t result = { 0 };

        // create signal from features frame
        signal_t signal;
        numpy::signal_from_buffer(features, EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE, &signal);

        // run classifier
        EI_IMPULSE_ERROR res = run_classifier(&signal, &result, false);
        ei_printf("run_classifier returned: %d\n", res);
        if (res != 0) return 1;

        // print predictions
        ei_printf("Predictions (DSP: %d ms., Classification: %d ms., Anomaly: %d ms.): \n",
            result.timing.dsp, result.timing.classification, result.timing.anomaly);

        // print the predictions
        for (size_t ix = 0; ix < EI_CLASSIFIER_LABEL_COUNT; ix++) {
            ei_printf("%s:\t%.5f\n", result.classification[ix].label, result.classification[ix].value);
        }
    #if EI_CLASSIFIER_HAS_ANOMALY == 1
        ei_printf("anomaly:\t%.3f\n", result.anomaly);
    #endif
    */
    }
}