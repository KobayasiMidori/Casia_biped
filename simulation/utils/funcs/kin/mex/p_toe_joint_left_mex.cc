/*
 * Automatically Generated from Mathematica.
 * Thu 26 Mar 2020 17:48:13 GMT+08:00
 */

#ifdef MATLAB_MEX_FILE
#include <stdexcept>
#include <cmath>
#include<math.h>
/**
 * Copied from Wolfram Mathematica C Definitions file mdefs.hpp
 * Changed marcos to inline functions (Eric Cousineau)
 */
inline double Power(double x, double y) { return pow(x, y); }
inline double Sqrt(double x) { return sqrt(x); }

inline double Abs(double x) { return fabs(x); }

inline double Exp(double x) { return exp(x); }
inline double Log(double x) { return log(x); }

inline double Sin(double x) { return sin(x); }
inline double Cos(double x) { return cos(x); }
inline double Tan(double x) { return tan(x); }

inline double ArcSin(double x) { return asin(x); }
inline double ArcCos(double x) { return acos(x); }
inline double ArcTan(double x) { return atan(x); }

/* update ArcTan function to use atan2 instead. */
inline double ArcTan(double x, double y) { return atan2(y,x); }

inline double Sinh(double x) { return sinh(x); }
inline double Cosh(double x) { return cosh(x); }
inline double Tanh(double x) { return tanh(x); }

const double E	= 2.71828182845904523536029;
const double Pi = 3.14159265358979323846264;
const double Degree = 0.01745329251994329576924;

inline double Sec(double x) { return 1/cos(x); }
inline double Csc(double x) { return 1/sin(x); }

#endif

/*
 * Sub functions
 */
static void output1(double *p_output1,const double *var1)
{
  double t224;
  double t352;
  double t367;
  double t448;
  double t23;
  double t1146;
  double t1267;
  double t1167;
  double t1293;
  double t2323;
  double t153;
  double t1847;
  double t1868;
  double t1890;
  double t1176;
  double t1296;
  double t1359;
  double t1963;
  double t2017;
  double t2053;
  double t2113;
  double t2161;
  double t2175;
  double t839;
  double t956;
  double t491;
  double t532;
  double t3705;
  double t3841;
  double t3862;
  double t2478;
  double t2536;
  double t2539;
  double t2625;
  double t2771;
  double t2843;
  double t3038;
  double t3080;
  double t3107;
  double t3136;
  double t3150;
  double t3153;
  double t3381;
  double t3487;
  double t3491;
  double t3493;
  double t3532;
  double t3595;
  double t3975;
  double t2946;
  double t2976;
  double t3887;
  double t3895;
  double t2328;
  double t2382;
  double t2437;
  double t5712;
  double t5782;
  double t5789;
  double t4048;
  double t4049;
  double t4110;
  double t4124;
  double t4213;
  double t4229;
  double t4236;
  double t4301;
  double t5515;
  double t5521;
  double t5060;
  double t5137;
  double t5224;
  double t5267;
  double t5360;
  double t5376;
  double t5595;
  double t5599;
  double t5604;
  double t5653;
  double t5654;
  double t5659;
  double t5807;
  double t5814;
  double t5863;
  double t3977;
  double t5892;
  double t5914;
  double t4365;
  double t4405;
  double t4635;
  double t4726;
  double t6365;
  double t6241;
  double t6248;
  double t5945;
  double t5967;
  double t5982;
  double t6053;
  double t6054;
  double t6058;
  double t6162;
  double t6220;
  double t6108;
  double t6115;
  double t6118;
  double t6129;
  double t6131;
  double t6137;
  double t6307;
  double t6308;
  double t6311;
  double t6319;
  double t6321;
  double t6327;
  double t6338;
  double t6340;
  double t6343;
  double t5870;
  double t5871;
  double t6435;
  double t6440;
  double t6481;
  double t6485;
  double t6090;
  double t6700;
  double t6730;
  double t6737;
  double t6540;
  double t6393;
  double t6395;
  double t6399;
  double t6410;
  double t6424;
  double t6431;
  double t6472;
  double t6477;
  double t6480;
  double t6492;
  double t6494;
  double t6497;
  double t6608;
  double t6630;
  double t6637;
  double t6641;
  double t6653;
  double t6655;
  double t6744;
  double t6768;
  double t6791;
  double t6450;
  double t6456;
  double t6867;
  double t6883;
  double t6381;
  double t6386;
  double t6371;
  double t6375;
  double t7180;
  double t7057;
  double t7071;
  double t6848;
  double t6884;
  double t6889;
  double t6890;
  double t6898;
  double t6900;
  double t7098;
  double t7100;
  double t7008;
  double t7020;
  double t7032;
  double t7043;
  double t7049;
  double t7054;
  double t7116;
  double t7125;
  double t7130;
  double t7141;
  double t7142;
  double t7143;
  double t7168;
  double t7169;
  double t7172;
  double t6921;
  double t6923;
  double t7346;
  double t7355;
  double t7441;
  double t7453;
  double t6800;
  double t7571;
  double t7257;
  double t7283;
  double t7295;
  double t7306;
  double t7315;
  double t7317;
  double t7456;
  double t7457;
  double t7460;
  double t7461;
  double t7473;
  double t7492;
  double t7587;
  double t7604;
  double t7606;
  double t7614;
  double t7628;
  double t7631;
  double t7420;
  double t7422;
  double t7646;
  double t7647;
  double t7220;
  double t7248;
  double t7201;
  double t7216;
  double t195;
  double t382;
  double t538;
  double t685;
  double t764;
  double t822;
  double t1033;
  double t1079;
  double t1498;
  double t1879;
  double t1907;
  double t1962;
  double t2272;
  double t2405;
  double t2441;
  double t2469;
  double t7864;
  double t7893;
  double t7895;
  double t7952;
  double t7966;
  double t7974;
  double t2896;
  double t2912;
  double t3000;
  double t3026;
  double t3221;
  double t3228;
  double t3285;
  double t3347;
  double t3354;
  double t3376;
  double t3658;
  double t3897;
  double t3904;
  double t4021;
  double t4035;
  double t8004;
  double t8014;
  double t8070;
  double t8084;
  double t8092;
  double t8094;
  double t8115;
  double t8121;
  double t8172;
  double t8176;
  double t8182;
  double t8191;
  double t4364;
  double t4614;
  double t5024;
  double t5027;
  double t5436;
  double t5444;
  double t5452;
  double t5532;
  double t5571;
  double t5683;
  double t5837;
  double t5859;
  double t5878;
  double t5891;
  double t8226;
  double t8239;
  double t8248;
  double t8258;
  double t8272;
  double t8273;
  double t8287;
  double t8298;
  double t8339;
  double t8340;
  double t8345;
  double t8359;
  double t6071;
  double t6075;
  double t6083;
  double t6092;
  double t6105;
  double t6148;
  double t6234;
  double t6255;
  double t6302;
  double t6362;
  double t6378;
  double t6388;
  double t6392;
  double t8371;
  double t8375;
  double t8377;
  double t8380;
  double t8421;
  double t8422;
  double t8432;
  double t8444;
  double t8449;
  double t8450;
  double t8453;
  double t8454;
  double t6434;
  double t6443;
  double t6445;
  double t6464;
  double t6469;
  double t6504;
  double t6513;
  double t6522;
  double t6552;
  double t6605;
  double t6673;
  double t6778;
  double t6787;
  double t6807;
  double t6815;
  double t8457;
  double t8460;
  double t8463;
  double t8464;
  double t8472;
  double t8475;
  double t8476;
  double t8477;
  double t8480;
  double t8482;
  double t8483;
  double t8484;
  double t6912;
  double t6919;
  double t6920;
  double t6932;
  double t7002;
  double t7056;
  double t7078;
  double t7102;
  double t7104;
  double t7179;
  double t7217;
  double t7252;
  double t7255;
  double t8491;
  double t8494;
  double t8496;
  double t8497;
  double t8503;
  double t8511;
  double t8513;
  double t8514;
  double t8517;
  double t8518;
  double t8520;
  double t8522;
  double t7342;
  double t7395;
  double t7403;
  double t7423;
  double t7435;
  double t7517;
  double t7559;
  double t7566;
  double t7574;
  double t7586;
  double t8524;
  double t8526;
  double t8527;
  double t8528;
  double t8531;
  double t8532;
  double t8533;
  double t8534;
  double t7664;
  double t7677;
  double t8540;
  double t8548;
  double t8549;
  double t8556;
  double t7723;
  double t7730;
  double t7758;
  double t7778;
  double t8611;
  double t8612;
  double t8613;
  double t8614;
  double t8621;
  double t8622;
  double t8623;
  double t8624;
  double t8628;
  double t8629;
  double t8630;
  double t8631;
  double t8635;
  double t8637;
  double t8638;
  double t8639;
  double t8641;
  double t8642;
  double t8644;
  double t8646;
  double t8649;
  double t8650;
  double t8651;
  double t8652;
  double t8658;
  double t8660;
  double t8663;
  double t8667;
  double t8669;
  double t8673;
  double t8675;
  double t8678;
  double t8680;
  double t8681;
  double t8682;
  double t8683;
  double t8686;
  double t8688;
  double t8689;
  double t8690;
  double t8692;
  double t8693;
  double t8694;
  double t8695;
  double t8697;
  double t8698;
  double t8699;
  double t8700;
  double t8702;
  double t8703;
  double t8704;
  double t8705;
  double t8708;
  double t8709;
  double t8710;
  double t8711;
  double t8714;
  double t8716;
  double t8717;
  double t8718;
  double t8723;
  double t8724;
  double t8725;
  double t8726;
  double t8729;
  double t8730;
  double t8733;
  double t8736;
  double t8741;
  double t8742;
  double t8743;
  double t8744;
  t224 = Cos(var1[13]);
  t352 = -1.*t224;
  t367 = 1. + t352;
  t448 = Sin(var1[13]);
  t23 = Cos(var1[3]);
  t1146 = Cos(var1[5]);
  t1267 = Sin(var1[3]);
  t1167 = Sin(var1[4]);
  t1293 = Sin(var1[5]);
  t2323 = Sin(var1[14]);
  t153 = Cos(var1[4]);
  t1847 = 4.e-6*t448;
  t1868 = 0. + t1847;
  t1890 = 0. + t448;
  t1176 = t23*t1146*t1167;
  t1296 = t1267*t1293;
  t1359 = t1176 + t1296;
  t1963 = -1.*t1146*t1267;
  t2017 = t23*t1167*t1293;
  t2053 = t1963 + t2017;
  t2113 = Cos(var1[14]);
  t2161 = -1.*t2113;
  t2175 = 1. + t2161;
  t839 = -1.*t448;
  t956 = 0. + t839;
  t491 = -4.e-6*t448;
  t532 = 0. + t491;
  t3705 = Cos(var1[15]);
  t3841 = -1.*t3705;
  t3862 = 1. + t3841;
  t2478 = t23*t153*t1868;
  t2536 = t1890*t1359;
  t2539 = -1.000000000016*t367;
  t2625 = 1. + t2539;
  t2771 = t2625*t2053;
  t2843 = t2478 + t2536 + t2771;
  t3038 = -4.e-6*t367*t23*t153;
  t3080 = -1.*t367;
  t3107 = 1. + t3080;
  t3136 = t3107*t1359;
  t3150 = t956*t2053;
  t3153 = t3038 + t3136 + t3150;
  t3381 = -1.6e-11*t367;
  t3487 = 1. + t3381;
  t3491 = t3487*t23*t153;
  t3493 = -4.e-6*t367*t1359;
  t3532 = t532*t2053;
  t3595 = t3491 + t3493 + t3532;
  t3975 = Sin(var1[15]);
  t2946 = 8.e-6*t2323;
  t2976 = 0. + t2946;
  t3887 = -4.e-6*t3862;
  t3895 = 0. + t3887;
  t2328 = -8.e-6*t2323;
  t2382 = 0. + t2328;
  t2437 = 0. + t2323;
  t5712 = Cos(var1[16]);
  t5782 = -1.*t5712;
  t5789 = 1. + t5782;
  t4048 = -1.*t2323;
  t4049 = 0. + t4048;
  t4110 = t4049*t2843;
  t4124 = 8.e-6*t2175*t3153;
  t4213 = -1.*t2175;
  t4229 = 1. + t4213;
  t4236 = t4229*t3595;
  t4301 = t4110 + t4124 + t4236;
  t5515 = -4.e-6*t3975;
  t5521 = 0. + t5515;
  t5060 = t2976*t2843;
  t5137 = -6.4e-11*t2175;
  t5224 = 1. + t5137;
  t5267 = t5224*t3153;
  t5360 = 8.e-6*t2175*t3595;
  t5376 = t5060 + t5267 + t5360;
  t5595 = -1.000000000064*t2175;
  t5599 = 1. + t5595;
  t5604 = t5599*t2843;
  t5653 = t2382*t3153;
  t5654 = t2437*t3595;
  t5659 = t5604 + t5653 + t5654;
  t5807 = -4.e-6*t5789;
  t5814 = 0. + t5807;
  t5863 = Sin(var1[16]);
  t3977 = 0. + t3975;
  t5892 = 4.e-6*t3862;
  t5914 = 0. + t5892;
  t4365 = -1.*t3975;
  t4405 = 0. + t4365;
  t4635 = 4.e-6*t3975;
  t4726 = 0. + t4635;
  t6365 = Sin(var1[17]);
  t6241 = 4.e-6*t5863;
  t6248 = 0. + t6241;
  t5945 = t5914*t4301;
  t5967 = t5521*t5376;
  t5982 = -1.6e-11*t3862;
  t6053 = 1. + t5982;
  t6054 = t6053*t5659;
  t6058 = t5945 + t5967 + t6054;
  t6162 = -1.*t5863;
  t6220 = 0. + t6162;
  t6108 = -1.*t3862;
  t6115 = 1. + t6108;
  t6118 = t6115*t4301;
  t6129 = t3977*t5376;
  t6131 = t5914*t5659;
  t6137 = t6118 + t6129 + t6131;
  t6307 = t4405*t4301;
  t6308 = -1.000000000016*t3862;
  t6311 = 1. + t6308;
  t6319 = t6311*t5376;
  t6321 = t4726*t5659;
  t6327 = t6307 + t6319 + t6321;
  t6338 = Cos(var1[17]);
  t6340 = -1.*t6338;
  t6343 = 1. + t6340;
  t5870 = -4.e-6*t5863;
  t5871 = 0. + t5870;
  t6435 = -4.e-6*t6343;
  t6440 = 0. + t6435;
  t6481 = 4.e-6*t5789;
  t6485 = 0. + t6481;
  t6090 = 0. + t5863;
  t6700 = Cos(var1[18]);
  t6730 = -1.*t6700;
  t6737 = 1. + t6730;
  t6540 = 0. + t6365;
  t6393 = t6248*t6058;
  t6395 = t6220*t6137;
  t6399 = -1.000000000016*t5789;
  t6410 = 1. + t6399;
  t6424 = t6410*t6327;
  t6431 = t6393 + t6395 + t6424;
  t6472 = -1.6e-11*t5789;
  t6477 = 1. + t6472;
  t6480 = t6477*t6058;
  t6492 = t6485*t6137;
  t6494 = t5871*t6327;
  t6497 = t6480 + t6492 + t6494;
  t6608 = t6485*t6058;
  t6630 = -1.*t5789;
  t6637 = 1. + t6630;
  t6641 = t6637*t6137;
  t6653 = t6090*t6327;
  t6655 = t6608 + t6641 + t6653;
  t6744 = -4.e-6*t6737;
  t6768 = 0. + t6744;
  t6791 = Sin(var1[18]);
  t6450 = -4.e-6*t6365;
  t6456 = 0. + t6450;
  t6867 = 4.e-6*t6343;
  t6883 = 0. + t6867;
  t6381 = 4.e-6*t6365;
  t6386 = 0. + t6381;
  t6371 = -1.*t6365;
  t6375 = 0. + t6371;
  t7180 = Sin(var1[19]);
  t7057 = -1.*t6791;
  t7071 = 0. + t7057;
  t6848 = t6540*t6431;
  t6884 = t6883*t6497;
  t6889 = -1.*t6343;
  t6890 = 1. + t6889;
  t6898 = t6890*t6655;
  t6900 = t6848 + t6884 + t6898;
  t7098 = 4.e-6*t6791;
  t7100 = 0. + t7098;
  t7008 = t6456*t6431;
  t7020 = -1.6e-11*t6343;
  t7032 = 1. + t7020;
  t7043 = t7032*t6497;
  t7049 = t6883*t6655;
  t7054 = t7008 + t7043 + t7049;
  t7116 = -1.000000000016*t6343;
  t7125 = 1. + t7116;
  t7130 = t7125*t6431;
  t7141 = t6386*t6497;
  t7142 = t6375*t6655;
  t7143 = t7130 + t7141 + t7142;
  t7168 = Cos(var1[19]);
  t7169 = -1.*t7168;
  t7172 = 1. + t7169;
  t6921 = -4.e-6*t6791;
  t6923 = 0. + t6921;
  t7346 = -4.e-6*t7172;
  t7355 = 0. + t7346;
  t7441 = 4.e-6*t6737;
  t7453 = 0. + t7441;
  t6800 = 0. + t6791;
  t7571 = 0. + t7180;
  t7257 = t7071*t6900;
  t7283 = t7100*t7054;
  t7295 = -1.000000000016*t6737;
  t7306 = 1. + t7295;
  t7315 = t7306*t7143;
  t7317 = t7257 + t7283 + t7315;
  t7456 = t7453*t6900;
  t7457 = -1.6e-11*t6737;
  t7460 = 1. + t7457;
  t7461 = t7460*t7054;
  t7473 = t6923*t7143;
  t7492 = t7456 + t7461 + t7473;
  t7587 = -1.*t6737;
  t7604 = 1. + t7587;
  t7606 = t7604*t6900;
  t7614 = t7453*t7054;
  t7628 = t6800*t7143;
  t7631 = t7606 + t7614 + t7628;
  t7420 = -4.e-6*t7180;
  t7422 = 0. + t7420;
  t7646 = 4.e-6*t7172;
  t7647 = 0. + t7646;
  t7220 = 4.e-6*t7180;
  t7248 = 0. + t7220;
  t7201 = -1.*t7180;
  t7216 = 0. + t7201;
  t195 = -4.6196000000000004e-7*var1[13];
  t382 = -1.912200000030595e-7*t367;
  t538 = 0.13451000000399999*t532;
  t685 = t195 + t382 + t538;
  t764 = 1.84784e-12*var1[13];
  t822 = -0.04780500000076488*t367;
  t1033 = 0.13451000000399999*t956;
  t1079 = t764 + t822 + t1033;
  t1498 = 0.13451000000615215*t367;
  t1879 = -1.9122e-7*t1868;
  t1907 = -0.047805*t1890;
  t1962 = 0. + t1498 + t1879 + t1907;
  t2272 = 0.13451000001660862*t2175;
  t2405 = 5.e-7*t2382;
  t2441 = -0.0625*t2437;
  t2469 = 0. + t2272 + t2405 + t2441;
  t7864 = t1146*t1267*t1167;
  t7893 = -1.*t23*t1293;
  t7895 = t7864 + t7893;
  t7952 = t23*t1146;
  t7966 = t1267*t1167*t1293;
  t7974 = t7952 + t7966;
  t2896 = -7.607999999999987e-8*var1[14];
  t2912 = 5.000000000319999e-7*t2175;
  t3000 = 0.13451000000799998*t2976;
  t3026 = t2896 + t2912 + t3000;
  t3221 = -6.086399999999989e-13*var1[14];
  t3228 = -0.062500000004*t2175;
  t3285 = -1.*t2323;
  t3347 = 0. + t3285;
  t3354 = 0.13451000000799998*t3347;
  t3376 = t3221 + t3228 + t3354;
  t3658 = 1.7471199999999997e-12*var1[15];
  t3897 = 2.50004e-7*t3895;
  t3904 = -0.062501*t3862;
  t4021 = -0.140805000004*t3977;
  t4035 = t3658 + t3897 + t3904 + t4021;
  t8004 = t153*t1868*t1267;
  t8014 = t1890*t7895;
  t8070 = t2625*t7974;
  t8084 = t8004 + t8014 + t8070;
  t8092 = -4.e-6*t367*t153*t1267;
  t8094 = t3107*t7895;
  t8115 = t956*t7974;
  t8121 = t8092 + t8094 + t8115;
  t8172 = t3487*t153*t1267;
  t8176 = -4.e-6*t367*t7895;
  t8182 = t532*t7974;
  t8191 = t8172 + t8176 + t8182;
  t4364 = -0.1408050000062529*t3862;
  t4614 = -0.062501*t4405;
  t5024 = 2.50004e-7*t4726;
  t5027 = 0. + t4364 + t4614 + t5024;
  t5436 = 4.3677999999999997e-7*var1[15];
  t5444 = -0.062501*t3895;
  t5452 = 4.000064e-18*t3862;
  t5532 = -0.140805000004*t5521;
  t5571 = t5436 + t5444 + t5452 + t5532;
  t5683 = -4.3219999999999986e-8*var1[16];
  t5837 = -0.062502*t5814;
  t5859 = 4.000128e-18*t5789;
  t5878 = -0.26080500000400003*t5871;
  t5891 = t5683 + t5837 + t5859 + t5878;
  t8226 = t4049*t8084;
  t8239 = 8.e-6*t2175*t8121;
  t8248 = t4229*t8191;
  t8258 = t8226 + t8239 + t8248;
  t8272 = t2976*t8084;
  t8273 = t5224*t8121;
  t8287 = 8.e-6*t2175*t8191;
  t8298 = t8272 + t8273 + t8287;
  t8339 = t5599*t8084;
  t8340 = t2382*t8121;
  t8345 = t2437*t8191;
  t8359 = t8339 + t8340 + t8345;
  t6071 = -1.7287999999999994e-13*var1[16];
  t6075 = 2.50008e-7*t5814;
  t6083 = -0.062502*t5789;
  t6092 = -0.26080500000400003*t6090;
  t6105 = t6071 + t6075 + t6083 + t6092;
  t6148 = -0.2608050000081729*t5789;
  t6234 = -0.062502*t6220;
  t6255 = 2.50008e-7*t6248;
  t6302 = 0. + t6148 + t6234 + t6255;
  t6362 = -0.32141100000914263*t6343;
  t6378 = -0.015022*t6375;
  t6388 = 6.0088e-8*t6386;
  t6392 = 0. + t6362 + t6378 + t6388;
  t8371 = t5914*t8258;
  t8375 = t5521*t8298;
  t8377 = t6053*t8359;
  t8380 = t8371 + t8375 + t8377;
  t8421 = t6115*t8258;
  t8422 = t3977*t8298;
  t8432 = t5914*t8359;
  t8444 = t8421 + t8422 + t8432;
  t8449 = t4405*t8258;
  t8450 = t6311*t8298;
  t8453 = t4726*t8359;
  t8454 = t8449 + t8450 + t8453;
  t6434 = -2.85644e-7*var1[17];
  t6443 = -0.015022*t6440;
  t6445 = 9.61408e-19*t6343;
  t6464 = -0.321411000004*t6456;
  t6469 = t6434 + t6443 + t6445 + t6464;
  t6504 = -1.142576e-12*var1[17];
  t6513 = 6.0088e-8*t6440;
  t6522 = -0.015022*t6343;
  t6552 = -0.321411000004*t6540;
  t6605 = t6504 + t6513 + t6522 + t6552;
  t6673 = -9.889599999999905e-14*var1[18];
  t6778 = -2.2207999999999996e-8*t6768;
  t6787 = 0.005552*t6737;
  t6807 = -0.756181000012*t6800;
  t6815 = t6673 + t6778 + t6787 + t6807;
  t8457 = t6248*t8380;
  t8460 = t6220*t8444;
  t8463 = t6410*t8454;
  t8464 = t8457 + t8460 + t8463;
  t8472 = t6477*t8380;
  t8475 = t6485*t8444;
  t8476 = t5871*t8454;
  t8477 = t8472 + t8475 + t8476;
  t8480 = t6485*t8380;
  t8482 = t6637*t8444;
  t8483 = t6090*t8454;
  t8484 = t8480 + t8482 + t8483;
  t6912 = -2.4723999999999765e-8*var1[18];
  t6919 = 0.005552*t6768;
  t6920 = -3.553279999999999e-19*t6737;
  t6932 = -0.756181000012*t6923;
  t7002 = t6912 + t6919 + t6920 + t6932;
  t7056 = -0.7561810000240989*t6737;
  t7078 = 0.005552*t7071;
  t7102 = -2.2207999999999996e-8*t7100;
  t7104 = 0. + t7056 + t7078 + t7102;
  t7179 = -1.1632310000386117*t7172;
  t7217 = -0.03391*t7216;
  t7252 = 1.3564000000000002e-7*t7248;
  t7255 = 0. + t7179 + t7217 + t7252;
  t8491 = t6540*t8464;
  t8494 = t6883*t8477;
  t8496 = t6890*t8484;
  t8497 = t8491 + t8494 + t8496;
  t8503 = t6456*t8464;
  t8511 = t7032*t8477;
  t8513 = t6883*t8484;
  t8514 = t8503 + t8511 + t8513;
  t8517 = t7125*t8464;
  t8518 = t6386*t8477;
  t8520 = t6375*t8484;
  t8522 = t8517 + t8518 + t8520;
  t7342 = 3.4707600000000064e-7*var1[19];
  t7395 = -0.03391*t7355;
  t7403 = 2.1702400000000003e-18*t7172;
  t7423 = -1.16323100002*t7422;
  t7435 = t7342 + t7395 + t7403 + t7423;
  t7517 = 1.3883040000000026e-12*var1[19];
  t7559 = 1.3564000000000002e-7*t7355;
  t7566 = -0.03391*t7172;
  t7574 = -1.16323100002*t7571;
  t7586 = t7517 + t7559 + t7566 + t7574;
  t8524 = t7071*t8497;
  t8526 = t7100*t8514;
  t8527 = t7306*t8522;
  t8528 = t8524 + t8526 + t8527;
  t8531 = t7453*t8497;
  t8532 = t7460*t8514;
  t8533 = t6923*t8522;
  t8534 = t8531 + t8532 + t8533;
  t7664 = -1.*t7172;
  t7677 = 1. + t7664;
  t8540 = t7604*t8497;
  t8548 = t7453*t8514;
  t8549 = t6800*t8522;
  t8556 = t8540 + t8548 + t8549;
  t7723 = -1.6e-11*t7172;
  t7730 = 1. + t7723;
  t7758 = -1.000000000016*t7172;
  t7778 = 1. + t7758;
  t8611 = t153*t1146*t1890;
  t8612 = -1.*t1868*t1167;
  t8613 = t2625*t153*t1293;
  t8614 = t8611 + t8612 + t8613;
  t8621 = t3107*t153*t1146;
  t8622 = 4.e-6*t367*t1167;
  t8623 = t153*t956*t1293;
  t8624 = t8621 + t8622 + t8623;
  t8628 = -4.e-6*t367*t153*t1146;
  t8629 = -1.*t3487*t1167;
  t8630 = t153*t532*t1293;
  t8631 = t8628 + t8629 + t8630;
  t8635 = t4049*t8614;
  t8637 = 8.e-6*t2175*t8624;
  t8638 = t4229*t8631;
  t8639 = t8635 + t8637 + t8638;
  t8641 = t2976*t8614;
  t8642 = t5224*t8624;
  t8644 = 8.e-6*t2175*t8631;
  t8646 = t8641 + t8642 + t8644;
  t8649 = t5599*t8614;
  t8650 = t2382*t8624;
  t8651 = t2437*t8631;
  t8652 = t8649 + t8650 + t8651;
  t8658 = t5914*t8639;
  t8660 = t5521*t8646;
  t8663 = t6053*t8652;
  t8667 = t8658 + t8660 + t8663;
  t8669 = t6115*t8639;
  t8673 = t3977*t8646;
  t8675 = t5914*t8652;
  t8678 = t8669 + t8673 + t8675;
  t8680 = t4405*t8639;
  t8681 = t6311*t8646;
  t8682 = t4726*t8652;
  t8683 = t8680 + t8681 + t8682;
  t8686 = t6248*t8667;
  t8688 = t6220*t8678;
  t8689 = t6410*t8683;
  t8690 = t8686 + t8688 + t8689;
  t8692 = t6477*t8667;
  t8693 = t6485*t8678;
  t8694 = t5871*t8683;
  t8695 = t8692 + t8693 + t8694;
  t8697 = t6485*t8667;
  t8698 = t6637*t8678;
  t8699 = t6090*t8683;
  t8700 = t8697 + t8698 + t8699;
  t8702 = t6540*t8690;
  t8703 = t6883*t8695;
  t8704 = t6890*t8700;
  t8705 = t8702 + t8703 + t8704;
  t8708 = t6456*t8690;
  t8709 = t7032*t8695;
  t8710 = t6883*t8700;
  t8711 = t8708 + t8709 + t8710;
  t8714 = t7125*t8690;
  t8716 = t6386*t8695;
  t8717 = t6375*t8700;
  t8718 = t8714 + t8716 + t8717;
  t8723 = t7071*t8705;
  t8724 = t7100*t8711;
  t8725 = t7306*t8718;
  t8726 = t8723 + t8724 + t8725;
  t8729 = t7453*t8705;
  t8730 = t7460*t8711;
  t8733 = t6923*t8718;
  t8736 = t8729 + t8730 + t8733;
  t8741 = t7604*t8705;
  t8742 = t7453*t8711;
  t8743 = t6800*t8718;
  t8744 = t8741 + t8742 + t8743;
  p_output1[0]=t1079*t1359 + t1962*t2053 + t2469*t2843 + t3026*t3153 + t3376*t3595 + t4035*t4301 + t5027*t5376 + t5571*t5659 + t5891*t6058 + t6105*t6137 + t6302*t6327 + t6392*t6431 + t6469*t6497 + t6605*t6655 + t153*t23*t685 + t6815*t6900 + t7002*t7054 + t7104*t7143 + t7255*t7317 + t7435*t7492 + t7586*t7631 - 0.03391*(t7317*t7571 + t7492*t7647 + t7631*t7677) + 0.13731*(t7317*t7422 + t7631*t7647 + t7492*t7730) - 1.163231*(t7248*t7492 + t7216*t7631 + t7317*t7778) + var1[0];
  p_output1[1]=t1267*t153*t685 + t1079*t7895 + t1962*t7974 + t2469*t8084 + t3026*t8121 + t3376*t8191 + t4035*t8258 + t5027*t8298 + t5571*t8359 + t5891*t8380 + t6105*t8444 + t6302*t8454 + t6392*t8464 + t6469*t8477 + t6605*t8484 + t6815*t8497 + t7002*t8514 + t7104*t8522 + t7255*t8528 + t7435*t8534 + t7586*t8556 - 1.163231*(t7778*t8528 + t7248*t8534 + t7216*t8556) + 0.13731*(t7422*t8528 + t7730*t8534 + t7647*t8556) - 0.03391*(t7571*t8528 + t7647*t8534 + t7677*t8556) + var1[1];
  p_output1[2]=t1079*t1146*t153 + t1293*t153*t1962 - 1.*t1167*t685 + t2469*t8614 + t3026*t8624 + t3376*t8631 + t4035*t8639 + t5027*t8646 + t5571*t8652 + t5891*t8667 + t6105*t8678 + t6302*t8683 + t6392*t8690 + t6469*t8695 + t6605*t8700 + t6815*t8705 + t7002*t8711 + t7104*t8718 + t7255*t8726 + t7435*t8736 + t7586*t8744 - 1.163231*(t7778*t8726 + t7248*t8736 + t7216*t8744) + 0.13731*(t7422*t8726 + t7730*t8736 + t7647*t8744) - 0.03391*(t7571*t8726 + t7647*t8736 + t7677*t8744) + var1[2];
}



#ifdef MATLAB_MEX_FILE

#include "mex.h"
/*
 * Main function
 */
void mexFunction( int nlhs, mxArray *plhs[],
                  int nrhs, const mxArray *prhs[] )
{
  size_t mrows, ncols;

  double *var1;
  double *p_output1;

  /*  Check for proper number of arguments.  */ 
  if( nrhs != 1)
    {
      mexErrMsgIdAndTxt("MATLAB:MShaped:invalidNumInputs", "One input(s) required (var1).");
    }
  else if( nlhs > 1)
    {
      mexErrMsgIdAndTxt("MATLAB:MShaped:maxlhs", "Too many output arguments.");
    }

  /*  The input must be a noncomplex double vector or scaler.  */
  mrows = mxGetM(prhs[0]);
  ncols = mxGetN(prhs[0]);
  if( !mxIsDouble(prhs[0]) || mxIsComplex(prhs[0]) ||
    ( !(mrows == 20 && ncols == 1) && 
      !(mrows == 1 && ncols == 20))) 
    {
      mexErrMsgIdAndTxt( "MATLAB:MShaped:inputNotRealVector", "var1 is wrong.");
    }

  /*  Assign pointers to each input.  */
  var1 = mxGetPr(prhs[0]);
   


   
  /*  Create matrices for return arguments.  */
  plhs[0] = mxCreateDoubleMatrix((mwSize) 3, (mwSize) 1, mxREAL);
  p_output1 = mxGetPr(plhs[0]);


  /* Call the calculation subroutine. */
  output1(p_output1,var1);


}

#else // MATLAB_MEX_FILE

#include "p_toe_joint_left_mex.hh"

namespace SymExpression
{

void p_toe_joint_left_mex_raw(double *p_output1, const double *var1)
{
  // Call Subroutines
  output1(p_output1, var1);

}

}

#endif // MATLAB_MEX_FILE
