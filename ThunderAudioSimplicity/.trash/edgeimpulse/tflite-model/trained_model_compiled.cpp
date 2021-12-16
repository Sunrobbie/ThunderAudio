/* Generated by Edge Impulse
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
// Generated on: 01.12.2021 21:22:23

#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include "edge-impulse-sdk/tensorflow/lite/c/builtin_op_data.h"
#include "edge-impulse-sdk/tensorflow/lite/c/common.h"
#include "edge-impulse-sdk/tensorflow/lite/micro/micro_mutable_op_resolver.h"
#include "edge-impulse-sdk/porting/ei_classifier_porting.h"

#if EI_CLASSIFIER_PRINT_STATE
#if defined(__cplusplus) && EI_C_LINKAGE == 1
extern "C" {
    extern void ei_printf(const char *format, ...);
}
#else
extern void ei_printf(const char *format, ...);
#endif
#endif

#if defined __GNUC__
#define ALIGN(X) __attribute__((aligned(X)))
#elif defined _MSC_VER
#define ALIGN(X) __declspec(align(X))
#elif defined __TASKING__
#define ALIGN(X) __align(X)
#endif

using namespace tflite;
using namespace tflite::ops;
using namespace tflite::ops::micro;

namespace {

constexpr int kTensorArenaSize = 2096;

#if defined(EI_CLASSIFIER_ALLOCATION_STATIC)
uint8_t tensor_arena[kTensorArenaSize] ALIGN(16);
#elif defined(EI_CLASSIFIER_ALLOCATION_STATIC_HIMAX)
#pragma Bss(".tensor_arena")
uint8_t tensor_arena[kTensorArenaSize] ALIGN(16);
#pragma Bss()
#elif defined(EI_CLASSIFIER_ALLOCATION_STATIC_HIMAX_GNU)
uint8_t tensor_arena[kTensorArenaSize] ALIGN(16) __attribute__((section(".tensor_arena")));
#else
#define EI_CLASSIFIER_ALLOCATION_HEAP 1
uint8_t* tensor_arena = NULL;
#endif

static uint8_t* tensor_boundary;
static uint8_t* current_location;

template <int SZ, class T> struct TfArray {
  int sz; T elem[SZ];
};
enum used_operators_e {
  OP_RESHAPE, OP_CONV_2D, OP_MAX_POOL_2D, OP_FULLY_CONNECTED, OP_SOFTMAX,  OP_LAST
};
struct TensorInfo_t { // subset of TfLiteTensor used for initialization from constant memory
  TfLiteAllocationType allocation_type;
  TfLiteType type;
  void* data;
  TfLiteIntArray* dims;
  size_t bytes;
  TfLiteQuantization quantization;
};
struct NodeInfo_t { // subset of TfLiteNode used for initialization from constant memory
  struct TfLiteIntArray* inputs;
  struct TfLiteIntArray* outputs;
  void* builtin_data;
  used_operators_e used_op_index;
};

TfLiteContext ctx{};
TfLiteTensor tflTensors[23];
TfLiteEvalTensor tflEvalTensors[23];
TfLiteRegistration registrations[OP_LAST];
TfLiteNode tflNodes[11];

const TfArray<2, int> tensor_dimension0 = { 2, { 1,650 } };
const TfArray<1, float> quant0_scale = { 1, { 0.050363607704639435, } };
const TfArray<1, int> quant0_zero = { 1, { 10 } };
const TfLiteAffineQuantization quant0 = { (TfLiteFloatArray*)&quant0_scale, (TfLiteIntArray*)&quant0_zero, 0 };
const ALIGN(8) int32_t tensor_data1[2] = { -1, 208, };
const TfArray<1, int> tensor_dimension1 = { 1, { 2 } };
const ALIGN(8) int32_t tensor_data2[8] = { -457, -2171, -6674, -151, -7019, -4138, -1565, -6388, };
const TfArray<1, int> tensor_dimension2 = { 1, { 8 } };
const TfArray<8, float> quant2_scale = { 8, { 0.0010834012646228075, 0.00052093254635110497, 0.00041422859067097306, 0.00048082435387186706, 0.00025347562041133642, 0.0006395388045348227, 0.00038468657294288278, 0.00038124757702462375, } };
const TfArray<8, int> quant2_zero = { 8, { 0,0,0,0,0,0,0,0 } };
const TfLiteAffineQuantization quant2 = { (TfLiteFloatArray*)&quant2_scale, (TfLiteIntArray*)&quant2_zero, 0 };
const ALIGN(8) int32_t tensor_data3[16] = { -330, -442, -438, 23, 333, -556, -179, -21, 216, -342, -1312, -1068, 314, -767, -1422, -325, };
const TfArray<1, int> tensor_dimension3 = { 1, { 16 } };
const TfArray<16, float> quant3_scale = { 16, { 0.00045729850535281003, 0.001256088144145906, 0.0014395650941878557, 0.0014687469229102135, 0.0013854942517355084, 0.00085411604959517717, 0.0016498031327500939, 0.00090376025764271617, 0.0025267696473747492, 0.00096624653087928891, 0.00049452483654022217, 0.00058252940652891994, 0.0011882003163918853, 0.00075172260403633118, 0.00035187762114219368, 0.0004899266641587019, } };
const TfArray<16, int> quant3_zero = { 16, { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 } };
const TfLiteAffineQuantization quant3 = { (TfLiteFloatArray*)&quant3_scale, (TfLiteIntArray*)&quant3_zero, 0 };
const ALIGN(8) int32_t tensor_data4[6] = { 10284, -1806, -1529, -2867, -2048, -208, };
const TfArray<1, int> tensor_dimension4 = { 1, { 6 } };
const TfArray<1, float> quant4_scale = { 1, { 0.00035441017826087773, } };
const TfArray<1, int> quant4_zero = { 1, { 0 } };
const TfLiteAffineQuantization quant4 = { (TfLiteFloatArray*)&quant4_scale, (TfLiteIntArray*)&quant4_zero, 0 };
const ALIGN(8) int8_t tensor_data5[6*208] = { 
  -28, 23, 0, -14, 2, -38, -12, -11, -49, 18, 28, 34, -12, 4, -19, 13, -12, 16, 8, -40, 6, -34, -19, -34, -62, 0, 0, 29, -33, -13, -27, 12, -16, 23, -21, -51, 7, -40, -27, -6, -44, -21, -9, 9, -23, -18, -46, 17, -19, 28, -16, -29, -3, -24, 2, -1, -42, -49, 0, 4, -13, -37, -62, 11, -29, 14, -13, -80, -5, -52, -6, -24, -59, -27, -12, 11, 2, -26, -56, 13, 1, 7, -31, -60, -12, -33, 1, -1, -44, -22, 13, 4, -9, -37, -49, 18, -18, 12, -12, -65, -3, -51, -29, -13, -43, -28, -14, 15, -11, -17, -69, 15, -11, 27, -29, -58, -20, -40, -14, -15, -43, -23, -2, 7, -8, -17, -46, 24, -20, 34, -29, -45, -7, -41, -13, -18, -38, -28, 13, 12, -10, -33, -45, 19, -18, 23, -29, -36, -8, -35, 9, -8, -46, -20, 1, 4, -9, -28, -61, 27, -13, 15, -26, -37, -1, -30, 4, -39, -55, -13, -5, 8, -7, -26, -49, 22, -32, 8, -25, -17, 20, 5, -31, -29, -48, -12, 3, -12, -3, -16, -30, 15, -31, -6, -32, -16, 35, 21, 10, -13, -42, -1, 1, 2, -13, -27, -28, -1, 
  -2, 7, -13, 8, -13, 21, 9, 9, 12, -26, 21, -2, -31, 17, 16, -2, -7, 0, -42, 7, -32, 18, 14, 3, 3, -33, 9, -4, -24, -38, 5, -1, 0, -5, -4, 12, -6, 20, 18, -4, 9, -10, 22, -7, -35, -13, 5, -8, -2, -6, -48, 17, 37, 20, 15, -4, 3, -14, 38, -6, -24, -39, 13, -9, -7, -7, -39, 12, 47, 25, 23, -9, 17, -12, 21, -6, -19, -24, 12, -11, -7, -18, -32, 8, 47, 18, 20, -51, 6, -3, 17, -5, -10, -31, 10, -23, -8, -23, -56, 18, 59, 19, 15, -52, 21, -5, 22, 4, -12, -43, 12, -15, -20, -38, -60, 17, 49, 22, 10, -42, 7, -15, 25, -6, -4, -35, 12, -15, 2, -15, -38, 18, 69, 25, 11, -34, 16, -18, 19, 1, -11, -47, 16, -20, 5, -18, -33, 12, 49, 13, 0, -23, 7, -27, 30, 5, -7, -40, 7, -4, -3, -20, -51, 15, 55, 9, 0, -29, 7, -7, 23, 9, -9, -36, 16, -15, 1, -8, -24, 7, 50, 15, 7, -29, 8, -9, 25, -11, -16, -43, 19, -7, 4, 7, -7, -10, 0, 0, -23, 5, 2, -24, 5, 10, -32, -25, 1, -5, 
  -3, -26, -24, 5, 16, 13, 13, -2, 2, -30, 11, -10, 12, -40, 2, -7, -10, -17, -3, 24, 12, 16, 16, 8, -4, -16, -30, -13, 5, 20, 5, -5, 5, -20, -1, 16, 2, 23, 24, -34, 13, -15, -33, -10, 4, 16, 9, -12, -16, -5, 17, 18, -11, 18, 24, -1, 1, -4, -34, -17, -11, -9, 8, -16, -8, -30, 8, 7, -19, 22, 12, 17, 6, -13, -34, -21, -14, 0, 6, -18, -16, -10, 15, 23, -20, 21, 25, 34, 6, -13, -27, -20, -8, 23, 4, -15, -15, -18, 11, 22, -22, 21, 19, 39, 1, -11, -38, -10, -36, 6, 7, -15, -27, -8, 18, 17, -27, 25, 18, 29, 8, -11, -17, -18, -33, 9, 5, -21, -13, 5, 17, 18, -15, 31, 21, 21, -2, -13, -28, -19, -4, 16, 9, -16, -13, -3, 24, 8, -33, 19, 7, 25, 4, 9, -32, -11, -14, 9, 3, -19, -5, -14, 20, 14, -41, 12, 11, 19, -1, -2, -30, -10, -10, 18, 11, -18, -5, -3, 15, 12, -32, 23, 14, 19, 17, -5, -38, -10, 2, 19, -1, -6, -1, 7, -8, 5, -6, -3, -20, 12, 7, -6, -14, -15, 2, 6, 12, 3, 
  4, -46, 39, -10, 12, -82, -25, -21, -14, 9, -13, 5, -24, -10, -72, 18, 12, -25, 33, -5, -2, -59, -97, -58, -5, 2, 4, 1, 8, 23, -91, 8, 19, -39, 25, -43, 3, -49, -34, 5, 10, 22, 11, -13, -7, 43, -53, 13, 16, -21, 21, -52, 10, -42, -21, -5, 17, 23, -44, 1, 0, 41, -80, 20, 13, -17, 29, -71, 12, -24, -38, -13, -1, 29, -30, -54, 7, 41, -80, 16, 4, -10, 23, -79, -14, -28, -64, -6, -14, 13, -71, -50, -11, 30, -90, 19, 18, -18, 23, -97, -21, -27, -36, 1, -13, 28, -67, -61, -3, 43, -88, 20, 14, -5, 32, -77, -8, -33, -55, -7, 21, 23, -32, -78, 2, 40, -67, 19, 15, -17, 25, -67, -6, -10, -33, -3, 0, 26, -34, -91, -22, 37, -89, 22, 14, -24, 29, -31, -27, -20, -31, -8, -14, 21, -51, -82, 18, 35, -76, -2, 15, -18, 27, -35, -3, -21, -17, -1, 5, 19, -36, -30, -3, 26, -110, 20, 17, -9, 24, -26, -43, -21, -53, -5, 13, 8, -57, 0, -38, 25, -127, 4, 27, 15, 23, -36, 7, 21, 44, -18, 12, 37, -33, -52, 32, 7, -67, 9, 
  11, 12, -10, -6, -18, 3, -44, -30, -2, 25, -35, -26, 11, -41, -10, -18, 17, 17, 8, -7, -7, 0, -79, -7, -4, 28, -26, -33, 15, -19, 4, -16, 23, 21, 8, 16, -6, -15, -74, -8, -4, 23, -18, -1, 22, -3, 14, -11, 19, 14, -3, 19, -13, -11, -54, -10, -8, 12, -44, -5, 24, 11, 12, -13, 23, 19, 2, 13, -20, -13, -53, 4, -14, 20, -30, 8, 31, 4, 13, -6, 21, 21, 3, 13, -14, -2, -59, 5, -6, 12, -23, -4, 22, -10, 12, -9, 18, 16, 0, 11, -25, 1, -46, 17, -5, 21, -32, 4, 28, -3, 9, -5, 15, 22, 10, 19, -26, -1, -56, 11, -2, 18, -10, -3, 18, 1, 10, -6, 23, 9, 18, 14, -23, 8, -46, 8, -1, 18, -24, 2, 23, 5, 15, -9, 8, 5, 6, 6, -35, 5, -43, 2, -4, 18, -10, 13, 15, 0, 8, -7, 8, -1, -1, -4, -11, -8, -46, -1, 0, 19, -3, -2, -1, 2, 14, -8, 10, 2, 6, -15, -32, 8, -59, -2, 11, 15, -18, 7, -5, -14, 8, 11, 1, 2, -21, -4, -3, -7, -2, -17, 17, 13, -1, 7, 8, -30, 3, 4, 
  -21, -4, 0, -12, -3, -37, 7, 11, 17, -23, -39, -17, 20, 17, 7, -3, 1, -4, -11, -28, 0, -13, 19, 27, 17, -9, 0, 3, 19, -25, 4, 0, -9, -8, -7, -31, -12, -5, 17, 12, 14, -24, 20, 14, 13, -31, 14, 7, -20, -13, -10, -27, -11, -10, 20, 8, 7, -12, 21, 24, 6, -20, 13, 6, -17, -8, -5, -18, -18, -5, 22, -5, 10, -24, 28, 16, 12, -23, 6, 4, -15, -1, -28, -28, -5, -13, 26, 10, 12, -17, 29, 15, 2, -33, 10, -3, -5, -9, -22, -18, -21, -13, 14, -10, 13, -8, 25, 18, 0, -52, 6, -1, -2, -4, -24, -17, -14, -12, 15, -11, 10, -11, 22, 16, 6, -68, 8, -2, -10, -4, -28, -17, -16, -15, 22, -8, 15, -20, 22, 18, -2, -49, 12, -4, -4, -4, -36, -27, -19, -21, 11, 1, 19, -9, 22, 22, 6, -27, 6, -3, -1, -8, -17, -24, -15, -15, 10, -3, 10, -32, 16, 17, 19, -32, 3, -2, -2, 2, -2, -17, -21, -9, -3, 9, 16, -26, 13, -6, 21, -10, 16, -5, -5, -5, -17, -12, -12, -8, -24, 19, 20, -30, 0, 16, 11, -23, 11, -12, 
};
const TfArray<2, int> tensor_dimension5 = { 2, { 6,208 } };
const TfArray<1, float> quant5_scale = { 1, { 0.015336824581027031, } };
const TfArray<1, int> quant5_zero = { 1, { 0 } };
const TfLiteAffineQuantization quant5 = { (TfLiteFloatArray*)&quant5_scale, (TfLiteIntArray*)&quant5_zero, 0 };
const ALIGN(8) int8_t tensor_data6[8*1*3*13] = { 
  /* [0][0][][] */ -6,-5,-3,-3,-1,2,-1,7,-3,-2,0,0,-1, 124,8,2,7,1,4,-1,2,2,2,1,2,1, -127,0,-6,-2,-1,-1,2,4,-3,-1,3,0,3, 
  /* [1][0][][] */ 127,38,-40,-40,5,12,-8,14,-6,-12,-5,3,-8, 3,50,9,-18,9,13,10,13,5,-4,0,0,6, -44,5,-36,-21,7,20,10,10,7,-8,-7,-1,-2, 
  /* [2][0][][] */ 127,-11,-32,35,32,-36,6,42,-10,-38,15,15,-4, 118,4,-23,36,0,-26,15,4,-2,-11,1,2,15, 26,3,14,40,-39,3,2,9,-9,-18,-17,-3,6, 
  /* [3][0][][] */ -127,-13,-15,2,-9,-18,11,15,2,-24,-24,5,11, -101,5,-12,-50,-3,2,-4,2,10,-5,-2,5,18, 13,56,-15,-2,21,13,-23,-2,-1,-11,-8,5,-8, 
  /* [4][0][][] */ 127,54,52,57,-67,13,8,-30,-19,43,-28,28,-18, 51,91,48,42,-91,-9,10,-27,21,-24,24,-30,3, 88,89,39,15,-78,60,-35,3,-4,-5,-7,-5,8, 
  /* [5][0][][] */ -53,-10,-8,-29,10,5,6,-16,-4,18,-3,-5,-7, 15,11,-26,-21,12,9,8,-11,-1,-4,1,-2,3, 127,26,-5,-22,19,13,-7,-5,-6,9,-8,3,-5, 
  /* [6][0][][] */ 50,24,1,50,18,-13,-10,31,4,-18,-4,4,-19, -13,43,2,54,-8,-16,-10,-10,-1,4,10,17,-1, -127,110,37,48,-18,-17,10,-7,-11,10,-14,-19,4, 
  /* [7][0][][] */ -77,-30,44,-9,-12,4,-19,-15,13,-17,8,-6,0, 76,-44,59,-7,-29,-9,-22,-23,-10,6,0,7,0, 127,33,61,-23,-67,-23,-16,16,2,7,5,-5,-9, 
};
const TfArray<4, int> tensor_dimension6 = { 4, { 8,1,3,13 } };
const TfArray<8, float> quant6_scale = { 8, { 0.021511590108275414, 0.010343431495130062, 0.0082247601822018623, 0.0095470594242215157, 0.0050329123623669147, 0.012698431499302387, 0.0076381852850317955, 0.0075699021108448505, } };
const TfArray<8, int> quant6_zero = { 8, { 0,0,0,0,0,0,0,0 } };
const TfLiteAffineQuantization quant6 = { (TfLiteFloatArray*)&quant6_scale, (TfLiteIntArray*)&quant6_zero, 0 };
const ALIGN(8) int8_t tensor_data7[16*1*3*8] = { 
  /* [0][0][][] */ -118,-57,-84,7,-16,-80,-8,127, -101,-14,-32,31,5,-60,4,-60, -56,-1,9,2,34,-30,16,55, 
  /* [1][0][][] */ 1,5,-127,3,-24,-67,24,-68, 4,-11,-52,1,-24,-33,-9,14, -1,-8,-2,-3,27,-28,-4,1, 
  /* [2][0][][] */ -9,8,6,-43,-16,-1,5,-67, -9,-2,19,-45,-4,-77,-2,-26, -10,-13,-3,-21,24,-127,13,3, 
  /* [3][0][][] */ -25,18,-17,-26,5,9,-29,-4, -93,-3,-20,-61,-1,3,-124,-21, -65,-2,6,-127,-3,9,-22,-14, 
  /* [4][0][][] */ -1,13,-3,-127,10,-20,-11,-6, -93,-16,0,-120,-13,-56,-51,5, -4,-32,8,-118,-23,-120,-103,7, 
  /* [5][0][][] */ -26,-1,-127,12,1,42,-46,-3, -75,4,-118,4,3,-15,-96,-17, -96,11,-76,-15,31,9,-42,-9, 
  /* [6][0][][] */ -3,-39,-67,2,-127,-13,-1,-42, -9,-6,5,2,-51,3,-5,-18, -27,12,12,0,-13,16,-31,-10, 
  /* [7][0][][] */ -18,-13,-2,-48,15,-115,26,-6, -12,-9,-18,-43,13,-99,-5,-40, -12,-19,-44,-18,-4,-87,6,-127, 
  /* [8][0][][] */ -26,-45,0,-1,-2,-30,0,5, -22,-127,0,-1,-16,1,-2,-1, -35,-69,0,2,-46,1,-1,-9, 
  /* [9][0][][] */ -10,-26,2,-47,21,-57,9,21, -15,-11,10,-69,-9,-30,-14,13, -127,23,-9,-70,25,11,-23,3, 
  /* [10][0][][] */ -17,93,-41,-15,23,-31,1,0, -10,-39,-89,-22,-4,-56,-50,-36, -32,-39,-47,1,-57,-127,-121,32, 
  /* [11][0][][] */ -6,-2,48,-21,-2,-24,-46,-16, -1,67,-5,8,3,-48,0,-127, 6,-5,-63,15,-39,-85,-4,-114, 
  /* [12][0][][] */ -36,-70,-127,-2,-43,-31,-8,2, -11,-43,-32,-3,-41,-38,-14,-1, -7,-25,-20,-6,19,-23,-9,21, 
  /* [13][0][][] */ -41,-16,32,-127,-15,-110,15,-70, -92,-52,8,-123,54,-41,-18,-31, -110,-43,-51,-113,-3,-110,-26,21, 
  /* [14][0][][] */ -97,39,13,11,31,25,8,-44, -29,-1,6,-44,3,3,-33,-101, -29,71,21,-28,-36,23,-27,-127, 
  /* [15][0][][] */ 18,-49,-74,18,-112,-127,2,-12, 26,-10,-50,-13,-36,3,23,7, 14,-8,92,-13,-16,-11,6,-4, 
};
const TfArray<4, int> tensor_dimension7 = { 4, { 16,1,3,8 } };
const TfArray<16, float> quant7_scale = { 16, { 0.005888769868761301, 0.016175024211406708, 0.018537711352109909, 0.018913494423031807, 0.01784142479300499, 0.010998708195984364, 0.021245010197162628, 0.011637992225587368, 0.032537970691919327, 0.01244264654815197, 0.0063681448809802532, 0.0075014056637883186, 0.015300811268389225, 0.0096801575273275375, 0.0045312335714697838, 0.006308932788670063, } };
const TfArray<16, int> quant7_zero = { 16, { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 } };
const TfLiteAffineQuantization quant7 = { (TfLiteFloatArray*)&quant7_scale, (TfLiteIntArray*)&quant7_zero, 0 };
const ALIGN(8) int32_t tensor_data8[4] = { 1, 1, 50, 13, };
const TfArray<1, int> tensor_dimension8 = { 1, { 4 } };
const ALIGN(8) int32_t tensor_data9[4] = { 1, 50, 1, 8, };
const TfArray<1, int> tensor_dimension9 = { 1, { 4 } };
const ALIGN(8) int32_t tensor_data10[4] = { 1, 1, 25, 8, };
const TfArray<1, int> tensor_dimension10 = { 1, { 4 } };
const ALIGN(8) int32_t tensor_data11[4] = { 1, 25, 1, 16, };
const TfArray<1, int> tensor_dimension11 = { 1, { 4 } };
const TfArray<4, int> tensor_dimension12 = { 4, { 1,1,50,13 } };
const TfArray<1, float> quant12_scale = { 1, { 0.050363607704639435, } };
const TfArray<1, int> quant12_zero = { 1, { 10 } };
const TfLiteAffineQuantization quant12 = { (TfLiteFloatArray*)&quant12_scale, (TfLiteIntArray*)&quant12_zero, 0 };
const TfArray<4, int> tensor_dimension13 = { 4, { 1,1,50,8 } };
const TfArray<1, float> quant13_scale = { 1, { 0.077656030654907227, } };
const TfArray<1, int> quant13_zero = { 1, { -128 } };
const TfLiteAffineQuantization quant13 = { (TfLiteFloatArray*)&quant13_scale, (TfLiteIntArray*)&quant13_zero, 0 };
const TfArray<4, int> tensor_dimension14 = { 4, { 1,50,1,8 } };
const TfArray<1, float> quant14_scale = { 1, { 0.077656030654907227, } };
const TfArray<1, int> quant14_zero = { 1, { -128 } };
const TfLiteAffineQuantization quant14 = { (TfLiteFloatArray*)&quant14_scale, (TfLiteIntArray*)&quant14_zero, 0 };
const TfArray<4, int> tensor_dimension15 = { 4, { 1,25,1,8 } };
const TfArray<1, float> quant15_scale = { 1, { 0.077656030654907227, } };
const TfArray<1, int> quant15_zero = { 1, { -128 } };
const TfLiteAffineQuantization quant15 = { (TfLiteFloatArray*)&quant15_scale, (TfLiteIntArray*)&quant15_zero, 0 };
const TfArray<4, int> tensor_dimension16 = { 4, { 1,1,25,8 } };
const TfArray<1, float> quant16_scale = { 1, { 0.077656030654907227, } };
const TfArray<1, int> quant16_zero = { 1, { -128 } };
const TfLiteAffineQuantization quant16 = { (TfLiteFloatArray*)&quant16_scale, (TfLiteIntArray*)&quant16_zero, 0 };
const TfArray<4, int> tensor_dimension17 = { 4, { 1,1,25,16 } };
const TfArray<1, float> quant17_scale = { 1, { 0.023108445107936859, } };
const TfArray<1, int> quant17_zero = { 1, { -128 } };
const TfLiteAffineQuantization quant17 = { (TfLiteFloatArray*)&quant17_scale, (TfLiteIntArray*)&quant17_zero, 0 };
const TfArray<4, int> tensor_dimension18 = { 4, { 1,25,1,16 } };
const TfArray<1, float> quant18_scale = { 1, { 0.023108445107936859, } };
const TfArray<1, int> quant18_zero = { 1, { -128 } };
const TfLiteAffineQuantization quant18 = { (TfLiteFloatArray*)&quant18_scale, (TfLiteIntArray*)&quant18_zero, 0 };
const TfArray<4, int> tensor_dimension19 = { 4, { 1,13,1,16 } };
const TfArray<1, float> quant19_scale = { 1, { 0.023108445107936859, } };
const TfArray<1, int> quant19_zero = { 1, { -128 } };
const TfLiteAffineQuantization quant19 = { (TfLiteFloatArray*)&quant19_scale, (TfLiteIntArray*)&quant19_zero, 0 };
const TfArray<2, int> tensor_dimension20 = { 2, { 1,208 } };
const TfArray<1, float> quant20_scale = { 1, { 0.023108445107936859, } };
const TfArray<1, int> quant20_zero = { 1, { -128 } };
const TfLiteAffineQuantization quant20 = { (TfLiteFloatArray*)&quant20_scale, (TfLiteIntArray*)&quant20_zero, 0 };
const TfArray<2, int> tensor_dimension21 = { 2, { 1,6 } };
const TfArray<1, float> quant21_scale = { 1, { 0.13416872918605804, } };
const TfArray<1, int> quant21_zero = { 1, { 58 } };
const TfLiteAffineQuantization quant21 = { (TfLiteFloatArray*)&quant21_scale, (TfLiteIntArray*)&quant21_zero, 0 };
const TfArray<2, int> tensor_dimension22 = { 2, { 1,6 } };
const TfArray<1, float> quant22_scale = { 1, { 0.00390625, } };
const TfArray<1, int> quant22_zero = { 1, { -128 } };
const TfLiteAffineQuantization quant22 = { (TfLiteFloatArray*)&quant22_scale, (TfLiteIntArray*)&quant22_zero, 0 };
const TfLiteReshapeParams opdata0 = { { 0, 0, 0, 0, 0, 0, 0, 0, }, 0 };
const TfArray<2, int> inputs0 = { 2, { 0,8 } };
const TfArray<1, int> outputs0 = { 1, { 12 } };
const TfLiteConvParams opdata1 = { kTfLitePaddingSame, 1,1, kTfLiteActRelu, 1,1 };
const TfArray<3, int> inputs1 = { 3, { 12,6,2 } };
const TfArray<1, int> outputs1 = { 1, { 13 } };
const TfLiteReshapeParams opdata2 = { { 0, 0, 0, 0, 0, 0, 0, 0, }, 0 };
const TfArray<2, int> inputs2 = { 2, { 13,9 } };
const TfArray<1, int> outputs2 = { 1, { 14 } };
const TfLitePoolParams opdata3 = { kTfLitePaddingSame, 1,2, 1,2, kTfLiteActNone, { { 0,0, 0, 0 } } };
const TfArray<1, int> inputs3 = { 1, { 14 } };
const TfArray<1, int> outputs3 = { 1, { 15 } };
const TfLiteReshapeParams opdata4 = { { 0, 0, 0, 0, 0, 0, 0, 0, }, 0 };
const TfArray<2, int> inputs4 = { 2, { 15,10 } };
const TfArray<1, int> outputs4 = { 1, { 16 } };
const TfLiteConvParams opdata5 = { kTfLitePaddingSame, 1,1, kTfLiteActRelu, 1,1 };
const TfArray<3, int> inputs5 = { 3, { 16,7,3 } };
const TfArray<1, int> outputs5 = { 1, { 17 } };
const TfLiteReshapeParams opdata6 = { { 0, 0, 0, 0, 0, 0, 0, 0, }, 0 };
const TfArray<2, int> inputs6 = { 2, { 17,11 } };
const TfArray<1, int> outputs6 = { 1, { 18 } };
const TfLitePoolParams opdata7 = { kTfLitePaddingSame, 1,2, 1,2, kTfLiteActNone, { { 0,0, 0, 0 } } };
const TfArray<1, int> inputs7 = { 1, { 18 } };
const TfArray<1, int> outputs7 = { 1, { 19 } };
const TfLiteReshapeParams opdata8 = { { 0, 0, 0, 0, 0, 0, 0, 0, }, 0 };
const TfArray<2, int> inputs8 = { 2, { 19,1 } };
const TfArray<1, int> outputs8 = { 1, { 20 } };
const TfLiteFullyConnectedParams opdata9 = { kTfLiteActNone, kTfLiteFullyConnectedWeightsFormatDefault, false, false };
const TfArray<3, int> inputs9 = { 3, { 20,5,4 } };
const TfArray<1, int> outputs9 = { 1, { 21 } };
const TfLiteSoftmaxParams opdata10 = { 1 };
const TfArray<1, int> inputs10 = { 1, { 21 } };
const TfArray<1, int> outputs10 = { 1, { 22 } };
const TensorInfo_t tensorData[] = {
  { kTfLiteArenaRw, kTfLiteInt8, tensor_arena + 656, (TfLiteIntArray*)&tensor_dimension0, 650, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant0))}, },
  { kTfLiteMmapRo, kTfLiteInt32, (void*)tensor_data1, (TfLiteIntArray*)&tensor_dimension1, 8, {kTfLiteNoQuantization, nullptr}, },
  { kTfLiteMmapRo, kTfLiteInt32, (void*)tensor_data2, (TfLiteIntArray*)&tensor_dimension2, 32, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant2))}, },
  { kTfLiteMmapRo, kTfLiteInt32, (void*)tensor_data3, (TfLiteIntArray*)&tensor_dimension3, 64, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant3))}, },
  { kTfLiteMmapRo, kTfLiteInt32, (void*)tensor_data4, (TfLiteIntArray*)&tensor_dimension4, 24, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant4))}, },
  { kTfLiteMmapRo, kTfLiteInt8, (void*)tensor_data5, (TfLiteIntArray*)&tensor_dimension5, 1248, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant5))}, },
  { kTfLiteMmapRo, kTfLiteInt8, (void*)tensor_data6, (TfLiteIntArray*)&tensor_dimension6, 312, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant6))}, },
  { kTfLiteMmapRo, kTfLiteInt8, (void*)tensor_data7, (TfLiteIntArray*)&tensor_dimension7, 384, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant7))}, },
  { kTfLiteMmapRo, kTfLiteInt32, (void*)tensor_data8, (TfLiteIntArray*)&tensor_dimension8, 16, {kTfLiteNoQuantization, nullptr}, },
  { kTfLiteMmapRo, kTfLiteInt32, (void*)tensor_data9, (TfLiteIntArray*)&tensor_dimension9, 16, {kTfLiteNoQuantization, nullptr}, },
  { kTfLiteMmapRo, kTfLiteInt32, (void*)tensor_data10, (TfLiteIntArray*)&tensor_dimension10, 16, {kTfLiteNoQuantization, nullptr}, },
  { kTfLiteMmapRo, kTfLiteInt32, (void*)tensor_data11, (TfLiteIntArray*)&tensor_dimension11, 16, {kTfLiteNoQuantization, nullptr}, },
  { kTfLiteArenaRw, kTfLiteInt8, tensor_arena + 0, (TfLiteIntArray*)&tensor_dimension12, 650, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant12))}, },
  { kTfLiteArenaRw, kTfLiteInt8, tensor_arena + 656, (TfLiteIntArray*)&tensor_dimension13, 400, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant13))}, },
  { kTfLiteArenaRw, kTfLiteInt8, tensor_arena + 0, (TfLiteIntArray*)&tensor_dimension14, 400, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant14))}, },
  { kTfLiteArenaRw, kTfLiteInt8, tensor_arena + 400, (TfLiteIntArray*)&tensor_dimension15, 200, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant15))}, },
  { kTfLiteArenaRw, kTfLiteInt8, tensor_arena + 0, (TfLiteIntArray*)&tensor_dimension16, 200, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant16))}, },
  { kTfLiteArenaRw, kTfLiteInt8, tensor_arena + 400, (TfLiteIntArray*)&tensor_dimension17, 400, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant17))}, },
  { kTfLiteArenaRw, kTfLiteInt8, tensor_arena + 0, (TfLiteIntArray*)&tensor_dimension18, 400, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant18))}, },
  { kTfLiteArenaRw, kTfLiteInt8, tensor_arena + 400, (TfLiteIntArray*)&tensor_dimension19, 208, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant19))}, },
  { kTfLiteArenaRw, kTfLiteInt8, tensor_arena + 0, (TfLiteIntArray*)&tensor_dimension20, 208, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant20))}, },
  { kTfLiteArenaRw, kTfLiteInt8, tensor_arena + 208, (TfLiteIntArray*)&tensor_dimension21, 6, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant21))}, },
  { kTfLiteArenaRw, kTfLiteInt8, tensor_arena + 0, (TfLiteIntArray*)&tensor_dimension22, 6, {kTfLiteAffineQuantization, const_cast<void*>(static_cast<const void*>(&quant22))}, },
};const NodeInfo_t nodeData[] = {
  { (TfLiteIntArray*)&inputs0, (TfLiteIntArray*)&outputs0, const_cast<void*>(static_cast<const void*>(&opdata0)), OP_RESHAPE, },
  { (TfLiteIntArray*)&inputs1, (TfLiteIntArray*)&outputs1, const_cast<void*>(static_cast<const void*>(&opdata1)), OP_CONV_2D, },
  { (TfLiteIntArray*)&inputs2, (TfLiteIntArray*)&outputs2, const_cast<void*>(static_cast<const void*>(&opdata2)), OP_RESHAPE, },
  { (TfLiteIntArray*)&inputs3, (TfLiteIntArray*)&outputs3, const_cast<void*>(static_cast<const void*>(&opdata3)), OP_MAX_POOL_2D, },
  { (TfLiteIntArray*)&inputs4, (TfLiteIntArray*)&outputs4, const_cast<void*>(static_cast<const void*>(&opdata4)), OP_RESHAPE, },
  { (TfLiteIntArray*)&inputs5, (TfLiteIntArray*)&outputs5, const_cast<void*>(static_cast<const void*>(&opdata5)), OP_CONV_2D, },
  { (TfLiteIntArray*)&inputs6, (TfLiteIntArray*)&outputs6, const_cast<void*>(static_cast<const void*>(&opdata6)), OP_RESHAPE, },
  { (TfLiteIntArray*)&inputs7, (TfLiteIntArray*)&outputs7, const_cast<void*>(static_cast<const void*>(&opdata7)), OP_MAX_POOL_2D, },
  { (TfLiteIntArray*)&inputs8, (TfLiteIntArray*)&outputs8, const_cast<void*>(static_cast<const void*>(&opdata8)), OP_RESHAPE, },
  { (TfLiteIntArray*)&inputs9, (TfLiteIntArray*)&outputs9, const_cast<void*>(static_cast<const void*>(&opdata9)), OP_FULLY_CONNECTED, },
  { (TfLiteIntArray*)&inputs10, (TfLiteIntArray*)&outputs10, const_cast<void*>(static_cast<const void*>(&opdata10)), OP_SOFTMAX, },
};
static std::vector<void*> overflow_buffers;
static void * AllocatePersistentBuffer(struct TfLiteContext* ctx,
                                       size_t bytes) {
  void *ptr;
  if (current_location - bytes < tensor_boundary) {
    // OK, this will look super weird, but.... we have CMSIS-NN buffers which
    // we cannot calculate beforehand easily.
    ptr = ei_calloc(bytes, 1);
    if (ptr == NULL) {
      printf("ERR: Failed to allocate persistent buffer of size %d\n", (int)bytes);
      return NULL;
    }
    overflow_buffers.push_back(ptr);
    return ptr;
  }

  current_location -= bytes;

  ptr = current_location;
  memset(ptr, 0, bytes);

  return ptr;
}
typedef struct {
  size_t bytes;
  void *ptr;
} scratch_buffer_t;
static std::vector<scratch_buffer_t> scratch_buffers;

static TfLiteStatus RequestScratchBufferInArena(struct TfLiteContext* ctx, size_t bytes,
                                                int* buffer_idx) {
  scratch_buffer_t b;
  b.bytes = bytes;

  b.ptr = AllocatePersistentBuffer(ctx, b.bytes);
  if (!b.ptr) {
    return kTfLiteError;
  }

  scratch_buffers.push_back(b);

  *buffer_idx = scratch_buffers.size() - 1;

  return kTfLiteOk;
}

static void* GetScratchBuffer(struct TfLiteContext* ctx, int buffer_idx) {
  if (buffer_idx > static_cast<int>(scratch_buffers.size()) - 1) {
    return NULL;
  }
  return scratch_buffers[buffer_idx].ptr;
}

static TfLiteTensor* GetTensor(const struct TfLiteContext* context,
                               int tensor_idx) {
  return &tflTensors[tensor_idx];
}

static TfLiteEvalTensor* GetEvalTensor(const struct TfLiteContext* context,
                                       int tensor_idx) {
  return &tflEvalTensors[tensor_idx];
}

} // namespace

TfLiteStatus trained_model_init( void*(*alloc_fnc)(size_t,size_t) ) {
#ifdef EI_CLASSIFIER_ALLOCATION_HEAP
  tensor_arena = (uint8_t*) alloc_fnc(16, kTensorArenaSize);
  if (!tensor_arena) {
    printf("ERR: failed to allocate tensor arena\n");
    return kTfLiteError;
  }
#else
  memset(tensor_arena, 0, kTensorArenaSize);
#endif
  tensor_boundary = tensor_arena;
  current_location = tensor_arena + kTensorArenaSize;
  ctx.AllocatePersistentBuffer = &AllocatePersistentBuffer;
  ctx.RequestScratchBufferInArena = &RequestScratchBufferInArena;
  ctx.GetScratchBuffer = &GetScratchBuffer;
  ctx.GetTensor = &GetTensor;
  ctx.GetEvalTensor = &GetEvalTensor;
  ctx.tensors = tflTensors;
  ctx.tensors_size = 23;
  for(size_t i = 0; i < 23; ++i) {
    tflTensors[i].type = tensorData[i].type;
    tflEvalTensors[i].type = tensorData[i].type;
    tflTensors[i].is_variable = 0;

#if defined(EI_CLASSIFIER_ALLOCATION_HEAP)
    tflTensors[i].allocation_type = tensorData[i].allocation_type;
#else
    tflTensors[i].allocation_type = (tensor_arena <= tensorData[i].data && tensorData[i].data < tensor_arena + kTensorArenaSize) ? kTfLiteArenaRw : kTfLiteMmapRo;
#endif
    tflTensors[i].bytes = tensorData[i].bytes;
    tflTensors[i].dims = tensorData[i].dims;
    tflEvalTensors[i].dims = tensorData[i].dims;

#if defined(EI_CLASSIFIER_ALLOCATION_HEAP)
    if(tflTensors[i].allocation_type == kTfLiteArenaRw){
      uint8_t* start = (uint8_t*) ((uintptr_t)tensorData[i].data + (uintptr_t) tensor_arena);

     tflTensors[i].data.data =  start;
     tflEvalTensors[i].data.data =  start;
    }
    else{
       tflTensors[i].data.data = tensorData[i].data;
       tflEvalTensors[i].data.data = tensorData[i].data;
    }
#else
    tflTensors[i].data.data = tensorData[i].data;
    tflEvalTensors[i].data.data = tensorData[i].data;
#endif // EI_CLASSIFIER_ALLOCATION_HEAP
    tflTensors[i].quantization = tensorData[i].quantization;
    if (tflTensors[i].quantization.type == kTfLiteAffineQuantization) {
      TfLiteAffineQuantization const* quant = ((TfLiteAffineQuantization const*)(tensorData[i].quantization.params));
      tflTensors[i].params.scale = quant->scale->data[0];
      tflTensors[i].params.zero_point = quant->zero_point->data[0];
    }
    if (tflTensors[i].allocation_type == kTfLiteArenaRw) {
      auto data_end_ptr = (uint8_t*)tflTensors[i].data.data + tensorData[i].bytes;
      if (data_end_ptr > tensor_boundary) {
        tensor_boundary = data_end_ptr;
      }
    }
  }
  if (tensor_boundary > current_location /* end of arena size */) {
    printf("ERR: tensor arena is too small, does not fit model - even without scratch buffers\n");
    return kTfLiteError;
  }
  registrations[OP_RESHAPE] = Register_RESHAPE();
  registrations[OP_CONV_2D] = Register_CONV_2D();
  registrations[OP_MAX_POOL_2D] = Register_MAX_POOL_2D();
  registrations[OP_FULLY_CONNECTED] = Register_FULLY_CONNECTED();
  registrations[OP_SOFTMAX] = Register_SOFTMAX();

  for(size_t i = 0; i < 11; ++i) {
    tflNodes[i].inputs = nodeData[i].inputs;
    tflNodes[i].outputs = nodeData[i].outputs;
    tflNodes[i].builtin_data = nodeData[i].builtin_data;
    tflNodes[i].custom_initial_data = nullptr;
    tflNodes[i].custom_initial_data_size = 0;
    if (registrations[nodeData[i].used_op_index].init) {
      tflNodes[i].user_data = registrations[nodeData[i].used_op_index].init(&ctx, (const char*)tflNodes[i].builtin_data, 0);
    }
  }
  for(size_t i = 0; i < 11; ++i) {
    if (registrations[nodeData[i].used_op_index].prepare) {
      TfLiteStatus status = registrations[nodeData[i].used_op_index].prepare(&ctx, &tflNodes[i]);
      if (status != kTfLiteOk) {
        return status;
      }
    }
  }
  return kTfLiteOk;
}

static const int inTensorIndices[] = {
  0, 
};
TfLiteTensor* trained_model_input(int index) {
  return &ctx.tensors[inTensorIndices[index]];
}

static const int outTensorIndices[] = {
  22, 
};
TfLiteTensor* trained_model_output(int index) {
  return &ctx.tensors[outTensorIndices[index]];
}

TfLiteStatus trained_model_invoke() {
  for(size_t i = 0; i < 11; ++i) {
    TfLiteStatus status = registrations[nodeData[i].used_op_index].invoke(&ctx, &tflNodes[i]);

#if EI_CLASSIFIER_PRINT_STATE
    ei_printf("layer %lu\n", i);
    ei_printf("    inputs:\n");
    for (size_t ix = 0; ix < tflNodes[i].inputs->size; ix++) {
      auto d = tensorData[tflNodes[i].inputs->data[ix]];

      size_t data_ptr = (size_t)d.data;

      if (d.allocation_type == kTfLiteArenaRw) {
        data_ptr = (size_t)tensor_arena + data_ptr;
      }

      if (d.type == TfLiteType::kTfLiteInt8) {
        int8_t* data = (int8_t*)data_ptr;
        ei_printf("        %lu (%zu bytes, ptr=%p, alloc_type=%d, type=%d): ", ix, d.bytes, data, (int)d.allocation_type, (int)d.type);
        for (size_t jx = 0; jx < d.bytes; jx++) {
          ei_printf("%d ", data[jx]);
        }
      }
      else {
        float* data = (float*)data_ptr;
        ei_printf("        %lu (%zu bytes, ptr=%p, alloc_type=%d, type=%d): ", ix, d.bytes, data, (int)d.allocation_type, (int)d.type);
        for (size_t jx = 0; jx < d.bytes / 4; jx++) {
          ei_printf("%f ", data[jx]);
        }
      }
      ei_printf("\n");
    }
    ei_printf("\n");

    ei_printf("    outputs:\n");
    for (size_t ix = 0; ix < tflNodes[i].outputs->size; ix++) {
      auto d = tensorData[tflNodes[i].outputs->data[ix]];

      size_t data_ptr = (size_t)d.data;

      if (d.allocation_type == kTfLiteArenaRw) {
        data_ptr = (size_t)tensor_arena + data_ptr;
      }

      if (d.type == TfLiteType::kTfLiteInt8) {
        int8_t* data = (int8_t*)data_ptr;
        ei_printf("        %lu (%zu bytes, ptr=%p, alloc_type=%d, type=%d): ", ix, d.bytes, data, (int)d.allocation_type, (int)d.type);
        for (size_t jx = 0; jx < d.bytes; jx++) {
          ei_printf("%d ", data[jx]);
        }
      }
      else {
        float* data = (float*)data_ptr;
        ei_printf("        %lu (%zu bytes, ptr=%p, alloc_type=%d, type=%d): ", ix, d.bytes, data, (int)d.allocation_type, (int)d.type);
        for (size_t jx = 0; jx < d.bytes / 4; jx++) {
          ei_printf("%f ", data[jx]);
        }
      }
      ei_printf("\n");
    }
    ei_printf("\n");
#endif // EI_CLASSIFIER_PRINT_STATE

    if (status != kTfLiteOk) {
      return status;
    }
  }
  return kTfLiteOk;
}

TfLiteStatus trained_model_reset( void (*free_fnc)(void* ptr) ) {
#ifdef EI_CLASSIFIER_ALLOCATION_HEAP
  free_fnc(tensor_arena);
#endif
  scratch_buffers.clear();
  for (size_t ix = 0; ix < overflow_buffers.size(); ix++) {
    free(overflow_buffers[ix]);
  }
  overflow_buffers.clear();
  return kTfLiteOk;
}