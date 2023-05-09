/*
 * Automatically Generated from Mathematica.
 * Thu 26 Mar 2020 17:48:51 GMT+08:00
 */
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "p_RightToeFront_src.h"

#ifdef _MSC_VER
  #define INLINE __forceinline /* use __forceinline (VC++ specific) */
#else
  #define INLINE static __inline__        /* use standard inline */
#endif

/**
 * Copied from Wolfram Mathematica C Definitions file mdefs.hpp
 * Changed marcos to inline functions (Eric Cousineau)
 */
INLINE double Power(double x, double y) { return pow(x, y); }
INLINE double Sqrt(double x) { return sqrt(x); }

INLINE double Abs(double x) { return fabs(x); }

INLINE double Exp(double x) { return exp(x); }
INLINE double Log(double x) { return log(x); }

INLINE double Sin(double x) { return sin(x); }
INLINE double Cos(double x) { return cos(x); }
INLINE double Tan(double x) { return tan(x); }

INLINE double Csc(double x) { return 1.0/sin(x); }
INLINE double Sec(double x) { return 1.0/cos(x); }

INLINE double ArcSin(double x) { return asin(x); }
INLINE double ArcCos(double x) { return acos(x); }

/* update ArcTan function to use atan2 instead. */
INLINE double ArcTan(double x, double y) { return atan2(y,x); }

INLINE double Sinh(double x) { return sinh(x); }
INLINE double Cosh(double x) { return cosh(x); }
INLINE double Tanh(double x) { return tanh(x); }

#define E 2.71828182845904523536029
#define Pi 3.14159265358979323846264
#define Degree 0.01745329251994329576924

/*
 * Sub functions
 */
static void output1(double *p_output1,const double *var1)
{
  double t9;
  double t588;
  double t591;
  double t614;
  double t646;
  double t20;
  double t68;
  double t25;
  double t346;
  double t1402;
  double t26;
  double t366;
  double t529;
  double t1689;
  double t1701;
  double t1799;
  double t1428;
  double t1438;
  double t716;
  double t722;
  double t2354;
  double t2382;
  double t2509;
  double t2620;
  double t1882;
  double t1937;
  double t1969;
  double t3319;
  double t3329;
  double t3334;
  double t3346;
  double t3442;
  double t3483;
  double t2887;
  double t2910;
  double t2930;
  double t3044;
  double t3054;
  double t3086;
  double t3562;
  double t3577;
  double t2069;
  double t2192;
  double t2194;
  double t2219;
  double t2224;
  double t2266;
  double t3585;
  double t3795;
  double t3805;
  double t3817;
  double t4237;
  double t4244;
  double t4255;
  double t3622;
  double t3661;
  double t3668;
  double t3717;
  double t3753;
  double t3763;
  double t3189;
  double t3195;
  double t4077;
  double t4082;
  double t4090;
  double t5034;
  double t5062;
  double t5078;
  double t5082;
  double t5099;
  double t5103;
  double t4464;
  double t4567;
  double t4608;
  double t4700;
  double t4787;
  double t4832;
  double t4883;
  double t4903;
  double t4972;
  double t5189;
  double t5197;
  double t5200;
  double t5213;
  double t3842;
  double t3847;
  double t4261;
  double t4331;
  double t4543;
  double t4547;
  double t5784;
  double t6069;
  double t6088;
  double t6111;
  double t4980;
  double t5009;
  double t5011;
  double t5031;
  double t5134;
  double t5140;
  double t5985;
  double t5536;
  double t5562;
  double t5568;
  double t5591;
  double t5606;
  double t5689;
  double t6013;
  double t6014;
  double t6021;
  double t6028;
  double t6043;
  double t6045;
  double t6112;
  double t6118;
  double t6229;
  double t4472;
  double t4485;
  double t6329;
  double t6362;
  double t5510;
  double t5520;
  double t5376;
  double t5491;
  double t6814;
  double t6572;
  double t6591;
  double t6371;
  double t6379;
  double t6394;
  double t6395;
  double t6399;
  double t6401;
  double t6615;
  double t6621;
  double t6514;
  double t6521;
  double t6524;
  double t6536;
  double t6545;
  double t6546;
  double t6663;
  double t6664;
  double t6690;
  double t6704;
  double t6705;
  double t6735;
  double t6764;
  double t6771;
  double t6804;
  double t6458;
  double t6482;
  double t6994;
  double t6999;
  double t7052;
  double t7063;
  double t6236;
  double t7309;
  double t7315;
  double t7335;
  double t7184;
  double t6865;
  double t6919;
  double t6940;
  double t6941;
  double t6946;
  double t6954;
  double t7080;
  double t7081;
  double t7084;
  double t7085;
  double t7088;
  double t7100;
  double t7201;
  double t7246;
  double t7247;
  double t7249;
  double t7268;
  double t7282;
  double t7363;
  double t7368;
  double t7382;
  double t7016;
  double t7035;
  double t7430;
  double t7447;
  double t6827;
  double t6834;
  double t6820;
  double t6825;
  double t7580;
  double t7629;
  double t7427;
  double t7480;
  double t7498;
  double t7500;
  double t7503;
  double t7510;
  double t7645;
  double t7651;
  double t7549;
  double t7561;
  double t7563;
  double t7565;
  double t7568;
  double t7572;
  double t7675;
  double t7688;
  double t7689;
  double t7691;
  double t7698;
  double t7700;
  double t7529;
  double t7542;
  double t7798;
  double t7800;
  double t7384;
  double t549;
  double t625;
  double t1052;
  double t1072;
  double t1416;
  double t1427;
  double t1470;
  double t1496;
  double t1819;
  double t1963;
  double t2005;
  double t2010;
  double t7902;
  double t7904;
  double t7905;
  double t7928;
  double t7929;
  double t7934;
  double t2282;
  double t2594;
  double t2639;
  double t2722;
  double t2763;
  double t2849;
  double t3114;
  double t3137;
  double t3273;
  double t3304;
  double t3511;
  double t3579;
  double t3611;
  double t3616;
  double t8019;
  double t8020;
  double t8023;
  double t8031;
  double t7976;
  double t7980;
  double t7992;
  double t8000;
  double t7945;
  double t7950;
  double t7958;
  double t7972;
  double t3779;
  double t3964;
  double t3982;
  double t4106;
  double t4134;
  double t4220;
  double t4364;
  double t4433;
  double t4517;
  double t4532;
  double t8035;
  double t8036;
  double t8044;
  double t8046;
  double t8068;
  double t8069;
  double t8074;
  double t8078;
  double t5186;
  double t5198;
  double t5240;
  double t5273;
  double t5348;
  double t5504;
  double t5524;
  double t5535;
  double t8051;
  double t8052;
  double t8055;
  double t8056;
  double t5698;
  double t5715;
  double t5761;
  double t5797;
  double t5810;
  double t5829;
  double t5915;
  double t5966;
  double t5986;
  double t5998;
  double t6055;
  double t6187;
  double t6192;
  double t6278;
  double t6299;
  double t8062;
  double t8064;
  double t8082;
  double t8083;
  double t8093;
  double t8099;
  double t8102;
  double t8105;
  double t8113;
  double t8119;
  double t8136;
  double t8138;
  double t6425;
  double t6427;
  double t6436;
  double t6503;
  double t6511;
  double t6566;
  double t6604;
  double t6629;
  double t6636;
  double t6809;
  double t6826;
  double t6852;
  double t6857;
  double t8141;
  double t8144;
  double t8148;
  double t8149;
  double t8151;
  double t8152;
  double t8153;
  double t8159;
  double t8161;
  double t8162;
  double t8163;
  double t8165;
  double t6991;
  double t7014;
  double t7015;
  double t7040;
  double t7043;
  double t7163;
  double t7179;
  double t7180;
  double t7188;
  double t7189;
  double t7307;
  double t7372;
  double t7379;
  double t7392;
  double t7402;
  double t8170;
  double t8176;
  double t8177;
  double t8178;
  double t8182;
  double t8184;
  double t8187;
  double t8196;
  double t8206;
  double t8210;
  double t8214;
  double t8218;
  double t7518;
  double t7520;
  double t7521;
  double t7545;
  double t7546;
  double t7578;
  double t7630;
  double t7663;
  double t7668;
  double t8221;
  double t8227;
  double t8230;
  double t8231;
  double t8234;
  double t8236;
  double t8239;
  double t8240;
  double t7725;
  double t7729;
  double t8245;
  double t8246;
  double t8249;
  double t8250;
  double t7810;
  double t7819;
  double t7853;
  double t7855;
  double t8337;
  double t8338;
  double t8340;
  double t8341;
  double t8327;
  double t8328;
  double t8333;
  double t8335;
  double t8311;
  double t8314;
  double t8320;
  double t8323;
  double t8347;
  double t8351;
  double t8353;
  double t8354;
  double t8374;
  double t8377;
  double t8378;
  double t8380;
  double t8358;
  double t8359;
  double t8361;
  double t8367;
  double t8370;
  double t8373;
  double t8386;
  double t8387;
  double t8399;
  double t8400;
  double t8401;
  double t8402;
  double t8406;
  double t8417;
  double t8418;
  double t8419;
  double t8427;
  double t8429;
  double t8433;
  double t8436;
  double t8440;
  double t8443;
  double t8444;
  double t8445;
  double t8458;
  double t8459;
  double t8462;
  double t8465;
  double t8467;
  double t8468;
  double t8475;
  double t8476;
  double t8478;
  double t8479;
  double t8480;
  double t8481;
  double t8487;
  double t8488;
  double t8489;
  double t8492;
  double t8494;
  double t8498;
  double t8499;
  double t8500;
  double t8509;
  double t8513;
  double t8514;
  double t8516;
  double t8520;
  double t8523;
  double t8525;
  double t8526;
  t9 = Cos(var1[3]);
  t588 = Cos(var1[6]);
  t591 = -1.*t588;
  t614 = 1. + t591;
  t646 = Sin(var1[6]);
  t20 = Cos(var1[5]);
  t68 = Sin(var1[3]);
  t25 = Sin(var1[4]);
  t346 = Sin(var1[5]);
  t1402 = Cos(var1[4]);
  t26 = t9*t20*t25;
  t366 = t68*t346;
  t529 = t26 + t366;
  t1689 = -1.*t20*t68;
  t1701 = t9*t25*t346;
  t1799 = t1689 + t1701;
  t1428 = -4.e-6*t646;
  t1438 = 0. + t1428;
  t716 = -1.*t646;
  t722 = 0. + t716;
  t2354 = Cos(var1[7]);
  t2382 = -1.*t2354;
  t2509 = 1. + t2382;
  t2620 = Sin(var1[7]);
  t1882 = 4.e-6*t646;
  t1937 = 0. + t1882;
  t1969 = 0. + t646;
  t3319 = -1.000000000016*t614;
  t3329 = 1. + t3319;
  t3334 = t3329*t1799;
  t3346 = t9*t1402*t1937;
  t3442 = t529*t1969;
  t3483 = t3334 + t3346 + t3442;
  t2887 = -4.e-6*t9*t1402*t614;
  t2910 = -1.*t614;
  t2930 = 1. + t2910;
  t3044 = t2930*t529;
  t3054 = t1799*t722;
  t3086 = t2887 + t3044 + t3054;
  t3562 = -8.e-6*t2620;
  t3577 = 0. + t3562;
  t2069 = -1.6e-11*t614;
  t2192 = 1. + t2069;
  t2194 = t9*t1402*t2192;
  t2219 = -4.e-6*t614*t529;
  t2224 = t1799*t1438;
  t2266 = t2194 + t2219 + t2224;
  t3585 = 0. + t2620;
  t3795 = Cos(var1[8]);
  t3805 = -1.*t3795;
  t3817 = 1. + t3805;
  t4237 = Cos(var1[9]);
  t4244 = -1.*t4237;
  t4255 = 1. + t4244;
  t3622 = -1.000000000064*t2509;
  t3661 = 1. + t3622;
  t3668 = t3661*t3483;
  t3717 = t3086*t3577;
  t3753 = t2266*t3585;
  t3763 = t3668 + t3717 + t3753;
  t3189 = 8.e-6*t2620;
  t3195 = 0. + t3189;
  t4077 = Sin(var1[8]);
  t4082 = -4.e-6*t4077;
  t4090 = 0. + t4082;
  t5034 = -6.4e-11*t2509;
  t5062 = 1. + t5034;
  t5078 = t5062*t3086;
  t5082 = 8.e-6*t2509*t2266;
  t5099 = t3483*t3195;
  t5103 = t5078 + t5082 + t5099;
  t4464 = Sin(var1[9]);
  t4567 = 8.e-6*t2509*t3086;
  t4608 = -1.*t2509;
  t4700 = 1. + t4608;
  t4787 = t4700*t2266;
  t4832 = -1.*t2620;
  t4883 = 0. + t4832;
  t4903 = t3483*t4883;
  t4972 = t4567 + t4787 + t4903;
  t5189 = -1.*t4077;
  t5197 = 0. + t5189;
  t5200 = 4.e-6*t4077;
  t5213 = 0. + t5200;
  t3842 = -4.e-6*t3817;
  t3847 = 0. + t3842;
  t4261 = -4.e-6*t4255;
  t4331 = 0. + t4261;
  t4543 = 4.e-6*t3817;
  t4547 = 0. + t4543;
  t5784 = 0. + t4077;
  t6069 = Cos(var1[10]);
  t6088 = -1.*t6069;
  t6111 = 1. + t6088;
  t4980 = t4547*t4972;
  t5009 = -1.6e-11*t3817;
  t5011 = 1. + t5009;
  t5031 = t5011*t3763;
  t5134 = t5103*t4090;
  t5140 = t4980 + t5031 + t5134;
  t5985 = 0. + t4464;
  t5536 = -1.000000000016*t3817;
  t5562 = 1. + t5536;
  t5568 = t5562*t5103;
  t5591 = t4972*t5197;
  t5606 = t3763*t5213;
  t5689 = t5568 + t5591 + t5606;
  t6013 = -1.*t3817;
  t6014 = 1. + t6013;
  t6021 = t6014*t4972;
  t6028 = t4547*t3763;
  t6043 = t5103*t5784;
  t6045 = t6021 + t6028 + t6043;
  t6112 = -4.e-6*t6111;
  t6118 = 0. + t6112;
  t6229 = Sin(var1[10]);
  t4472 = -4.e-6*t4464;
  t4485 = 0. + t4472;
  t6329 = 4.e-6*t4255;
  t6362 = 0. + t6329;
  t5510 = 4.e-6*t4464;
  t5520 = 0. + t5510;
  t5376 = -1.*t4464;
  t5491 = 0. + t5376;
  t6814 = Sin(var1[11]);
  t6572 = -1.*t6229;
  t6591 = 0. + t6572;
  t6371 = t6362*t5140;
  t6379 = t5985*t5689;
  t6394 = -1.*t4255;
  t6395 = 1. + t6394;
  t6399 = t6395*t6045;
  t6401 = t6371 + t6379 + t6399;
  t6615 = 4.e-6*t6229;
  t6621 = 0. + t6615;
  t6514 = -1.6e-11*t4255;
  t6521 = 1. + t6514;
  t6524 = t6521*t5140;
  t6536 = t4485*t5689;
  t6545 = t6362*t6045;
  t6546 = t6524 + t6536 + t6545;
  t6663 = t5520*t5140;
  t6664 = -1.000000000016*t4255;
  t6690 = 1. + t6664;
  t6704 = t6690*t5689;
  t6705 = t5491*t6045;
  t6735 = t6663 + t6704 + t6705;
  t6764 = Cos(var1[11]);
  t6771 = -1.*t6764;
  t6804 = 1. + t6771;
  t6458 = -4.e-6*t6229;
  t6482 = 0. + t6458;
  t6994 = -4.e-6*t6804;
  t6999 = 0. + t6994;
  t7052 = 4.e-6*t6111;
  t7063 = 0. + t7052;
  t6236 = 0. + t6229;
  t7309 = Cos(var1[12]);
  t7315 = -1.*t7309;
  t7335 = 1. + t7315;
  t7184 = 0. + t6814;
  t6865 = t6591*t6401;
  t6919 = t6621*t6546;
  t6940 = -1.000000000016*t6111;
  t6941 = 1. + t6940;
  t6946 = t6941*t6735;
  t6954 = t6865 + t6919 + t6946;
  t7080 = t7063*t6401;
  t7081 = -1.6e-11*t6111;
  t7084 = 1. + t7081;
  t7085 = t7084*t6546;
  t7088 = t6482*t6735;
  t7100 = t7080 + t7085 + t7088;
  t7201 = -1.*t6111;
  t7246 = 1. + t7201;
  t7247 = t7246*t6401;
  t7249 = t7063*t6546;
  t7268 = t6236*t6735;
  t7282 = t7247 + t7249 + t7268;
  t7363 = -4.e-6*t7335;
  t7368 = 0. + t7363;
  t7382 = Sin(var1[12]);
  t7016 = -4.e-6*t6814;
  t7035 = 0. + t7016;
  t7430 = 4.e-6*t6804;
  t7447 = 0. + t7430;
  t6827 = 4.e-6*t6814;
  t6834 = 0. + t6827;
  t6820 = -1.*t6814;
  t6825 = 0. + t6820;
  t7580 = -1.*t7382;
  t7629 = 0. + t7580;
  t7427 = t7184*t6954;
  t7480 = t7447*t7100;
  t7498 = -1.*t6804;
  t7500 = 1. + t7498;
  t7503 = t7500*t7282;
  t7510 = t7427 + t7480 + t7503;
  t7645 = 4.e-6*t7382;
  t7651 = 0. + t7645;
  t7549 = t7035*t6954;
  t7561 = -1.6e-11*t6804;
  t7563 = 1. + t7561;
  t7565 = t7563*t7100;
  t7568 = t7447*t7282;
  t7572 = t7549 + t7565 + t7568;
  t7675 = -1.000000000016*t6804;
  t7688 = 1. + t7675;
  t7689 = t7688*t6954;
  t7691 = t6834*t7100;
  t7698 = t6825*t7282;
  t7700 = t7689 + t7691 + t7698;
  t7529 = -4.e-6*t7382;
  t7542 = 0. + t7529;
  t7798 = 4.e-6*t7335;
  t7800 = 0. + t7798;
  t7384 = 0. + t7382;
  t549 = -1.84784e-12*var1[6];
  t625 = -0.04780500000076488*t614;
  t1052 = -0.13451000000399999*t722;
  t1072 = t549 + t625 + t1052;
  t1416 = 4.6196000000000004e-7*var1[6];
  t1427 = -1.912200000030595e-7*t614;
  t1470 = -0.13451000000399999*t1438;
  t1496 = t1416 + t1427 + t1470;
  t1819 = -0.13451000000615215*t614;
  t1963 = -1.9122e-7*t1937;
  t2005 = -0.047805*t1969;
  t2010 = 0. + t1819 + t1963 + t2005;
  t7902 = t20*t68*t25;
  t7904 = -1.*t9*t346;
  t7905 = t7902 + t7904;
  t7928 = t9*t20;
  t7929 = t68*t25*t346;
  t7934 = t7928 + t7929;
  t2282 = 6.086399999999989e-13*var1[7];
  t2594 = -0.062500000004*t2509;
  t2639 = -1.*t2620;
  t2722 = 0. + t2639;
  t2763 = -0.13451000000799998*t2722;
  t2849 = t2282 + t2594 + t2763;
  t3114 = 7.607999999999987e-8*var1[7];
  t3137 = 5.000000000319999e-7*t2509;
  t3273 = -0.13451000000799998*t3195;
  t3304 = t3114 + t3137 + t3273;
  t3511 = -0.13451000001660862*t2509;
  t3579 = 5.e-7*t3577;
  t3611 = -0.0625*t3585;
  t3616 = 0. + t3511 + t3579 + t3611;
  t8019 = t3329*t7934;
  t8020 = t1402*t68*t1937;
  t8023 = t7905*t1969;
  t8031 = t8019 + t8020 + t8023;
  t7976 = -4.e-6*t1402*t614*t68;
  t7980 = t2930*t7905;
  t7992 = t7934*t722;
  t8000 = t7976 + t7980 + t7992;
  t7945 = t1402*t2192*t68;
  t7950 = -4.e-6*t614*t7905;
  t7958 = t7934*t1438;
  t7972 = t7945 + t7950 + t7958;
  t3779 = 4.3677999999999997e-7*var1[8];
  t3964 = -0.0625*t3847;
  t3982 = 3.9999999999999995e-18*t3817;
  t4106 = -0.140805000004*t4090;
  t4134 = t3779 + t3964 + t3982 + t4106;
  t4220 = -4.3219999999999986e-8*var1[9];
  t4364 = -0.062501*t4331;
  t4433 = 4.000064e-18*t4255;
  t4517 = -0.26080500000400003*t4485;
  t4532 = t4220 + t4364 + t4433 + t4517;
  t8035 = t3661*t8031;
  t8036 = t8000*t3577;
  t8044 = t7972*t3585;
  t8046 = t8035 + t8036 + t8044;
  t8068 = t5062*t8000;
  t8069 = 8.e-6*t2509*t7972;
  t8074 = t8031*t3195;
  t8078 = t8068 + t8069 + t8074;
  t5186 = -0.1408050000062529*t3817;
  t5198 = -0.0625*t5197;
  t5240 = 2.5e-7*t5213;
  t5273 = 0. + t5186 + t5198 + t5240;
  t5348 = -0.2608050000081729*t4255;
  t5504 = -0.062501*t5491;
  t5524 = 2.50004e-7*t5520;
  t5535 = 0. + t5348 + t5504 + t5524;
  t8051 = 8.e-6*t2509*t8000;
  t8052 = t4700*t7972;
  t8055 = t8031*t4883;
  t8056 = t8051 + t8052 + t8055;
  t5698 = 1.7471199999999997e-12*var1[8];
  t5715 = 2.5e-7*t3847;
  t5761 = -0.0625*t3817;
  t5797 = -0.140805000004*t5784;
  t5810 = t5698 + t5715 + t5761 + t5797;
  t5829 = -1.7287999999999994e-13*var1[9];
  t5915 = 2.50004e-7*t4331;
  t5966 = -0.062501*t4255;
  t5986 = -0.26080500000400003*t5985;
  t5998 = t5829 + t5915 + t5966 + t5986;
  t6055 = -1.142576e-12*var1[10];
  t6187 = 6.0084e-8*t6118;
  t6192 = -0.015021*t6111;
  t6278 = -0.321411000004*t6236;
  t6299 = t6055 + t6187 + t6192 + t6278;
  t8062 = t4547*t8056;
  t8064 = t5011*t8046;
  t8082 = t8078*t4090;
  t8083 = t8062 + t8064 + t8082;
  t8093 = t5562*t8078;
  t8099 = t8056*t5197;
  t8102 = t8046*t5213;
  t8105 = t8093 + t8099 + t8102;
  t8113 = t6014*t8056;
  t8119 = t4547*t8046;
  t8136 = t8078*t5784;
  t8138 = t8113 + t8119 + t8136;
  t6425 = -2.85644e-7*var1[10];
  t6427 = -0.015021*t6118;
  t6436 = 9.61344e-19*t6111;
  t6503 = -0.321411000004*t6482;
  t6511 = t6425 + t6427 + t6436 + t6503;
  t6566 = -0.32141100000914263*t6111;
  t6604 = -0.015021*t6591;
  t6629 = 6.0084e-8*t6621;
  t6636 = 0. + t6566 + t6604 + t6629;
  t6809 = -0.7561810000240989*t6804;
  t6826 = 0.005553*t6825;
  t6852 = -2.2211999999999997e-8*t6834;
  t6857 = 0. + t6809 + t6826 + t6852;
  t8141 = t6362*t8083;
  t8144 = t5985*t8105;
  t8148 = t6395*t8138;
  t8149 = t8141 + t8144 + t8148;
  t8151 = t6521*t8083;
  t8152 = t4485*t8105;
  t8153 = t6362*t8138;
  t8159 = t8151 + t8152 + t8153;
  t8161 = t5520*t8083;
  t8162 = t6690*t8105;
  t8163 = t5491*t8138;
  t8165 = t8161 + t8162 + t8163;
  t6991 = -2.4723999999999765e-8*var1[11];
  t7014 = 0.005553*t6999;
  t7015 = -3.5539199999999996e-19*t6804;
  t7040 = -0.756181000012*t7035;
  t7043 = t6991 + t7014 + t7015 + t7040;
  t7163 = -9.889599999999905e-14*var1[11];
  t7179 = -2.2211999999999997e-8*t6999;
  t7180 = 0.005553*t6804;
  t7188 = -0.756181000012*t7184;
  t7189 = t7163 + t7179 + t7180 + t7188;
  t7307 = 1.3883040000000026e-12*var1[12];
  t7372 = 1.35636e-7*t7368;
  t7379 = -0.033909*t7335;
  t7392 = -1.16323100002*t7384;
  t7402 = t7307 + t7372 + t7379 + t7392;
  t8170 = t6591*t8149;
  t8176 = t6621*t8159;
  t8177 = t6941*t8165;
  t8178 = t8170 + t8176 + t8177;
  t8182 = t7063*t8149;
  t8184 = t7084*t8159;
  t8187 = t6482*t8165;
  t8196 = t8182 + t8184 + t8187;
  t8206 = t7246*t8149;
  t8210 = t7063*t8159;
  t8214 = t6236*t8165;
  t8218 = t8206 + t8210 + t8214;
  t7518 = 3.4707600000000064e-7*var1[12];
  t7520 = -0.033909*t7368;
  t7521 = 2.170176e-18*t7335;
  t7545 = -1.16323100002*t7542;
  t7546 = t7518 + t7520 + t7521 + t7545;
  t7578 = -1.1632310000386117*t7335;
  t7630 = -0.033909*t7629;
  t7663 = 1.35636e-7*t7651;
  t7668 = 0. + t7578 + t7630 + t7663;
  t8221 = t7184*t8178;
  t8227 = t7447*t8196;
  t8230 = t7500*t8218;
  t8231 = t8221 + t8227 + t8230;
  t8234 = t7035*t8178;
  t8236 = t7563*t8196;
  t8239 = t7447*t8218;
  t8240 = t8234 + t8236 + t8239;
  t7725 = -1.000000000016*t7335;
  t7729 = 1. + t7725;
  t8245 = t7688*t8178;
  t8246 = t6834*t8196;
  t8249 = t6825*t8218;
  t8250 = t8245 + t8246 + t8249;
  t7810 = -1.6e-11*t7335;
  t7819 = 1. + t7810;
  t7853 = -1.*t7335;
  t7855 = 1. + t7853;
  t8337 = t1402*t3329*t346;
  t8338 = -1.*t25*t1937;
  t8340 = t1402*t20*t1969;
  t8341 = t8337 + t8338 + t8340;
  t8327 = t1402*t20*t2930;
  t8328 = 4.e-6*t614*t25;
  t8333 = t1402*t346*t722;
  t8335 = t8327 + t8328 + t8333;
  t8311 = -4.e-6*t1402*t20*t614;
  t8314 = -1.*t2192*t25;
  t8320 = t1402*t346*t1438;
  t8323 = t8311 + t8314 + t8320;
  t8347 = t3661*t8341;
  t8351 = t8335*t3577;
  t8353 = t8323*t3585;
  t8354 = t8347 + t8351 + t8353;
  t8374 = t5062*t8335;
  t8377 = 8.e-6*t2509*t8323;
  t8378 = t8341*t3195;
  t8380 = t8374 + t8377 + t8378;
  t8358 = 8.e-6*t2509*t8335;
  t8359 = t4700*t8323;
  t8361 = t8341*t4883;
  t8367 = t8358 + t8359 + t8361;
  t8370 = t4547*t8367;
  t8373 = t5011*t8354;
  t8386 = t8380*t4090;
  t8387 = t8370 + t8373 + t8386;
  t8399 = t5562*t8380;
  t8400 = t8367*t5197;
  t8401 = t8354*t5213;
  t8402 = t8399 + t8400 + t8401;
  t8406 = t6014*t8367;
  t8417 = t4547*t8354;
  t8418 = t8380*t5784;
  t8419 = t8406 + t8417 + t8418;
  t8427 = t6362*t8387;
  t8429 = t5985*t8402;
  t8433 = t6395*t8419;
  t8436 = t8427 + t8429 + t8433;
  t8440 = t6521*t8387;
  t8443 = t4485*t8402;
  t8444 = t6362*t8419;
  t8445 = t8440 + t8443 + t8444;
  t8458 = t5520*t8387;
  t8459 = t6690*t8402;
  t8462 = t5491*t8419;
  t8465 = t8458 + t8459 + t8462;
  t8467 = t6591*t8436;
  t8468 = t6621*t8445;
  t8475 = t6941*t8465;
  t8476 = t8467 + t8468 + t8475;
  t8478 = t7063*t8436;
  t8479 = t7084*t8445;
  t8480 = t6482*t8465;
  t8481 = t8478 + t8479 + t8480;
  t8487 = t7246*t8436;
  t8488 = t7063*t8445;
  t8489 = t6236*t8465;
  t8492 = t8487 + t8488 + t8489;
  t8494 = t7184*t8476;
  t8498 = t7447*t8481;
  t8499 = t7500*t8492;
  t8500 = t8494 + t8498 + t8499;
  t8509 = t7035*t8476;
  t8513 = t7563*t8481;
  t8514 = t7447*t8492;
  t8516 = t8509 + t8513 + t8514;
  t8520 = t7688*t8476;
  t8523 = t6834*t8481;
  t8525 = t6825*t8492;
  t8526 = t8520 + t8523 + t8525;
  p_output1[0]=t1799*t2010 + t2266*t2849 + t3086*t3304 + t3483*t3616 + t3763*t4134 + t4532*t5140 + t5103*t5273 + t1072*t529 + t5535*t5689 + t4972*t5810 + t5998*t6045 + t6299*t6401 + t6511*t6546 + t6636*t6735 + t6857*t6954 + t7043*t7100 + t7189*t7282 + t7402*t7510 + t7546*t7572 + t7668*t7700 - 1.220321*(t7510*t7629 + t7572*t7651 + t7700*t7729) - 0.137312*(t7542*t7700 + t7510*t7800 + t7572*t7819) + 0.07509*(t7384*t7700 + t7572*t7800 + t7510*t7855) + t1402*t1496*t9 + var1[0];
  p_output1[1]=t1402*t1496*t68 + t1072*t7905 + t2010*t7934 + t2849*t7972 + t3304*t8000 + t3616*t8031 + t4134*t8046 + t5810*t8056 + t5273*t8078 + t4532*t8083 + t5535*t8105 + t5998*t8138 + t6299*t8149 + t6511*t8159 + t6636*t8165 + t6857*t8178 + t7043*t8196 + t7189*t8218 + t7402*t8231 + t7546*t8240 + t7668*t8250 + 0.07509*(t7855*t8231 + t7800*t8240 + t7384*t8250) - 0.137312*(t7800*t8231 + t7819*t8240 + t7542*t8250) - 1.220321*(t7629*t8231 + t7651*t8240 + t7729*t8250) + var1[1];
  p_output1[2]=t1072*t1402*t20 - 1.*t1496*t25 + t1402*t2010*t346 + t2849*t8323 + t3304*t8335 + t3616*t8341 + t4134*t8354 + t5810*t8367 + t5273*t8380 + t4532*t8387 + t5535*t8402 + t5998*t8419 + t6299*t8436 + t6511*t8445 + t6636*t8465 + t6857*t8476 + t7043*t8481 + t7189*t8492 + t7402*t8500 + t7546*t8516 + t7668*t8526 + 0.07509*(t7855*t8500 + t7800*t8516 + t7384*t8526) - 0.137312*(t7800*t8500 + t7819*t8516 + t7542*t8526) - 1.220321*(t7629*t8500 + t7651*t8516 + t7729*t8526) + var1[2];
}



void p_RightToeFront_src(double *p_output1, const double *var1)
{
  /* Call Subroutines */
  output1(p_output1, var1);

}
