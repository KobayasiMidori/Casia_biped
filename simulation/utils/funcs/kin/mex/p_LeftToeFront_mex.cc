/*
 * Automatically Generated from Mathematica.
 * Thu 26 Mar 2020 17:48:28 GMT+08:00
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
  double t392;
  double t394;
  double t481;
  double t788;
  double t15;
  double t1230;
  double t1335;
  double t1275;
  double t1472;
  double t2797;
  double t60;
  double t1615;
  double t1637;
  double t2139;
  double t1320;
  double t1486;
  double t1502;
  double t2230;
  double t2237;
  double t2245;
  double t2519;
  double t2520;
  double t2565;
  double t1128;
  double t1137;
  double t799;
  double t851;
  double t4373;
  double t4378;
  double t4440;
  double t3090;
  double t3191;
  double t3206;
  double t3214;
  double t3215;
  double t3230;
  double t3540;
  double t3565;
  double t3576;
  double t3605;
  double t3611;
  double t3616;
  double t3858;
  double t4116;
  double t4171;
  double t4208;
  double t4217;
  double t4230;
  double t4591;
  double t3427;
  double t3430;
  double t4468;
  double t4509;
  double t2862;
  double t2869;
  double t2954;
  double t5529;
  double t5538;
  double t5543;
  double t4642;
  double t4643;
  double t4739;
  double t4835;
  double t4851;
  double t4856;
  double t4888;
  double t4889;
  double t5318;
  double t5336;
  double t5155;
  double t5167;
  double t5171;
  double t5213;
  double t5220;
  double t5223;
  double t5429;
  double t5434;
  double t5440;
  double t5441;
  double t5448;
  double t5461;
  double t5545;
  double t5625;
  double t5656;
  double t4601;
  double t5885;
  double t5918;
  double t4950;
  double t5012;
  double t5045;
  double t5052;
  double t6526;
  double t6300;
  double t6301;
  double t5994;
  double t5997;
  double t6010;
  double t6017;
  double t6018;
  double t6064;
  double t6284;
  double t6291;
  double t6182;
  double t6189;
  double t6208;
  double t6209;
  double t6254;
  double t6266;
  double t6333;
  double t6336;
  double t6354;
  double t6358;
  double t6369;
  double t6373;
  double t6400;
  double t6406;
  double t6459;
  double t5832;
  double t5835;
  double t6643;
  double t6669;
  double t6774;
  double t6781;
  double t6127;
  double t6936;
  double t6939;
  double t6952;
  double t6842;
  double t6581;
  double t6588;
  double t6622;
  double t6623;
  double t6625;
  double t6632;
  double t6721;
  double t6758;
  double t6761;
  double t6783;
  double t6789;
  double t6797;
  double t6885;
  double t6886;
  double t6896;
  double t6897;
  double t6904;
  double t6905;
  double t6953;
  double t6959;
  double t6975;
  double t6689;
  double t6697;
  double t7023;
  double t7041;
  double t6558;
  double t6561;
  double t6532;
  double t6541;
  double t7294;
  double t7182;
  double t7186;
  double t7013;
  double t7048;
  double t7051;
  double t7066;
  double t7068;
  double t7072;
  double t7199;
  double t7215;
  double t7140;
  double t7145;
  double t7151;
  double t7154;
  double t7161;
  double t7175;
  double t7233;
  double t7234;
  double t7245;
  double t7258;
  double t7261;
  double t7262;
  double t7272;
  double t7287;
  double t7289;
  double t7122;
  double t7126;
  double t7428;
  double t7435;
  double t7485;
  double t7486;
  double t6988;
  double t7571;
  double t7333;
  double t7334;
  double t7364;
  double t7367;
  double t7369;
  double t7370;
  double t7490;
  double t7504;
  double t7519;
  double t7548;
  double t7550;
  double t7553;
  double t7606;
  double t7614;
  double t7625;
  double t7644;
  double t7651;
  double t7653;
  double t7465;
  double t7474;
  double t7672;
  double t7674;
  double t7313;
  double t7319;
  double t7301;
  double t7303;
  double t83;
  double t713;
  double t860;
  double t868;
  double t1066;
  double t1114;
  double t1171;
  double t1202;
  double t1601;
  double t1911;
  double t2151;
  double t2165;
  double t2611;
  double t2879;
  double t2967;
  double t3014;
  double t7888;
  double t7891;
  double t7915;
  double t7926;
  double t7931;
  double t7932;
  double t3405;
  double t3417;
  double t3437;
  double t3537;
  double t3619;
  double t3652;
  double t3653;
  double t3661;
  double t3687;
  double t3784;
  double t4329;
  double t4563;
  double t4583;
  double t4604;
  double t4606;
  double t7949;
  double t7963;
  double t7970;
  double t7973;
  double t7978;
  double t7981;
  double t7983;
  double t7986;
  double t8006;
  double t8013;
  double t8016;
  double t8021;
  double t4914;
  double t5015;
  double t5077;
  double t5105;
  double t5281;
  double t5291;
  double t5314;
  double t5358;
  double t5423;
  double t5463;
  double t5640;
  double t5651;
  double t5857;
  double t5868;
  double t8031;
  double t8032;
  double t8040;
  double t8054;
  double t8059;
  double t8060;
  double t8063;
  double t8065;
  double t8067;
  double t8073;
  double t8080;
  double t8084;
  double t6079;
  double t6091;
  double t6119;
  double t6152;
  double t6163;
  double t6279;
  double t6295;
  double t6306;
  double t6309;
  double t6490;
  double t6553;
  double t6569;
  double t6575;
  double t8094;
  double t8100;
  double t8103;
  double t8104;
  double t8114;
  double t8116;
  double t8118;
  double t8120;
  double t8141;
  double t8155;
  double t8160;
  double t8175;
  double t6640;
  double t6686;
  double t6688;
  double t6712;
  double t6714;
  double t6815;
  double t6817;
  double t6823;
  double t6843;
  double t6872;
  double t6920;
  double t6963;
  double t6970;
  double t7006;
  double t7011;
  double t8190;
  double t8193;
  double t8198;
  double t8208;
  double t8228;
  double t8237;
  double t8239;
  double t8246;
  double t8256;
  double t8259;
  double t8269;
  double t8273;
  double t7082;
  double t7085;
  double t7107;
  double t7132;
  double t7133;
  double t7181;
  double t7190;
  double t7225;
  double t7228;
  double t7293;
  double t7304;
  double t7320;
  double t7330;
  double t8283;
  double t8287;
  double t8288;
  double t8291;
  double t8296;
  double t8311;
  double t8318;
  double t8320;
  double t8329;
  double t8332;
  double t8335;
  double t8336;
  double t7388;
  double t7438;
  double t7456;
  double t7477;
  double t7483;
  double t7556;
  double t7559;
  double t7560;
  double t7579;
  double t7582;
  double t8338;
  double t8340;
  double t8341;
  double t8345;
  double t8350;
  double t8351;
  double t8355;
  double t8359;
  double t7695;
  double t7715;
  double t8371;
  double t8375;
  double t8377;
  double t8380;
  double t7785;
  double t7796;
  double t7816;
  double t7818;
  double t8476;
  double t8477;
  double t8478;
  double t8480;
  double t8483;
  double t8484;
  double t8487;
  double t8491;
  double t8494;
  double t8497;
  double t8499;
  double t8500;
  double t8513;
  double t8515;
  double t8517;
  double t8518;
  double t8522;
  double t8523;
  double t8524;
  double t8526;
  double t8531;
  double t8532;
  double t8534;
  double t8535;
  double t8537;
  double t8539;
  double t8540;
  double t8542;
  double t8556;
  double t8559;
  double t8561;
  double t8562;
  double t8564;
  double t8568;
  double t8570;
  double t8573;
  double t8577;
  double t8578;
  double t8582;
  double t8585;
  double t8590;
  double t8592;
  double t8593;
  double t8594;
  double t8596;
  double t8597;
  double t8599;
  double t8607;
  double t8609;
  double t8610;
  double t8611;
  double t8613;
  double t8615;
  double t8621;
  double t8623;
  double t8628;
  double t8631;
  double t8632;
  double t8635;
  double t8637;
  double t8639;
  double t8641;
  double t8645;
  double t8646;
  double t8649;
  double t8650;
  double t8651;
  double t8652;
  double t8659;
  double t8663;
  double t8667;
  double t8668;
  t392 = Cos(var1[13]);
  t394 = -1.*t392;
  t481 = 1. + t394;
  t788 = Sin(var1[13]);
  t15 = Cos(var1[3]);
  t1230 = Cos(var1[5]);
  t1335 = Sin(var1[3]);
  t1275 = Sin(var1[4]);
  t1472 = Sin(var1[5]);
  t2797 = Sin(var1[14]);
  t60 = Cos(var1[4]);
  t1615 = 4.e-6*t788;
  t1637 = 0. + t1615;
  t2139 = 0. + t788;
  t1320 = t15*t1230*t1275;
  t1486 = t1335*t1472;
  t1502 = t1320 + t1486;
  t2230 = -1.*t1230*t1335;
  t2237 = t15*t1275*t1472;
  t2245 = t2230 + t2237;
  t2519 = Cos(var1[14]);
  t2520 = -1.*t2519;
  t2565 = 1. + t2520;
  t1128 = -1.*t788;
  t1137 = 0. + t1128;
  t799 = -4.e-6*t788;
  t851 = 0. + t799;
  t4373 = Cos(var1[15]);
  t4378 = -1.*t4373;
  t4440 = 1. + t4378;
  t3090 = t15*t60*t1637;
  t3191 = t2139*t1502;
  t3206 = -1.000000000016*t481;
  t3214 = 1. + t3206;
  t3215 = t3214*t2245;
  t3230 = t3090 + t3191 + t3215;
  t3540 = -4.e-6*t481*t15*t60;
  t3565 = -1.*t481;
  t3576 = 1. + t3565;
  t3605 = t3576*t1502;
  t3611 = t1137*t2245;
  t3616 = t3540 + t3605 + t3611;
  t3858 = -1.6e-11*t481;
  t4116 = 1. + t3858;
  t4171 = t4116*t15*t60;
  t4208 = -4.e-6*t481*t1502;
  t4217 = t851*t2245;
  t4230 = t4171 + t4208 + t4217;
  t4591 = Sin(var1[15]);
  t3427 = 8.e-6*t2797;
  t3430 = 0. + t3427;
  t4468 = -4.e-6*t4440;
  t4509 = 0. + t4468;
  t2862 = -8.e-6*t2797;
  t2869 = 0. + t2862;
  t2954 = 0. + t2797;
  t5529 = Cos(var1[16]);
  t5538 = -1.*t5529;
  t5543 = 1. + t5538;
  t4642 = -1.*t2797;
  t4643 = 0. + t4642;
  t4739 = t4643*t3230;
  t4835 = 8.e-6*t2565*t3616;
  t4851 = -1.*t2565;
  t4856 = 1. + t4851;
  t4888 = t4856*t4230;
  t4889 = t4739 + t4835 + t4888;
  t5318 = -4.e-6*t4591;
  t5336 = 0. + t5318;
  t5155 = t3430*t3230;
  t5167 = -6.4e-11*t2565;
  t5171 = 1. + t5167;
  t5213 = t5171*t3616;
  t5220 = 8.e-6*t2565*t4230;
  t5223 = t5155 + t5213 + t5220;
  t5429 = -1.000000000064*t2565;
  t5434 = 1. + t5429;
  t5440 = t5434*t3230;
  t5441 = t2869*t3616;
  t5448 = t2954*t4230;
  t5461 = t5440 + t5441 + t5448;
  t5545 = -4.e-6*t5543;
  t5625 = 0. + t5545;
  t5656 = Sin(var1[16]);
  t4601 = 0. + t4591;
  t5885 = 4.e-6*t4440;
  t5918 = 0. + t5885;
  t4950 = -1.*t4591;
  t5012 = 0. + t4950;
  t5045 = 4.e-6*t4591;
  t5052 = 0. + t5045;
  t6526 = Sin(var1[17]);
  t6300 = 4.e-6*t5656;
  t6301 = 0. + t6300;
  t5994 = t5918*t4889;
  t5997 = t5336*t5223;
  t6010 = -1.6e-11*t4440;
  t6017 = 1. + t6010;
  t6018 = t6017*t5461;
  t6064 = t5994 + t5997 + t6018;
  t6284 = -1.*t5656;
  t6291 = 0. + t6284;
  t6182 = -1.*t4440;
  t6189 = 1. + t6182;
  t6208 = t6189*t4889;
  t6209 = t4601*t5223;
  t6254 = t5918*t5461;
  t6266 = t6208 + t6209 + t6254;
  t6333 = t5012*t4889;
  t6336 = -1.000000000016*t4440;
  t6354 = 1. + t6336;
  t6358 = t6354*t5223;
  t6369 = t5052*t5461;
  t6373 = t6333 + t6358 + t6369;
  t6400 = Cos(var1[17]);
  t6406 = -1.*t6400;
  t6459 = 1. + t6406;
  t5832 = -4.e-6*t5656;
  t5835 = 0. + t5832;
  t6643 = -4.e-6*t6459;
  t6669 = 0. + t6643;
  t6774 = 4.e-6*t5543;
  t6781 = 0. + t6774;
  t6127 = 0. + t5656;
  t6936 = Cos(var1[18]);
  t6939 = -1.*t6936;
  t6952 = 1. + t6939;
  t6842 = 0. + t6526;
  t6581 = t6301*t6064;
  t6588 = t6291*t6266;
  t6622 = -1.000000000016*t5543;
  t6623 = 1. + t6622;
  t6625 = t6623*t6373;
  t6632 = t6581 + t6588 + t6625;
  t6721 = -1.6e-11*t5543;
  t6758 = 1. + t6721;
  t6761 = t6758*t6064;
  t6783 = t6781*t6266;
  t6789 = t5835*t6373;
  t6797 = t6761 + t6783 + t6789;
  t6885 = t6781*t6064;
  t6886 = -1.*t5543;
  t6896 = 1. + t6886;
  t6897 = t6896*t6266;
  t6904 = t6127*t6373;
  t6905 = t6885 + t6897 + t6904;
  t6953 = -4.e-6*t6952;
  t6959 = 0. + t6953;
  t6975 = Sin(var1[18]);
  t6689 = -4.e-6*t6526;
  t6697 = 0. + t6689;
  t7023 = 4.e-6*t6459;
  t7041 = 0. + t7023;
  t6558 = 4.e-6*t6526;
  t6561 = 0. + t6558;
  t6532 = -1.*t6526;
  t6541 = 0. + t6532;
  t7294 = Sin(var1[19]);
  t7182 = -1.*t6975;
  t7186 = 0. + t7182;
  t7013 = t6842*t6632;
  t7048 = t7041*t6797;
  t7051 = -1.*t6459;
  t7066 = 1. + t7051;
  t7068 = t7066*t6905;
  t7072 = t7013 + t7048 + t7068;
  t7199 = 4.e-6*t6975;
  t7215 = 0. + t7199;
  t7140 = t6697*t6632;
  t7145 = -1.6e-11*t6459;
  t7151 = 1. + t7145;
  t7154 = t7151*t6797;
  t7161 = t7041*t6905;
  t7175 = t7140 + t7154 + t7161;
  t7233 = -1.000000000016*t6459;
  t7234 = 1. + t7233;
  t7245 = t7234*t6632;
  t7258 = t6561*t6797;
  t7261 = t6541*t6905;
  t7262 = t7245 + t7258 + t7261;
  t7272 = Cos(var1[19]);
  t7287 = -1.*t7272;
  t7289 = 1. + t7287;
  t7122 = -4.e-6*t6975;
  t7126 = 0. + t7122;
  t7428 = -4.e-6*t7289;
  t7435 = 0. + t7428;
  t7485 = 4.e-6*t6952;
  t7486 = 0. + t7485;
  t6988 = 0. + t6975;
  t7571 = 0. + t7294;
  t7333 = t7186*t7072;
  t7334 = t7215*t7175;
  t7364 = -1.000000000016*t6952;
  t7367 = 1. + t7364;
  t7369 = t7367*t7262;
  t7370 = t7333 + t7334 + t7369;
  t7490 = t7486*t7072;
  t7504 = -1.6e-11*t6952;
  t7519 = 1. + t7504;
  t7548 = t7519*t7175;
  t7550 = t7126*t7262;
  t7553 = t7490 + t7548 + t7550;
  t7606 = -1.*t6952;
  t7614 = 1. + t7606;
  t7625 = t7614*t7072;
  t7644 = t7486*t7175;
  t7651 = t6988*t7262;
  t7653 = t7625 + t7644 + t7651;
  t7465 = -4.e-6*t7294;
  t7474 = 0. + t7465;
  t7672 = 4.e-6*t7289;
  t7674 = 0. + t7672;
  t7313 = 4.e-6*t7294;
  t7319 = 0. + t7313;
  t7301 = -1.*t7294;
  t7303 = 0. + t7301;
  t83 = -4.6196000000000004e-7*var1[13];
  t713 = -1.912200000030595e-7*t481;
  t860 = 0.13451000000399999*t851;
  t868 = t83 + t713 + t860;
  t1066 = 1.84784e-12*var1[13];
  t1114 = -0.04780500000076488*t481;
  t1171 = 0.13451000000399999*t1137;
  t1202 = t1066 + t1114 + t1171;
  t1601 = 0.13451000000615215*t481;
  t1911 = -1.9122e-7*t1637;
  t2151 = -0.047805*t2139;
  t2165 = 0. + t1601 + t1911 + t2151;
  t2611 = 0.13451000001660862*t2565;
  t2879 = 5.e-7*t2869;
  t2967 = -0.0625*t2954;
  t3014 = 0. + t2611 + t2879 + t2967;
  t7888 = t1230*t1335*t1275;
  t7891 = -1.*t15*t1472;
  t7915 = t7888 + t7891;
  t7926 = t15*t1230;
  t7931 = t1335*t1275*t1472;
  t7932 = t7926 + t7931;
  t3405 = -7.607999999999987e-8*var1[14];
  t3417 = 5.000000000319999e-7*t2565;
  t3437 = 0.13451000000799998*t3430;
  t3537 = t3405 + t3417 + t3437;
  t3619 = -6.086399999999989e-13*var1[14];
  t3652 = -0.062500000004*t2565;
  t3653 = -1.*t2797;
  t3661 = 0. + t3653;
  t3687 = 0.13451000000799998*t3661;
  t3784 = t3619 + t3652 + t3687;
  t4329 = 1.7471199999999997e-12*var1[15];
  t4563 = 2.50004e-7*t4509;
  t4583 = -0.062501*t4440;
  t4604 = -0.140805000004*t4601;
  t4606 = t4329 + t4563 + t4583 + t4604;
  t7949 = t60*t1637*t1335;
  t7963 = t2139*t7915;
  t7970 = t3214*t7932;
  t7973 = t7949 + t7963 + t7970;
  t7978 = -4.e-6*t481*t60*t1335;
  t7981 = t3576*t7915;
  t7983 = t1137*t7932;
  t7986 = t7978 + t7981 + t7983;
  t8006 = t4116*t60*t1335;
  t8013 = -4.e-6*t481*t7915;
  t8016 = t851*t7932;
  t8021 = t8006 + t8013 + t8016;
  t4914 = -0.1408050000062529*t4440;
  t5015 = -0.062501*t5012;
  t5077 = 2.50004e-7*t5052;
  t5105 = 0. + t4914 + t5015 + t5077;
  t5281 = 4.3677999999999997e-7*var1[15];
  t5291 = -0.062501*t4509;
  t5314 = 4.000064e-18*t4440;
  t5358 = -0.140805000004*t5336;
  t5423 = t5281 + t5291 + t5314 + t5358;
  t5463 = -4.3219999999999986e-8*var1[16];
  t5640 = -0.062502*t5625;
  t5651 = 4.000128e-18*t5543;
  t5857 = -0.26080500000400003*t5835;
  t5868 = t5463 + t5640 + t5651 + t5857;
  t8031 = t4643*t7973;
  t8032 = 8.e-6*t2565*t7986;
  t8040 = t4856*t8021;
  t8054 = t8031 + t8032 + t8040;
  t8059 = t3430*t7973;
  t8060 = t5171*t7986;
  t8063 = 8.e-6*t2565*t8021;
  t8065 = t8059 + t8060 + t8063;
  t8067 = t5434*t7973;
  t8073 = t2869*t7986;
  t8080 = t2954*t8021;
  t8084 = t8067 + t8073 + t8080;
  t6079 = -1.7287999999999994e-13*var1[16];
  t6091 = 2.50008e-7*t5625;
  t6119 = -0.062502*t5543;
  t6152 = -0.26080500000400003*t6127;
  t6163 = t6079 + t6091 + t6119 + t6152;
  t6279 = -0.2608050000081729*t5543;
  t6295 = -0.062502*t6291;
  t6306 = 2.50008e-7*t6301;
  t6309 = 0. + t6279 + t6295 + t6306;
  t6490 = -0.32141100000914263*t6459;
  t6553 = -0.015022*t6541;
  t6569 = 6.0088e-8*t6561;
  t6575 = 0. + t6490 + t6553 + t6569;
  t8094 = t5918*t8054;
  t8100 = t5336*t8065;
  t8103 = t6017*t8084;
  t8104 = t8094 + t8100 + t8103;
  t8114 = t6189*t8054;
  t8116 = t4601*t8065;
  t8118 = t5918*t8084;
  t8120 = t8114 + t8116 + t8118;
  t8141 = t5012*t8054;
  t8155 = t6354*t8065;
  t8160 = t5052*t8084;
  t8175 = t8141 + t8155 + t8160;
  t6640 = -2.85644e-7*var1[17];
  t6686 = -0.015022*t6669;
  t6688 = 9.61408e-19*t6459;
  t6712 = -0.321411000004*t6697;
  t6714 = t6640 + t6686 + t6688 + t6712;
  t6815 = -1.142576e-12*var1[17];
  t6817 = 6.0088e-8*t6669;
  t6823 = -0.015022*t6459;
  t6843 = -0.321411000004*t6842;
  t6872 = t6815 + t6817 + t6823 + t6843;
  t6920 = -9.889599999999905e-14*var1[18];
  t6963 = -2.2207999999999996e-8*t6959;
  t6970 = 0.005552*t6952;
  t7006 = -0.756181000012*t6988;
  t7011 = t6920 + t6963 + t6970 + t7006;
  t8190 = t6301*t8104;
  t8193 = t6291*t8120;
  t8198 = t6623*t8175;
  t8208 = t8190 + t8193 + t8198;
  t8228 = t6758*t8104;
  t8237 = t6781*t8120;
  t8239 = t5835*t8175;
  t8246 = t8228 + t8237 + t8239;
  t8256 = t6781*t8104;
  t8259 = t6896*t8120;
  t8269 = t6127*t8175;
  t8273 = t8256 + t8259 + t8269;
  t7082 = -2.4723999999999765e-8*var1[18];
  t7085 = 0.005552*t6959;
  t7107 = -3.553279999999999e-19*t6952;
  t7132 = -0.756181000012*t7126;
  t7133 = t7082 + t7085 + t7107 + t7132;
  t7181 = -0.7561810000240989*t6952;
  t7190 = 0.005552*t7186;
  t7225 = -2.2207999999999996e-8*t7215;
  t7228 = 0. + t7181 + t7190 + t7225;
  t7293 = -1.1632310000386117*t7289;
  t7304 = -0.03391*t7303;
  t7320 = 1.3564000000000002e-7*t7319;
  t7330 = 0. + t7293 + t7304 + t7320;
  t8283 = t6842*t8208;
  t8287 = t7041*t8246;
  t8288 = t7066*t8273;
  t8291 = t8283 + t8287 + t8288;
  t8296 = t6697*t8208;
  t8311 = t7151*t8246;
  t8318 = t7041*t8273;
  t8320 = t8296 + t8311 + t8318;
  t8329 = t7234*t8208;
  t8332 = t6561*t8246;
  t8335 = t6541*t8273;
  t8336 = t8329 + t8332 + t8335;
  t7388 = 3.4707600000000064e-7*var1[19];
  t7438 = -0.03391*t7435;
  t7456 = 2.1702400000000003e-18*t7289;
  t7477 = -1.16323100002*t7474;
  t7483 = t7388 + t7438 + t7456 + t7477;
  t7556 = 1.3883040000000026e-12*var1[19];
  t7559 = 1.3564000000000002e-7*t7435;
  t7560 = -0.03391*t7289;
  t7579 = -1.16323100002*t7571;
  t7582 = t7556 + t7559 + t7560 + t7579;
  t8338 = t7186*t8291;
  t8340 = t7215*t8320;
  t8341 = t7367*t8336;
  t8345 = t8338 + t8340 + t8341;
  t8350 = t7486*t8291;
  t8351 = t7519*t8320;
  t8355 = t7126*t8336;
  t8359 = t8350 + t8351 + t8355;
  t7695 = -1.*t7289;
  t7715 = 1. + t7695;
  t8371 = t7614*t8291;
  t8375 = t7486*t8320;
  t8377 = t6988*t8336;
  t8380 = t8371 + t8375 + t8377;
  t7785 = -1.6e-11*t7289;
  t7796 = 1. + t7785;
  t7816 = -1.000000000016*t7289;
  t7818 = 1. + t7816;
  t8476 = t60*t1230*t2139;
  t8477 = -1.*t1637*t1275;
  t8478 = t3214*t60*t1472;
  t8480 = t8476 + t8477 + t8478;
  t8483 = t3576*t60*t1230;
  t8484 = 4.e-6*t481*t1275;
  t8487 = t60*t1137*t1472;
  t8491 = t8483 + t8484 + t8487;
  t8494 = -4.e-6*t481*t60*t1230;
  t8497 = -1.*t4116*t1275;
  t8499 = t60*t851*t1472;
  t8500 = t8494 + t8497 + t8499;
  t8513 = t4643*t8480;
  t8515 = 8.e-6*t2565*t8491;
  t8517 = t4856*t8500;
  t8518 = t8513 + t8515 + t8517;
  t8522 = t3430*t8480;
  t8523 = t5171*t8491;
  t8524 = 8.e-6*t2565*t8500;
  t8526 = t8522 + t8523 + t8524;
  t8531 = t5434*t8480;
  t8532 = t2869*t8491;
  t8534 = t2954*t8500;
  t8535 = t8531 + t8532 + t8534;
  t8537 = t5918*t8518;
  t8539 = t5336*t8526;
  t8540 = t6017*t8535;
  t8542 = t8537 + t8539 + t8540;
  t8556 = t6189*t8518;
  t8559 = t4601*t8526;
  t8561 = t5918*t8535;
  t8562 = t8556 + t8559 + t8561;
  t8564 = t5012*t8518;
  t8568 = t6354*t8526;
  t8570 = t5052*t8535;
  t8573 = t8564 + t8568 + t8570;
  t8577 = t6301*t8542;
  t8578 = t6291*t8562;
  t8582 = t6623*t8573;
  t8585 = t8577 + t8578 + t8582;
  t8590 = t6758*t8542;
  t8592 = t6781*t8562;
  t8593 = t5835*t8573;
  t8594 = t8590 + t8592 + t8593;
  t8596 = t6781*t8542;
  t8597 = t6896*t8562;
  t8599 = t6127*t8573;
  t8607 = t8596 + t8597 + t8599;
  t8609 = t6842*t8585;
  t8610 = t7041*t8594;
  t8611 = t7066*t8607;
  t8613 = t8609 + t8610 + t8611;
  t8615 = t6697*t8585;
  t8621 = t7151*t8594;
  t8623 = t7041*t8607;
  t8628 = t8615 + t8621 + t8623;
  t8631 = t7234*t8585;
  t8632 = t6561*t8594;
  t8635 = t6541*t8607;
  t8637 = t8631 + t8632 + t8635;
  t8639 = t7186*t8613;
  t8641 = t7215*t8628;
  t8645 = t7367*t8637;
  t8646 = t8639 + t8641 + t8645;
  t8649 = t7486*t8613;
  t8650 = t7519*t8628;
  t8651 = t7126*t8637;
  t8652 = t8649 + t8650 + t8651;
  t8659 = t7614*t8613;
  t8663 = t7486*t8628;
  t8667 = t6988*t8637;
  t8668 = t8659 + t8663 + t8667;
  p_output1[0]=t1202*t1502 + t2165*t2245 + t3014*t3230 + t3537*t3616 + t3784*t4230 + t4606*t4889 + t5105*t5223 + t5423*t5461 + t5868*t6064 + t6163*t6266 + t6309*t6373 + t6575*t6632 + t6714*t6797 + t6872*t6905 + t7011*t7072 + t7133*t7175 + t7228*t7262 + t7330*t7370 + t7483*t7553 + t7582*t7653 + 0.07509*(t7370*t7571 + t7553*t7674 + t7653*t7715) + 0.137309*(t7370*t7474 + t7653*t7674 + t7553*t7796) - 1.220321*(t7319*t7553 + t7303*t7653 + t7370*t7818) + t15*t60*t868 + var1[0];
  p_output1[1]=t1202*t7915 + t2165*t7932 + t3014*t7973 + t3537*t7986 + t3784*t8021 + t4606*t8054 + t5105*t8065 + t5423*t8084 + t5868*t8104 + t6163*t8120 + t6309*t8175 + t6575*t8208 + t6714*t8246 + t6872*t8273 + t7011*t8291 + t7133*t8320 + t7228*t8336 + t7330*t8345 + t7483*t8359 + t7582*t8380 - 1.220321*(t7818*t8345 + t7319*t8359 + t7303*t8380) + 0.137309*(t7474*t8345 + t7796*t8359 + t7674*t8380) + 0.07509*(t7571*t8345 + t7674*t8359 + t7715*t8380) + t1335*t60*t868 + var1[1];
  p_output1[2]=t1202*t1230*t60 + t1472*t2165*t60 + t3014*t8480 + t3537*t8491 + t3784*t8500 + t4606*t8518 + t5105*t8526 + t5423*t8535 + t5868*t8542 + t6163*t8562 + t6309*t8573 + t6575*t8585 + t6714*t8594 + t6872*t8607 + t7011*t8613 + t7133*t8628 + t7228*t8637 + t7330*t8646 + t7483*t8652 + t7582*t8668 - 1.220321*(t7818*t8646 + t7319*t8652 + t7303*t8668) + 0.137309*(t7474*t8646 + t7796*t8652 + t7674*t8668) + 0.07509*(t7571*t8646 + t7674*t8652 + t7715*t8668) - 1.*t1275*t868 + var1[2];
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

#include "p_LeftToeFront_mex.hh"

namespace SymExpression
{

void p_LeftToeFront_mex_raw(double *p_output1, const double *var1)
{
  // Call Subroutines
  output1(p_output1, var1);

}

}

#endif // MATLAB_MEX_FILE
