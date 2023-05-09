/*
 * Automatically Generated from Mathematica.
 * Thu 26 Mar 2020 17:48:58 GMT+08:00
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
  double t191;
  double t874;
  double t1012;
  double t1160;
  double t1280;
  double t220;
  double t333;
  double t316;
  double t349;
  double t2017;
  double t322;
  double t353;
  double t719;
  double t2533;
  double t2570;
  double t2581;
  double t2319;
  double t2320;
  double t1357;
  double t1481;
  double t3240;
  double t3261;
  double t3313;
  double t3350;
  double t2801;
  double t2807;
  double t2869;
  double t3832;
  double t3855;
  double t3875;
  double t3990;
  double t3999;
  double t4006;
  double t3533;
  double t3570;
  double t3579;
  double t3585;
  double t3587;
  double t3594;
  double t4041;
  double t4056;
  double t2973;
  double t3048;
  double t3122;
  double t3163;
  double t3185;
  double t3231;
  double t4068;
  double t4386;
  double t4405;
  double t4415;
  double t4833;
  double t4837;
  double t4840;
  double t4179;
  double t4216;
  double t4260;
  double t4285;
  double t4344;
  double t4364;
  double t3677;
  double t3742;
  double t4581;
  double t4582;
  double t4604;
  double t5561;
  double t5563;
  double t5588;
  double t5606;
  double t5612;
  double t5623;
  double t4905;
  double t5105;
  double t5113;
  double t5117;
  double t5140;
  double t5207;
  double t5269;
  double t5342;
  double t5344;
  double t5718;
  double t5721;
  double t5753;
  double t5760;
  double t4482;
  double t4546;
  double t4848;
  double t4849;
  double t5075;
  double t5084;
  double t6124;
  double t6399;
  double t6443;
  double t6455;
  double t5366;
  double t5410;
  double t5428;
  double t5465;
  double t5629;
  double t5650;
  double t6219;
  double t6004;
  double t6011;
  double t6016;
  double t6039;
  double t6040;
  double t6046;
  double t6282;
  double t6308;
  double t6322;
  double t6323;
  double t6328;
  double t6370;
  double t6463;
  double t6465;
  double t6483;
  double t4925;
  double t4950;
  double t6562;
  double t6566;
  double t5932;
  double t5934;
  double t5912;
  double t5915;
  double t7009;
  double t6829;
  double t6844;
  double t6568;
  double t6570;
  double t6621;
  double t6641;
  double t6654;
  double t6655;
  double t6857;
  double t6891;
  double t6731;
  double t6737;
  double t6742;
  double t6749;
  double t6803;
  double t6815;
  double t6898;
  double t6902;
  double t6923;
  double t6926;
  double t6927;
  double t6928;
  double t6946;
  double t6998;
  double t6999;
  double t6677;
  double t6681;
  double t7109;
  double t7117;
  double t7184;
  double t7188;
  double t6489;
  double t7416;
  double t7418;
  double t7420;
  double t7323;
  double t7067;
  double t7069;
  double t7071;
  double t7079;
  double t7080;
  double t7085;
  double t7198;
  double t7222;
  double t7249;
  double t7254;
  double t7263;
  double t7267;
  double t7355;
  double t7356;
  double t7358;
  double t7362;
  double t7380;
  double t7384;
  double t7434;
  double t7438;
  double t7460;
  double t7154;
  double t7159;
  double t7480;
  double t7486;
  double t7020;
  double t7032;
  double t7012;
  double t7015;
  double t7638;
  double t7642;
  double t7475;
  double t7487;
  double t7496;
  double t7501;
  double t7503;
  double t7515;
  double t7657;
  double t7662;
  double t7557;
  double t7578;
  double t7587;
  double t7592;
  double t7596;
  double t7604;
  double t7666;
  double t7668;
  double t7673;
  double t7679;
  double t7681;
  double t7685;
  double t7545;
  double t7546;
  double t7713;
  double t7716;
  double t7467;
  double t755;
  double t1212;
  double t1509;
  double t1695;
  double t2109;
  double t2288;
  double t2348;
  double t2397;
  double t2730;
  double t2843;
  double t2877;
  double t2883;
  double t7835;
  double t7852;
  double t7857;
  double t7869;
  double t7905;
  double t7908;
  double t3232;
  double t3346;
  double t3365;
  double t3375;
  double t3444;
  double t3456;
  double t3602;
  double t3614;
  double t3763;
  double t3807;
  double t4010;
  double t4066;
  double t4123;
  double t4146;
  double t7976;
  double t7985;
  double t7988;
  double t7994;
  double t7950;
  double t7961;
  double t7966;
  double t7971;
  double t7919;
  double t7921;
  double t7928;
  double t7942;
  double t4373;
  double t4557;
  double t4571;
  double t4613;
  double t4618;
  double t4830;
  double t4853;
  double t4878;
  double t4951;
  double t4954;
  double t8002;
  double t8015;
  double t8017;
  double t8019;
  double t8044;
  double t8046;
  double t8047;
  double t8051;
  double t5713;
  double t5750;
  double t5783;
  double t5785;
  double t5893;
  double t5916;
  double t5944;
  double t5964;
  double t8030;
  double t8031;
  double t8033;
  double t8036;
  double t6072;
  double t6080;
  double t6112;
  double t6133;
  double t6148;
  double t6178;
  double t6183;
  double t6200;
  double t6220;
  double t6269;
  double t6398;
  double t6473;
  double t6481;
  double t6513;
  double t6544;
  double t8039;
  double t8041;
  double t8052;
  double t8055;
  double t8069;
  double t8074;
  double t8075;
  double t8082;
  double t8090;
  double t8091;
  double t8093;
  double t8099;
  double t6663;
  double t6671;
  double t6673;
  double t6694;
  double t6719;
  double t6826;
  double t6855;
  double t6892;
  double t6894;
  double t7003;
  double t7017;
  double t7043;
  double t7044;
  double t8105;
  double t8106;
  double t8109;
  double t8111;
  double t8119;
  double t8125;
  double t8134;
  double t8135;
  double t8138;
  double t8141;
  double t8144;
  double t8145;
  double t7097;
  double t7131;
  double t7134;
  double t7179;
  double t7180;
  double t7283;
  double t7286;
  double t7288;
  double t7327;
  double t7344;
  double t7395;
  double t7450;
  double t7457;
  double t7468;
  double t7474;
  double t8149;
  double t8151;
  double t8152;
  double t8153;
  double t8161;
  double t8162;
  double t8163;
  double t8165;
  double t8168;
  double t8169;
  double t8170;
  double t8172;
  double t7525;
  double t7529;
  double t7538;
  double t7549;
  double t7554;
  double t7629;
  double t7649;
  double t7663;
  double t7664;
  double t8177;
  double t8178;
  double t8180;
  double t8182;
  double t8187;
  double t8195;
  double t8196;
  double t8203;
  double t7698;
  double t7699;
  double t8206;
  double t8210;
  double t8212;
  double t8213;
  double t7733;
  double t7744;
  double t7802;
  double t7805;
  double t8296;
  double t8300;
  double t8305;
  double t8306;
  double t8278;
  double t8279;
  double t8285;
  double t8290;
  double t8257;
  double t8259;
  double t8263;
  double t8268;
  double t8311;
  double t8320;
  double t8323;
  double t8325;
  double t8341;
  double t8347;
  double t8351;
  double t8353;
  double t8328;
  double t8333;
  double t8335;
  double t8337;
  double t8339;
  double t8340;
  double t8354;
  double t8355;
  double t8365;
  double t8367;
  double t8368;
  double t8369;
  double t8377;
  double t8378;
  double t8380;
  double t8385;
  double t8388;
  double t8389;
  double t8390;
  double t8395;
  double t8399;
  double t8400;
  double t8401;
  double t8402;
  double t8406;
  double t8408;
  double t8409;
  double t8417;
  double t8419;
  double t8422;
  double t8425;
  double t8427;
  double t8433;
  double t8436;
  double t8439;
  double t8440;
  double t8444;
  double t8445;
  double t8455;
  double t8457;
  double t8459;
  double t8462;
  double t8465;
  double t8466;
  double t8468;
  double t8470;
  double t8475;
  double t8476;
  double t8478;
  double t8479;
  double t8480;
  double t8481;
  t191 = Cos(var1[3]);
  t874 = Cos(var1[6]);
  t1012 = -1.*t874;
  t1160 = 1. + t1012;
  t1280 = Sin(var1[6]);
  t220 = Cos(var1[5]);
  t333 = Sin(var1[3]);
  t316 = Sin(var1[4]);
  t349 = Sin(var1[5]);
  t2017 = Cos(var1[4]);
  t322 = t191*t220*t316;
  t353 = t333*t349;
  t719 = t322 + t353;
  t2533 = -1.*t220*t333;
  t2570 = t191*t316*t349;
  t2581 = t2533 + t2570;
  t2319 = -4.e-6*t1280;
  t2320 = 0. + t2319;
  t1357 = -1.*t1280;
  t1481 = 0. + t1357;
  t3240 = Cos(var1[7]);
  t3261 = -1.*t3240;
  t3313 = 1. + t3261;
  t3350 = Sin(var1[7]);
  t2801 = 4.e-6*t1280;
  t2807 = 0. + t2801;
  t2869 = 0. + t1280;
  t3832 = -1.000000000016*t1160;
  t3855 = 1. + t3832;
  t3875 = t3855*t2581;
  t3990 = t191*t2017*t2807;
  t3999 = t719*t2869;
  t4006 = t3875 + t3990 + t3999;
  t3533 = -4.e-6*t191*t2017*t1160;
  t3570 = -1.*t1160;
  t3579 = 1. + t3570;
  t3585 = t3579*t719;
  t3587 = t2581*t1481;
  t3594 = t3533 + t3585 + t3587;
  t4041 = -8.e-6*t3350;
  t4056 = 0. + t4041;
  t2973 = -1.6e-11*t1160;
  t3048 = 1. + t2973;
  t3122 = t191*t2017*t3048;
  t3163 = -4.e-6*t1160*t719;
  t3185 = t2581*t2320;
  t3231 = t3122 + t3163 + t3185;
  t4068 = 0. + t3350;
  t4386 = Cos(var1[8]);
  t4405 = -1.*t4386;
  t4415 = 1. + t4405;
  t4833 = Cos(var1[9]);
  t4837 = -1.*t4833;
  t4840 = 1. + t4837;
  t4179 = -1.000000000064*t3313;
  t4216 = 1. + t4179;
  t4260 = t4216*t4006;
  t4285 = t3594*t4056;
  t4344 = t3231*t4068;
  t4364 = t4260 + t4285 + t4344;
  t3677 = 8.e-6*t3350;
  t3742 = 0. + t3677;
  t4581 = Sin(var1[8]);
  t4582 = -4.e-6*t4581;
  t4604 = 0. + t4582;
  t5561 = -6.4e-11*t3313;
  t5563 = 1. + t5561;
  t5588 = t5563*t3594;
  t5606 = 8.e-6*t3313*t3231;
  t5612 = t4006*t3742;
  t5623 = t5588 + t5606 + t5612;
  t4905 = Sin(var1[9]);
  t5105 = 8.e-6*t3313*t3594;
  t5113 = -1.*t3313;
  t5117 = 1. + t5113;
  t5140 = t5117*t3231;
  t5207 = -1.*t3350;
  t5269 = 0. + t5207;
  t5342 = t4006*t5269;
  t5344 = t5105 + t5140 + t5342;
  t5718 = -1.*t4581;
  t5721 = 0. + t5718;
  t5753 = 4.e-6*t4581;
  t5760 = 0. + t5753;
  t4482 = -4.e-6*t4415;
  t4546 = 0. + t4482;
  t4848 = -4.e-6*t4840;
  t4849 = 0. + t4848;
  t5075 = 4.e-6*t4415;
  t5084 = 0. + t5075;
  t6124 = 0. + t4581;
  t6399 = Cos(var1[10]);
  t6443 = -1.*t6399;
  t6455 = 1. + t6443;
  t5366 = t5084*t5344;
  t5410 = -1.6e-11*t4415;
  t5428 = 1. + t5410;
  t5465 = t5428*t4364;
  t5629 = t5623*t4604;
  t5650 = t5366 + t5465 + t5629;
  t6219 = 0. + t4905;
  t6004 = -1.000000000016*t4415;
  t6011 = 1. + t6004;
  t6016 = t6011*t5623;
  t6039 = t5344*t5721;
  t6040 = t4364*t5760;
  t6046 = t6016 + t6039 + t6040;
  t6282 = -1.*t4415;
  t6308 = 1. + t6282;
  t6322 = t6308*t5344;
  t6323 = t5084*t4364;
  t6328 = t5623*t6124;
  t6370 = t6322 + t6323 + t6328;
  t6463 = -4.e-6*t6455;
  t6465 = 0. + t6463;
  t6483 = Sin(var1[10]);
  t4925 = -4.e-6*t4905;
  t4950 = 0. + t4925;
  t6562 = 4.e-6*t4840;
  t6566 = 0. + t6562;
  t5932 = 4.e-6*t4905;
  t5934 = 0. + t5932;
  t5912 = -1.*t4905;
  t5915 = 0. + t5912;
  t7009 = Sin(var1[11]);
  t6829 = -1.*t6483;
  t6844 = 0. + t6829;
  t6568 = t6566*t5650;
  t6570 = t6219*t6046;
  t6621 = -1.*t4840;
  t6641 = 1. + t6621;
  t6654 = t6641*t6370;
  t6655 = t6568 + t6570 + t6654;
  t6857 = 4.e-6*t6483;
  t6891 = 0. + t6857;
  t6731 = -1.6e-11*t4840;
  t6737 = 1. + t6731;
  t6742 = t6737*t5650;
  t6749 = t4950*t6046;
  t6803 = t6566*t6370;
  t6815 = t6742 + t6749 + t6803;
  t6898 = t5934*t5650;
  t6902 = -1.000000000016*t4840;
  t6923 = 1. + t6902;
  t6926 = t6923*t6046;
  t6927 = t5915*t6370;
  t6928 = t6898 + t6926 + t6927;
  t6946 = Cos(var1[11]);
  t6998 = -1.*t6946;
  t6999 = 1. + t6998;
  t6677 = -4.e-6*t6483;
  t6681 = 0. + t6677;
  t7109 = -4.e-6*t6999;
  t7117 = 0. + t7109;
  t7184 = 4.e-6*t6455;
  t7188 = 0. + t7184;
  t6489 = 0. + t6483;
  t7416 = Cos(var1[12]);
  t7418 = -1.*t7416;
  t7420 = 1. + t7418;
  t7323 = 0. + t7009;
  t7067 = t6844*t6655;
  t7069 = t6891*t6815;
  t7071 = -1.000000000016*t6455;
  t7079 = 1. + t7071;
  t7080 = t7079*t6928;
  t7085 = t7067 + t7069 + t7080;
  t7198 = t7188*t6655;
  t7222 = -1.6e-11*t6455;
  t7249 = 1. + t7222;
  t7254 = t7249*t6815;
  t7263 = t6681*t6928;
  t7267 = t7198 + t7254 + t7263;
  t7355 = -1.*t6455;
  t7356 = 1. + t7355;
  t7358 = t7356*t6655;
  t7362 = t7188*t6815;
  t7380 = t6489*t6928;
  t7384 = t7358 + t7362 + t7380;
  t7434 = -4.e-6*t7420;
  t7438 = 0. + t7434;
  t7460 = Sin(var1[12]);
  t7154 = -4.e-6*t7009;
  t7159 = 0. + t7154;
  t7480 = 4.e-6*t6999;
  t7486 = 0. + t7480;
  t7020 = 4.e-6*t7009;
  t7032 = 0. + t7020;
  t7012 = -1.*t7009;
  t7015 = 0. + t7012;
  t7638 = -1.*t7460;
  t7642 = 0. + t7638;
  t7475 = t7323*t7085;
  t7487 = t7486*t7267;
  t7496 = -1.*t6999;
  t7501 = 1. + t7496;
  t7503 = t7501*t7384;
  t7515 = t7475 + t7487 + t7503;
  t7657 = 4.e-6*t7460;
  t7662 = 0. + t7657;
  t7557 = t7159*t7085;
  t7578 = -1.6e-11*t6999;
  t7587 = 1. + t7578;
  t7592 = t7587*t7267;
  t7596 = t7486*t7384;
  t7604 = t7557 + t7592 + t7596;
  t7666 = -1.000000000016*t6999;
  t7668 = 1. + t7666;
  t7673 = t7668*t7085;
  t7679 = t7032*t7267;
  t7681 = t7015*t7384;
  t7685 = t7673 + t7679 + t7681;
  t7545 = -4.e-6*t7460;
  t7546 = 0. + t7545;
  t7713 = 4.e-6*t7420;
  t7716 = 0. + t7713;
  t7467 = 0. + t7460;
  t755 = -1.84784e-12*var1[6];
  t1212 = -0.04780500000076488*t1160;
  t1509 = -0.13451000000399999*t1481;
  t1695 = t755 + t1212 + t1509;
  t2109 = 4.6196000000000004e-7*var1[6];
  t2288 = -1.912200000030595e-7*t1160;
  t2348 = -0.13451000000399999*t2320;
  t2397 = t2109 + t2288 + t2348;
  t2730 = -0.13451000000615215*t1160;
  t2843 = -1.9122e-7*t2807;
  t2877 = -0.047805*t2869;
  t2883 = 0. + t2730 + t2843 + t2877;
  t7835 = t220*t333*t316;
  t7852 = -1.*t191*t349;
  t7857 = t7835 + t7852;
  t7869 = t191*t220;
  t7905 = t333*t316*t349;
  t7908 = t7869 + t7905;
  t3232 = 6.086399999999989e-13*var1[7];
  t3346 = -0.062500000004*t3313;
  t3365 = -1.*t3350;
  t3375 = 0. + t3365;
  t3444 = -0.13451000000799998*t3375;
  t3456 = t3232 + t3346 + t3444;
  t3602 = 7.607999999999987e-8*var1[7];
  t3614 = 5.000000000319999e-7*t3313;
  t3763 = -0.13451000000799998*t3742;
  t3807 = t3602 + t3614 + t3763;
  t4010 = -0.13451000001660862*t3313;
  t4066 = 5.e-7*t4056;
  t4123 = -0.0625*t4068;
  t4146 = 0. + t4010 + t4066 + t4123;
  t7976 = t3855*t7908;
  t7985 = t2017*t333*t2807;
  t7988 = t7857*t2869;
  t7994 = t7976 + t7985 + t7988;
  t7950 = -4.e-6*t2017*t1160*t333;
  t7961 = t3579*t7857;
  t7966 = t7908*t1481;
  t7971 = t7950 + t7961 + t7966;
  t7919 = t2017*t3048*t333;
  t7921 = -4.e-6*t1160*t7857;
  t7928 = t7908*t2320;
  t7942 = t7919 + t7921 + t7928;
  t4373 = 4.3677999999999997e-7*var1[8];
  t4557 = -0.0625*t4546;
  t4571 = 3.9999999999999995e-18*t4415;
  t4613 = -0.140805000004*t4604;
  t4618 = t4373 + t4557 + t4571 + t4613;
  t4830 = -4.3219999999999986e-8*var1[9];
  t4853 = -0.062501*t4849;
  t4878 = 4.000064e-18*t4840;
  t4951 = -0.26080500000400003*t4950;
  t4954 = t4830 + t4853 + t4878 + t4951;
  t8002 = t4216*t7994;
  t8015 = t7971*t4056;
  t8017 = t7942*t4068;
  t8019 = t8002 + t8015 + t8017;
  t8044 = t5563*t7971;
  t8046 = 8.e-6*t3313*t7942;
  t8047 = t7994*t3742;
  t8051 = t8044 + t8046 + t8047;
  t5713 = -0.1408050000062529*t4415;
  t5750 = -0.0625*t5721;
  t5783 = 2.5e-7*t5760;
  t5785 = 0. + t5713 + t5750 + t5783;
  t5893 = -0.2608050000081729*t4840;
  t5916 = -0.062501*t5915;
  t5944 = 2.50004e-7*t5934;
  t5964 = 0. + t5893 + t5916 + t5944;
  t8030 = 8.e-6*t3313*t7971;
  t8031 = t5117*t7942;
  t8033 = t7994*t5269;
  t8036 = t8030 + t8031 + t8033;
  t6072 = 1.7471199999999997e-12*var1[8];
  t6080 = 2.5e-7*t4546;
  t6112 = -0.0625*t4415;
  t6133 = -0.140805000004*t6124;
  t6148 = t6072 + t6080 + t6112 + t6133;
  t6178 = -1.7287999999999994e-13*var1[9];
  t6183 = 2.50004e-7*t4849;
  t6200 = -0.062501*t4840;
  t6220 = -0.26080500000400003*t6219;
  t6269 = t6178 + t6183 + t6200 + t6220;
  t6398 = -1.142576e-12*var1[10];
  t6473 = 6.0084e-8*t6465;
  t6481 = -0.015021*t6455;
  t6513 = -0.321411000004*t6489;
  t6544 = t6398 + t6473 + t6481 + t6513;
  t8039 = t5084*t8036;
  t8041 = t5428*t8019;
  t8052 = t8051*t4604;
  t8055 = t8039 + t8041 + t8052;
  t8069 = t6011*t8051;
  t8074 = t8036*t5721;
  t8075 = t8019*t5760;
  t8082 = t8069 + t8074 + t8075;
  t8090 = t6308*t8036;
  t8091 = t5084*t8019;
  t8093 = t8051*t6124;
  t8099 = t8090 + t8091 + t8093;
  t6663 = -2.85644e-7*var1[10];
  t6671 = -0.015021*t6465;
  t6673 = 9.61344e-19*t6455;
  t6694 = -0.321411000004*t6681;
  t6719 = t6663 + t6671 + t6673 + t6694;
  t6826 = -0.32141100000914263*t6455;
  t6855 = -0.015021*t6844;
  t6892 = 6.0084e-8*t6891;
  t6894 = 0. + t6826 + t6855 + t6892;
  t7003 = -0.7561810000240989*t6999;
  t7017 = 0.005553*t7015;
  t7043 = -2.2211999999999997e-8*t7032;
  t7044 = 0. + t7003 + t7017 + t7043;
  t8105 = t6566*t8055;
  t8106 = t6219*t8082;
  t8109 = t6641*t8099;
  t8111 = t8105 + t8106 + t8109;
  t8119 = t6737*t8055;
  t8125 = t4950*t8082;
  t8134 = t6566*t8099;
  t8135 = t8119 + t8125 + t8134;
  t8138 = t5934*t8055;
  t8141 = t6923*t8082;
  t8144 = t5915*t8099;
  t8145 = t8138 + t8141 + t8144;
  t7097 = -2.4723999999999765e-8*var1[11];
  t7131 = 0.005553*t7117;
  t7134 = -3.5539199999999996e-19*t6999;
  t7179 = -0.756181000012*t7159;
  t7180 = t7097 + t7131 + t7134 + t7179;
  t7283 = -9.889599999999905e-14*var1[11];
  t7286 = -2.2211999999999997e-8*t7117;
  t7288 = 0.005553*t6999;
  t7327 = -0.756181000012*t7323;
  t7344 = t7283 + t7286 + t7288 + t7327;
  t7395 = 1.3883040000000026e-12*var1[12];
  t7450 = 1.35636e-7*t7438;
  t7457 = -0.033909*t7420;
  t7468 = -1.16323100002*t7467;
  t7474 = t7395 + t7450 + t7457 + t7468;
  t8149 = t6844*t8111;
  t8151 = t6891*t8135;
  t8152 = t7079*t8145;
  t8153 = t8149 + t8151 + t8152;
  t8161 = t7188*t8111;
  t8162 = t7249*t8135;
  t8163 = t6681*t8145;
  t8165 = t8161 + t8162 + t8163;
  t8168 = t7356*t8111;
  t8169 = t7188*t8135;
  t8170 = t6489*t8145;
  t8172 = t8168 + t8169 + t8170;
  t7525 = 3.4707600000000064e-7*var1[12];
  t7529 = -0.033909*t7438;
  t7538 = 2.170176e-18*t7420;
  t7549 = -1.16323100002*t7546;
  t7554 = t7525 + t7529 + t7538 + t7549;
  t7629 = -1.1632310000386117*t7420;
  t7649 = -0.033909*t7642;
  t7663 = 1.35636e-7*t7662;
  t7664 = 0. + t7629 + t7649 + t7663;
  t8177 = t7323*t8153;
  t8178 = t7486*t8165;
  t8180 = t7501*t8172;
  t8182 = t8177 + t8178 + t8180;
  t8187 = t7159*t8153;
  t8195 = t7587*t8165;
  t8196 = t7486*t8172;
  t8203 = t8187 + t8195 + t8196;
  t7698 = -1.000000000016*t7420;
  t7699 = 1. + t7698;
  t8206 = t7668*t8153;
  t8210 = t7032*t8165;
  t8212 = t7015*t8172;
  t8213 = t8206 + t8210 + t8212;
  t7733 = -1.6e-11*t7420;
  t7744 = 1. + t7733;
  t7802 = -1.*t7420;
  t7805 = 1. + t7802;
  t8296 = t2017*t3855*t349;
  t8300 = -1.*t316*t2807;
  t8305 = t2017*t220*t2869;
  t8306 = t8296 + t8300 + t8305;
  t8278 = t2017*t220*t3579;
  t8279 = 4.e-6*t1160*t316;
  t8285 = t2017*t349*t1481;
  t8290 = t8278 + t8279 + t8285;
  t8257 = -4.e-6*t2017*t220*t1160;
  t8259 = -1.*t3048*t316;
  t8263 = t2017*t349*t2320;
  t8268 = t8257 + t8259 + t8263;
  t8311 = t4216*t8306;
  t8320 = t8290*t4056;
  t8323 = t8268*t4068;
  t8325 = t8311 + t8320 + t8323;
  t8341 = t5563*t8290;
  t8347 = 8.e-6*t3313*t8268;
  t8351 = t8306*t3742;
  t8353 = t8341 + t8347 + t8351;
  t8328 = 8.e-6*t3313*t8290;
  t8333 = t5117*t8268;
  t8335 = t8306*t5269;
  t8337 = t8328 + t8333 + t8335;
  t8339 = t5084*t8337;
  t8340 = t5428*t8325;
  t8354 = t8353*t4604;
  t8355 = t8339 + t8340 + t8354;
  t8365 = t6011*t8353;
  t8367 = t8337*t5721;
  t8368 = t8325*t5760;
  t8369 = t8365 + t8367 + t8368;
  t8377 = t6308*t8337;
  t8378 = t5084*t8325;
  t8380 = t8353*t6124;
  t8385 = t8377 + t8378 + t8380;
  t8388 = t6566*t8355;
  t8389 = t6219*t8369;
  t8390 = t6641*t8385;
  t8395 = t8388 + t8389 + t8390;
  t8399 = t6737*t8355;
  t8400 = t4950*t8369;
  t8401 = t6566*t8385;
  t8402 = t8399 + t8400 + t8401;
  t8406 = t5934*t8355;
  t8408 = t6923*t8369;
  t8409 = t5915*t8385;
  t8417 = t8406 + t8408 + t8409;
  t8419 = t6844*t8395;
  t8422 = t6891*t8402;
  t8425 = t7079*t8417;
  t8427 = t8419 + t8422 + t8425;
  t8433 = t7188*t8395;
  t8436 = t7249*t8402;
  t8439 = t6681*t8417;
  t8440 = t8433 + t8436 + t8439;
  t8444 = t7356*t8395;
  t8445 = t7188*t8402;
  t8455 = t6489*t8417;
  t8457 = t8444 + t8445 + t8455;
  t8459 = t7323*t8427;
  t8462 = t7486*t8440;
  t8465 = t7501*t8457;
  t8466 = t8459 + t8462 + t8465;
  t8468 = t7159*t8427;
  t8470 = t7587*t8440;
  t8475 = t7486*t8457;
  t8476 = t8468 + t8470 + t8475;
  t8478 = t7668*t8427;
  t8479 = t7032*t8440;
  t8480 = t7015*t8457;
  t8481 = t8478 + t8479 + t8480;
  p_output1[0]=t191*t2017*t2397 + t2581*t2883 + t3231*t3456 + t3594*t3807 + t4006*t4146 + t4364*t4618 + t4954*t5650 + t5623*t5785 + t5964*t6046 + t5344*t6148 + t6269*t6370 + t6544*t6655 + t6719*t6815 + t6894*t6928 + t7044*t7085 + t1695*t719 + t7180*t7267 + t7344*t7384 + t7474*t7515 + t7554*t7604 + t7664*t7685 - 1.220321*(t7515*t7642 + t7604*t7662 + t7685*t7699) - 0.137311*(t7546*t7685 + t7515*t7716 + t7604*t7744) - 0.10391*(t7467*t7685 + t7604*t7716 + t7515*t7805) + var1[0];
  p_output1[1]=t2017*t2397*t333 + t1695*t7857 + t2883*t7908 + t3456*t7942 + t3807*t7971 + t4146*t7994 + t4618*t8019 + t6148*t8036 + t5785*t8051 + t4954*t8055 + t5964*t8082 + t6269*t8099 + t6544*t8111 + t6719*t8135 + t6894*t8145 + t7044*t8153 + t7180*t8165 + t7344*t8172 + t7474*t8182 + t7554*t8203 + t7664*t8213 - 0.10391*(t7805*t8182 + t7716*t8203 + t7467*t8213) - 0.137311*(t7716*t8182 + t7744*t8203 + t7546*t8213) - 1.220321*(t7642*t8182 + t7662*t8203 + t7699*t8213) + var1[1];
  p_output1[2]=t1695*t2017*t220 - 1.*t2397*t316 + t2017*t2883*t349 + t3456*t8268 + t3807*t8290 + t4146*t8306 + t4618*t8325 + t6148*t8337 + t5785*t8353 + t4954*t8355 + t5964*t8369 + t6269*t8385 + t6544*t8395 + t6719*t8402 + t6894*t8417 + t7044*t8427 + t7180*t8440 + t7344*t8457 + t7474*t8466 + t7554*t8476 + t7664*t8481 - 0.10391*(t7805*t8466 + t7716*t8476 + t7467*t8481) - 0.137311*(t7716*t8466 + t7744*t8476 + t7546*t8481) - 1.220321*(t7642*t8466 + t7662*t8476 + t7699*t8481) + var1[2];
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

#include "p_RightToeBack_mex.hh"

namespace SymExpression
{

void p_RightToeBack_mex_raw(double *p_output1, const double *var1)
{
  // Call Subroutines
  output1(p_output1, var1);

}

}

#endif // MATLAB_MEX_FILE
