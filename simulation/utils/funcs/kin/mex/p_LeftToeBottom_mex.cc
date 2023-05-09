/*
 * Automatically Generated from Mathematica.
 * Thu 26 Mar 2020 17:48:20 GMT+08:00
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
  double t255;
  double t263;
  double t499;
  double t661;
  double t17;
  double t1384;
  double t1562;
  double t1433;
  double t1603;
  double t2651;
  double t99;
  double t1919;
  double t1941;
  double t2096;
  double t1530;
  double t1616;
  double t1699;
  double t2141;
  double t2201;
  double t2416;
  double t2571;
  double t2599;
  double t2621;
  double t1261;
  double t1265;
  double t733;
  double t849;
  double t4023;
  double t4039;
  double t4147;
  double t2935;
  double t2948;
  double t2970;
  double t3041;
  double t3063;
  double t3143;
  double t3364;
  double t3365;
  double t3459;
  double t3528;
  double t3564;
  double t3582;
  double t3722;
  double t3725;
  double t3752;
  double t3861;
  double t3933;
  double t3998;
  double t4183;
  double t3245;
  double t3249;
  double t4152;
  double t4180;
  double t2658;
  double t2683;
  double t2876;
  double t5601;
  double t5710;
  double t5774;
  double t4513;
  double t4534;
  double t4554;
  double t4599;
  double t4623;
  double t4638;
  double t4647;
  double t4655;
  double t5337;
  double t5371;
  double t5071;
  double t5139;
  double t5156;
  double t5161;
  double t5184;
  double t5190;
  double t5425;
  double t5464;
  double t5467;
  double t5508;
  double t5528;
  double t5536;
  double t5787;
  double t5792;
  double t5817;
  double t4201;
  double t5907;
  double t5918;
  double t4772;
  double t4791;
  double t4866;
  double t4882;
  double t6617;
  double t6419;
  double t6431;
  double t5923;
  double t5961;
  double t5971;
  double t5978;
  double t5979;
  double t5983;
  double t6383;
  double t6406;
  double t6231;
  double t6232;
  double t6235;
  double t6245;
  double t6356;
  double t6368;
  double t6493;
  double t6501;
  double t6518;
  double t6545;
  double t6547;
  double t6559;
  double t6606;
  double t6609;
  double t6611;
  double t5818;
  double t5824;
  double t6756;
  double t6758;
  double t6841;
  double t6848;
  double t6198;
  double t6978;
  double t7002;
  double t7007;
  double t6896;
  double t6679;
  double t6683;
  double t6685;
  double t6710;
  double t6738;
  double t6739;
  double t6826;
  double t6827;
  double t6835;
  double t6859;
  double t6863;
  double t6866;
  double t6920;
  double t6934;
  double t6947;
  double t6952;
  double t6955;
  double t6956;
  double t7009;
  double t7017;
  double t7028;
  double t6787;
  double t6813;
  double t7047;
  double t7048;
  double t6651;
  double t6653;
  double t6621;
  double t6625;
  double t7404;
  double t7267;
  double t7272;
  double t7046;
  double t7067;
  double t7073;
  double t7076;
  double t7079;
  double t7089;
  double t7304;
  double t7305;
  double t7167;
  double t7173;
  double t7179;
  double t7191;
  double t7192;
  double t7214;
  double t7323;
  double t7331;
  double t7337;
  double t7353;
  double t7367;
  double t7370;
  double t7378;
  double t7398;
  double t7399;
  double t7132;
  double t7149;
  double t7559;
  double t7571;
  double t7647;
  double t7648;
  double t7033;
  double t7752;
  double t7465;
  double t7473;
  double t7506;
  double t7512;
  double t7526;
  double t7528;
  double t7652;
  double t7660;
  double t7683;
  double t7694;
  double t7695;
  double t7699;
  double t7775;
  double t7805;
  double t7818;
  double t7852;
  double t7853;
  double t7866;
  double t7611;
  double t7614;
  double t7899;
  double t7900;
  double t7441;
  double t7453;
  double t7433;
  double t7434;
  double t117;
  double t507;
  double t937;
  double t1099;
  double t1163;
  double t1221;
  double t1314;
  double t1323;
  double t1855;
  double t2002;
  double t2101;
  double t2120;
  double t2642;
  double t2748;
  double t2892;
  double t2912;
  double t8084;
  double t8093;
  double t8094;
  double t8160;
  double t8175;
  double t8181;
  double t3185;
  double t3226;
  double t3251;
  double t3354;
  double t3602;
  double t3605;
  double t3622;
  double t3637;
  double t3686;
  double t3690;
  double t4022;
  double t4181;
  double t4182;
  double t4248;
  double t4387;
  double t8215;
  double t8228;
  double t8239;
  double t8244;
  double t8259;
  double t8273;
  double t8287;
  double t8288;
  double t8320;
  double t8321;
  double t8334;
  double t8335;
  double t4666;
  double t4850;
  double t4963;
  double t4976;
  double t5220;
  double t5236;
  double t5284;
  double t5378;
  double t5418;
  double t5558;
  double t5807;
  double t5814;
  double t5853;
  double t5879;
  double t8340;
  double t8341;
  double t8345;
  double t8347;
  double t8359;
  double t8363;
  double t8371;
  double t8375;
  double t8380;
  double t8386;
  double t8403;
  double t8422;
  double t6184;
  double t6189;
  double t6194;
  double t6204;
  double t6227;
  double t6379;
  double t6413;
  double t6440;
  double t6491;
  double t6614;
  double t6632;
  double t6666;
  double t6673;
  double t8444;
  double t8445;
  double t8450;
  double t8453;
  double t8457;
  double t8459;
  double t8460;
  double t8463;
  double t8468;
  double t8471;
  double t8472;
  double t8474;
  double t6755;
  double t6775;
  double t6776;
  double t6815;
  double t6817;
  double t6884;
  double t6891;
  double t6894;
  double t6909;
  double t6915;
  double t6969;
  double t7018;
  double t7023;
  double t7034;
  double t7039;
  double t8476;
  double t8477;
  double t8478;
  double t8480;
  double t8484;
  double t8487;
  double t8491;
  double t8493;
  double t8497;
  double t8499;
  double t8511;
  double t8513;
  double t7103;
  double t7108;
  double t7122;
  double t7153;
  double t7154;
  double t7262;
  double t7303;
  double t7310;
  double t7322;
  double t7403;
  double t7435;
  double t7454;
  double t7456;
  double t8517;
  double t8518;
  double t8520;
  double t8522;
  double t8524;
  double t8526;
  double t8527;
  double t8528;
  double t8531;
  double t8532;
  double t8534;
  double t8535;
  double t7548;
  double t7582;
  double t7606;
  double t7623;
  double t7632;
  double t7739;
  double t7742;
  double t7748;
  double t7753;
  double t7767;
  double t8539;
  double t8540;
  double t8542;
  double t8548;
  double t8563;
  double t8564;
  double t8568;
  double t8570;
  double t7910;
  double t7917;
  double t8574;
  double t8577;
  double t8578;
  double t8579;
  double t7940;
  double t7943;
  double t7987;
  double t8003;
  double t8623;
  double t8625;
  double t8628;
  double t8630;
  double t8632;
  double t8635;
  double t8637;
  double t8638;
  double t8641;
  double t8644;
  double t8646;
  double t8647;
  double t8650;
  double t8651;
  double t8652;
  double t8656;
  double t8663;
  double t8667;
  double t8668;
  double t8669;
  double t8675;
  double t8678;
  double t8679;
  double t8680;
  double t8683;
  double t8684;
  double t8686;
  double t8688;
  double t8690;
  double t8691;
  double t8692;
  double t8693;
  double t8695;
  double t8696;
  double t8697;
  double t8698;
  double t8700;
  double t8701;
  double t8702;
  double t8703;
  double t8705;
  double t8706;
  double t8708;
  double t8709;
  double t8712;
  double t8714;
  double t8716;
  double t8717;
  double t8721;
  double t8723;
  double t8724;
  double t8726;
  double t8729;
  double t8730;
  double t8733;
  double t8736;
  double t8741;
  double t8742;
  double t8743;
  double t8744;
  double t8748;
  double t8749;
  double t8751;
  double t8752;
  double t8754;
  double t8755;
  double t8757;
  double t8758;
  double t8760;
  double t8762;
  double t8763;
  double t8764;
  t255 = Cos(var1[13]);
  t263 = -1.*t255;
  t499 = 1. + t263;
  t661 = Sin(var1[13]);
  t17 = Cos(var1[3]);
  t1384 = Cos(var1[5]);
  t1562 = Sin(var1[3]);
  t1433 = Sin(var1[4]);
  t1603 = Sin(var1[5]);
  t2651 = Sin(var1[14]);
  t99 = Cos(var1[4]);
  t1919 = 4.e-6*t661;
  t1941 = 0. + t1919;
  t2096 = 0. + t661;
  t1530 = t17*t1384*t1433;
  t1616 = t1562*t1603;
  t1699 = t1530 + t1616;
  t2141 = -1.*t1384*t1562;
  t2201 = t17*t1433*t1603;
  t2416 = t2141 + t2201;
  t2571 = Cos(var1[14]);
  t2599 = -1.*t2571;
  t2621 = 1. + t2599;
  t1261 = -1.*t661;
  t1265 = 0. + t1261;
  t733 = -4.e-6*t661;
  t849 = 0. + t733;
  t4023 = Cos(var1[15]);
  t4039 = -1.*t4023;
  t4147 = 1. + t4039;
  t2935 = t17*t99*t1941;
  t2948 = t2096*t1699;
  t2970 = -1.000000000016*t499;
  t3041 = 1. + t2970;
  t3063 = t3041*t2416;
  t3143 = t2935 + t2948 + t3063;
  t3364 = -4.e-6*t499*t17*t99;
  t3365 = -1.*t499;
  t3459 = 1. + t3365;
  t3528 = t3459*t1699;
  t3564 = t1265*t2416;
  t3582 = t3364 + t3528 + t3564;
  t3722 = -1.6e-11*t499;
  t3725 = 1. + t3722;
  t3752 = t3725*t17*t99;
  t3861 = -4.e-6*t499*t1699;
  t3933 = t849*t2416;
  t3998 = t3752 + t3861 + t3933;
  t4183 = Sin(var1[15]);
  t3245 = 8.e-6*t2651;
  t3249 = 0. + t3245;
  t4152 = -4.e-6*t4147;
  t4180 = 0. + t4152;
  t2658 = -8.e-6*t2651;
  t2683 = 0. + t2658;
  t2876 = 0. + t2651;
  t5601 = Cos(var1[16]);
  t5710 = -1.*t5601;
  t5774 = 1. + t5710;
  t4513 = -1.*t2651;
  t4534 = 0. + t4513;
  t4554 = t4534*t3143;
  t4599 = 8.e-6*t2621*t3582;
  t4623 = -1.*t2621;
  t4638 = 1. + t4623;
  t4647 = t4638*t3998;
  t4655 = t4554 + t4599 + t4647;
  t5337 = -4.e-6*t4183;
  t5371 = 0. + t5337;
  t5071 = t3249*t3143;
  t5139 = -6.4e-11*t2621;
  t5156 = 1. + t5139;
  t5161 = t5156*t3582;
  t5184 = 8.e-6*t2621*t3998;
  t5190 = t5071 + t5161 + t5184;
  t5425 = -1.000000000064*t2621;
  t5464 = 1. + t5425;
  t5467 = t5464*t3143;
  t5508 = t2683*t3582;
  t5528 = t2876*t3998;
  t5536 = t5467 + t5508 + t5528;
  t5787 = -4.e-6*t5774;
  t5792 = 0. + t5787;
  t5817 = Sin(var1[16]);
  t4201 = 0. + t4183;
  t5907 = 4.e-6*t4147;
  t5918 = 0. + t5907;
  t4772 = -1.*t4183;
  t4791 = 0. + t4772;
  t4866 = 4.e-6*t4183;
  t4882 = 0. + t4866;
  t6617 = Sin(var1[17]);
  t6419 = 4.e-6*t5817;
  t6431 = 0. + t6419;
  t5923 = t5918*t4655;
  t5961 = t5371*t5190;
  t5971 = -1.6e-11*t4147;
  t5978 = 1. + t5971;
  t5979 = t5978*t5536;
  t5983 = t5923 + t5961 + t5979;
  t6383 = -1.*t5817;
  t6406 = 0. + t6383;
  t6231 = -1.*t4147;
  t6232 = 1. + t6231;
  t6235 = t6232*t4655;
  t6245 = t4201*t5190;
  t6356 = t5918*t5536;
  t6368 = t6235 + t6245 + t6356;
  t6493 = t4791*t4655;
  t6501 = -1.000000000016*t4147;
  t6518 = 1. + t6501;
  t6545 = t6518*t5190;
  t6547 = t4882*t5536;
  t6559 = t6493 + t6545 + t6547;
  t6606 = Cos(var1[17]);
  t6609 = -1.*t6606;
  t6611 = 1. + t6609;
  t5818 = -4.e-6*t5817;
  t5824 = 0. + t5818;
  t6756 = -4.e-6*t6611;
  t6758 = 0. + t6756;
  t6841 = 4.e-6*t5774;
  t6848 = 0. + t6841;
  t6198 = 0. + t5817;
  t6978 = Cos(var1[18]);
  t7002 = -1.*t6978;
  t7007 = 1. + t7002;
  t6896 = 0. + t6617;
  t6679 = t6431*t5983;
  t6683 = t6406*t6368;
  t6685 = -1.000000000016*t5774;
  t6710 = 1. + t6685;
  t6738 = t6710*t6559;
  t6739 = t6679 + t6683 + t6738;
  t6826 = -1.6e-11*t5774;
  t6827 = 1. + t6826;
  t6835 = t6827*t5983;
  t6859 = t6848*t6368;
  t6863 = t5824*t6559;
  t6866 = t6835 + t6859 + t6863;
  t6920 = t6848*t5983;
  t6934 = -1.*t5774;
  t6947 = 1. + t6934;
  t6952 = t6947*t6368;
  t6955 = t6198*t6559;
  t6956 = t6920 + t6952 + t6955;
  t7009 = -4.e-6*t7007;
  t7017 = 0. + t7009;
  t7028 = Sin(var1[18]);
  t6787 = -4.e-6*t6617;
  t6813 = 0. + t6787;
  t7047 = 4.e-6*t6611;
  t7048 = 0. + t7047;
  t6651 = 4.e-6*t6617;
  t6653 = 0. + t6651;
  t6621 = -1.*t6617;
  t6625 = 0. + t6621;
  t7404 = Sin(var1[19]);
  t7267 = -1.*t7028;
  t7272 = 0. + t7267;
  t7046 = t6896*t6739;
  t7067 = t7048*t6866;
  t7073 = -1.*t6611;
  t7076 = 1. + t7073;
  t7079 = t7076*t6956;
  t7089 = t7046 + t7067 + t7079;
  t7304 = 4.e-6*t7028;
  t7305 = 0. + t7304;
  t7167 = t6813*t6739;
  t7173 = -1.6e-11*t6611;
  t7179 = 1. + t7173;
  t7191 = t7179*t6866;
  t7192 = t7048*t6956;
  t7214 = t7167 + t7191 + t7192;
  t7323 = -1.000000000016*t6611;
  t7331 = 1. + t7323;
  t7337 = t7331*t6739;
  t7353 = t6653*t6866;
  t7367 = t6625*t6956;
  t7370 = t7337 + t7353 + t7367;
  t7378 = Cos(var1[19]);
  t7398 = -1.*t7378;
  t7399 = 1. + t7398;
  t7132 = -4.e-6*t7028;
  t7149 = 0. + t7132;
  t7559 = -4.e-6*t7399;
  t7571 = 0. + t7559;
  t7647 = 4.e-6*t7007;
  t7648 = 0. + t7647;
  t7033 = 0. + t7028;
  t7752 = 0. + t7404;
  t7465 = t7272*t7089;
  t7473 = t7305*t7214;
  t7506 = -1.000000000016*t7007;
  t7512 = 1. + t7506;
  t7526 = t7512*t7370;
  t7528 = t7465 + t7473 + t7526;
  t7652 = t7648*t7089;
  t7660 = -1.6e-11*t7007;
  t7683 = 1. + t7660;
  t7694 = t7683*t7214;
  t7695 = t7149*t7370;
  t7699 = t7652 + t7694 + t7695;
  t7775 = -1.*t7007;
  t7805 = 1. + t7775;
  t7818 = t7805*t7089;
  t7852 = t7648*t7214;
  t7853 = t7033*t7370;
  t7866 = t7818 + t7852 + t7853;
  t7611 = -4.e-6*t7404;
  t7614 = 0. + t7611;
  t7899 = 4.e-6*t7399;
  t7900 = 0. + t7899;
  t7441 = 4.e-6*t7404;
  t7453 = 0. + t7441;
  t7433 = -1.*t7404;
  t7434 = 0. + t7433;
  t117 = -4.6196000000000004e-7*var1[13];
  t507 = -1.912200000030595e-7*t499;
  t937 = 0.13451000000399999*t849;
  t1099 = t117 + t507 + t937;
  t1163 = 1.84784e-12*var1[13];
  t1221 = -0.04780500000076488*t499;
  t1314 = 0.13451000000399999*t1265;
  t1323 = t1163 + t1221 + t1314;
  t1855 = 0.13451000000615215*t499;
  t2002 = -1.9122e-7*t1941;
  t2101 = -0.047805*t2096;
  t2120 = 0. + t1855 + t2002 + t2101;
  t2642 = 0.13451000001660862*t2621;
  t2748 = 5.e-7*t2683;
  t2892 = -0.0625*t2876;
  t2912 = 0. + t2642 + t2748 + t2892;
  t8084 = t1384*t1562*t1433;
  t8093 = -1.*t17*t1603;
  t8094 = t8084 + t8093;
  t8160 = t17*t1384;
  t8175 = t1562*t1433*t1603;
  t8181 = t8160 + t8175;
  t3185 = -7.607999999999987e-8*var1[14];
  t3226 = 5.000000000319999e-7*t2621;
  t3251 = 0.13451000000799998*t3249;
  t3354 = t3185 + t3226 + t3251;
  t3602 = -6.086399999999989e-13*var1[14];
  t3605 = -0.062500000004*t2621;
  t3622 = -1.*t2651;
  t3637 = 0. + t3622;
  t3686 = 0.13451000000799998*t3637;
  t3690 = t3602 + t3605 + t3686;
  t4022 = 1.7471199999999997e-12*var1[15];
  t4181 = 2.50004e-7*t4180;
  t4182 = -0.062501*t4147;
  t4248 = -0.140805000004*t4201;
  t4387 = t4022 + t4181 + t4182 + t4248;
  t8215 = t99*t1941*t1562;
  t8228 = t2096*t8094;
  t8239 = t3041*t8181;
  t8244 = t8215 + t8228 + t8239;
  t8259 = -4.e-6*t499*t99*t1562;
  t8273 = t3459*t8094;
  t8287 = t1265*t8181;
  t8288 = t8259 + t8273 + t8287;
  t8320 = t3725*t99*t1562;
  t8321 = -4.e-6*t499*t8094;
  t8334 = t849*t8181;
  t8335 = t8320 + t8321 + t8334;
  t4666 = -0.1408050000062529*t4147;
  t4850 = -0.062501*t4791;
  t4963 = 2.50004e-7*t4882;
  t4976 = 0. + t4666 + t4850 + t4963;
  t5220 = 4.3677999999999997e-7*var1[15];
  t5236 = -0.062501*t4180;
  t5284 = 4.000064e-18*t4147;
  t5378 = -0.140805000004*t5371;
  t5418 = t5220 + t5236 + t5284 + t5378;
  t5558 = -4.3219999999999986e-8*var1[16];
  t5807 = -0.062502*t5792;
  t5814 = 4.000128e-18*t5774;
  t5853 = -0.26080500000400003*t5824;
  t5879 = t5558 + t5807 + t5814 + t5853;
  t8340 = t4534*t8244;
  t8341 = 8.e-6*t2621*t8288;
  t8345 = t4638*t8335;
  t8347 = t8340 + t8341 + t8345;
  t8359 = t3249*t8244;
  t8363 = t5156*t8288;
  t8371 = 8.e-6*t2621*t8335;
  t8375 = t8359 + t8363 + t8371;
  t8380 = t5464*t8244;
  t8386 = t2683*t8288;
  t8403 = t2876*t8335;
  t8422 = t8380 + t8386 + t8403;
  t6184 = -1.7287999999999994e-13*var1[16];
  t6189 = 2.50008e-7*t5792;
  t6194 = -0.062502*t5774;
  t6204 = -0.26080500000400003*t6198;
  t6227 = t6184 + t6189 + t6194 + t6204;
  t6379 = -0.2608050000081729*t5774;
  t6413 = -0.062502*t6406;
  t6440 = 2.50008e-7*t6431;
  t6491 = 0. + t6379 + t6413 + t6440;
  t6614 = -0.32141100000914263*t6611;
  t6632 = -0.015022*t6625;
  t6666 = 6.0088e-8*t6653;
  t6673 = 0. + t6614 + t6632 + t6666;
  t8444 = t5918*t8347;
  t8445 = t5371*t8375;
  t8450 = t5978*t8422;
  t8453 = t8444 + t8445 + t8450;
  t8457 = t6232*t8347;
  t8459 = t4201*t8375;
  t8460 = t5918*t8422;
  t8463 = t8457 + t8459 + t8460;
  t8468 = t4791*t8347;
  t8471 = t6518*t8375;
  t8472 = t4882*t8422;
  t8474 = t8468 + t8471 + t8472;
  t6755 = -2.85644e-7*var1[17];
  t6775 = -0.015022*t6758;
  t6776 = 9.61408e-19*t6611;
  t6815 = -0.321411000004*t6813;
  t6817 = t6755 + t6775 + t6776 + t6815;
  t6884 = -1.142576e-12*var1[17];
  t6891 = 6.0088e-8*t6758;
  t6894 = -0.015022*t6611;
  t6909 = -0.321411000004*t6896;
  t6915 = t6884 + t6891 + t6894 + t6909;
  t6969 = -9.889599999999905e-14*var1[18];
  t7018 = -2.2207999999999996e-8*t7017;
  t7023 = 0.005552*t7007;
  t7034 = -0.756181000012*t7033;
  t7039 = t6969 + t7018 + t7023 + t7034;
  t8476 = t6431*t8453;
  t8477 = t6406*t8463;
  t8478 = t6710*t8474;
  t8480 = t8476 + t8477 + t8478;
  t8484 = t6827*t8453;
  t8487 = t6848*t8463;
  t8491 = t5824*t8474;
  t8493 = t8484 + t8487 + t8491;
  t8497 = t6848*t8453;
  t8499 = t6947*t8463;
  t8511 = t6198*t8474;
  t8513 = t8497 + t8499 + t8511;
  t7103 = -2.4723999999999765e-8*var1[18];
  t7108 = 0.005552*t7017;
  t7122 = -3.553279999999999e-19*t7007;
  t7153 = -0.756181000012*t7149;
  t7154 = t7103 + t7108 + t7122 + t7153;
  t7262 = -0.7561810000240989*t7007;
  t7303 = 0.005552*t7272;
  t7310 = -2.2207999999999996e-8*t7305;
  t7322 = 0. + t7262 + t7303 + t7310;
  t7403 = -1.1632310000386117*t7399;
  t7435 = -0.03391*t7434;
  t7454 = 1.3564000000000002e-7*t7453;
  t7456 = 0. + t7403 + t7435 + t7454;
  t8517 = t6896*t8480;
  t8518 = t7048*t8493;
  t8520 = t7076*t8513;
  t8522 = t8517 + t8518 + t8520;
  t8524 = t6813*t8480;
  t8526 = t7179*t8493;
  t8527 = t7048*t8513;
  t8528 = t8524 + t8526 + t8527;
  t8531 = t7331*t8480;
  t8532 = t6653*t8493;
  t8534 = t6625*t8513;
  t8535 = t8531 + t8532 + t8534;
  t7548 = 3.4707600000000064e-7*var1[19];
  t7582 = -0.03391*t7571;
  t7606 = 2.1702400000000003e-18*t7399;
  t7623 = -1.16323100002*t7614;
  t7632 = t7548 + t7582 + t7606 + t7623;
  t7739 = 1.3883040000000026e-12*var1[19];
  t7742 = 1.3564000000000002e-7*t7571;
  t7748 = -0.03391*t7399;
  t7753 = -1.16323100002*t7752;
  t7767 = t7739 + t7742 + t7748 + t7753;
  t8539 = t7272*t8522;
  t8540 = t7305*t8528;
  t8542 = t7512*t8535;
  t8548 = t8539 + t8540 + t8542;
  t8563 = t7648*t8522;
  t8564 = t7683*t8528;
  t8568 = t7149*t8535;
  t8570 = t8563 + t8564 + t8568;
  t7910 = -1.*t7399;
  t7917 = 1. + t7910;
  t8574 = t7805*t8522;
  t8577 = t7648*t8528;
  t8578 = t7033*t8535;
  t8579 = t8574 + t8577 + t8578;
  t7940 = -1.6e-11*t7399;
  t7943 = 1. + t7940;
  t7987 = -1.000000000016*t7399;
  t8003 = 1. + t7987;
  t8623 = t99*t1384*t2096;
  t8625 = -1.*t1941*t1433;
  t8628 = t3041*t99*t1603;
  t8630 = t8623 + t8625 + t8628;
  t8632 = t3459*t99*t1384;
  t8635 = 4.e-6*t499*t1433;
  t8637 = t99*t1265*t1603;
  t8638 = t8632 + t8635 + t8637;
  t8641 = -4.e-6*t499*t99*t1384;
  t8644 = -1.*t3725*t1433;
  t8646 = t99*t849*t1603;
  t8647 = t8641 + t8644 + t8646;
  t8650 = t4534*t8630;
  t8651 = 8.e-6*t2621*t8638;
  t8652 = t4638*t8647;
  t8656 = t8650 + t8651 + t8652;
  t8663 = t3249*t8630;
  t8667 = t5156*t8638;
  t8668 = 8.e-6*t2621*t8647;
  t8669 = t8663 + t8667 + t8668;
  t8675 = t5464*t8630;
  t8678 = t2683*t8638;
  t8679 = t2876*t8647;
  t8680 = t8675 + t8678 + t8679;
  t8683 = t5918*t8656;
  t8684 = t5371*t8669;
  t8686 = t5978*t8680;
  t8688 = t8683 + t8684 + t8686;
  t8690 = t6232*t8656;
  t8691 = t4201*t8669;
  t8692 = t5918*t8680;
  t8693 = t8690 + t8691 + t8692;
  t8695 = t4791*t8656;
  t8696 = t6518*t8669;
  t8697 = t4882*t8680;
  t8698 = t8695 + t8696 + t8697;
  t8700 = t6431*t8688;
  t8701 = t6406*t8693;
  t8702 = t6710*t8698;
  t8703 = t8700 + t8701 + t8702;
  t8705 = t6827*t8688;
  t8706 = t6848*t8693;
  t8708 = t5824*t8698;
  t8709 = t8705 + t8706 + t8708;
  t8712 = t6848*t8688;
  t8714 = t6947*t8693;
  t8716 = t6198*t8698;
  t8717 = t8712 + t8714 + t8716;
  t8721 = t6896*t8703;
  t8723 = t7048*t8709;
  t8724 = t7076*t8717;
  t8726 = t8721 + t8723 + t8724;
  t8729 = t6813*t8703;
  t8730 = t7179*t8709;
  t8733 = t7048*t8717;
  t8736 = t8729 + t8730 + t8733;
  t8741 = t7331*t8703;
  t8742 = t6653*t8709;
  t8743 = t6625*t8717;
  t8744 = t8741 + t8742 + t8743;
  t8748 = t7272*t8726;
  t8749 = t7305*t8736;
  t8751 = t7512*t8744;
  t8752 = t8748 + t8749 + t8751;
  t8754 = t7648*t8726;
  t8755 = t7683*t8736;
  t8757 = t7149*t8744;
  t8758 = t8754 + t8755 + t8757;
  t8760 = t7805*t8726;
  t8762 = t7648*t8736;
  t8763 = t7033*t8744;
  t8764 = t8760 + t8762 + t8763;
  p_output1[0]=t1323*t1699 + t2120*t2416 + t2912*t3143 + t3354*t3582 + t3690*t3998 + t4387*t4655 + t4976*t5190 + t5418*t5536 + t5879*t5983 + t6227*t6368 + t6491*t6559 + t6673*t6739 + t6817*t6866 + t6915*t6956 + t7039*t7089 + t7154*t7214 + t7322*t7370 + t7456*t7528 + t7632*t7699 + t7767*t7866 - 0.03391*(t7528*t7752 + t7699*t7900 + t7866*t7917) + 0.13731*(t7528*t7614 + t7866*t7900 + t7699*t7943) - 1.220321*(t7453*t7699 + t7434*t7866 + t7528*t8003) + t1099*t17*t99 + var1[0];
  p_output1[1]=t1323*t8094 + t2120*t8181 + t2912*t8244 + t3354*t8288 + t3690*t8335 + t4387*t8347 + t4976*t8375 + t5418*t8422 + t5879*t8453 + t6227*t8463 + t6491*t8474 + t6673*t8480 + t6817*t8493 + t6915*t8513 + t7039*t8522 + t7154*t8528 + t7322*t8535 + t7456*t8548 + t7632*t8570 + t7767*t8579 - 1.220321*(t8003*t8548 + t7453*t8570 + t7434*t8579) + 0.13731*(t7614*t8548 + t7943*t8570 + t7900*t8579) - 0.03391*(t7752*t8548 + t7900*t8570 + t7917*t8579) + t1099*t1562*t99 + var1[1];
  p_output1[2]=-1.*t1099*t1433 + t2912*t8630 + t3354*t8638 + t3690*t8647 + t4387*t8656 + t4976*t8669 + t5418*t8680 + t5879*t8688 + t6227*t8693 + t6491*t8698 + t6673*t8703 + t6817*t8709 + t6915*t8717 + t7039*t8726 + t7154*t8736 + t7322*t8744 + t7456*t8752 + t7632*t8758 + t7767*t8764 - 1.220321*(t8003*t8752 + t7453*t8758 + t7434*t8764) + 0.13731*(t7614*t8752 + t7943*t8758 + t7900*t8764) - 0.03391*(t7752*t8752 + t7900*t8758 + t7917*t8764) + t1323*t1384*t99 + t1603*t2120*t99 + var1[2];
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

#include "p_LeftToeBottom_mex.hh"

namespace SymExpression
{

void p_LeftToeBottom_mex_raw(double *p_output1, const double *var1)
{
  // Call Subroutines
  output1(p_output1, var1);

}

}

#endif // MATLAB_MEX_FILE
