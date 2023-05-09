/*
 * Automatically Generated from Mathematica.
 * Thu 26 Mar 2020 17:48:50 GMT+08:00
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
  double t61;
  double t844;
  double t1199;
  double t1244;
  double t1429;
  double t190;
  double t464;
  double t221;
  double t506;
  double t1963;
  double t346;
  double t614;
  double t625;
  double t2579;
  double t2594;
  double t2639;
  double t2192;
  double t2224;
  double t1553;
  double t1583;
  double t3147;
  double t3149;
  double t3161;
  double t3239;
  double t2763;
  double t2838;
  double t2883;
  double t3757;
  double t3776;
  double t3779;
  double t3795;
  double t3805;
  double t3817;
  double t3483;
  double t3497;
  double t3500;
  double t3511;
  double t3562;
  double t3585;
  double t3847;
  double t3964;
  double t2960;
  double t2974;
  double t3044;
  double t3054;
  double t3086;
  double t3114;
  double t4077;
  double t4278;
  double t4282;
  double t4332;
  double t4650;
  double t4665;
  double t4678;
  double t4155;
  double t4165;
  double t4212;
  double t4220;
  double t4237;
  double t4244;
  double t3621;
  double t3622;
  double t4493;
  double t4517;
  double t4532;
  double t5328;
  double t5343;
  double t5348;
  double t5376;
  double t5491;
  double t5504;
  double t5043;
  double t5147;
  double t5182;
  double t5185;
  double t5186;
  double t5189;
  double t5197;
  double t5198;
  double t5200;
  double t5544;
  double t5562;
  double t5591;
  double t5689;
  double t4364;
  double t4433;
  double t4883;
  double t4903;
  double t5134;
  double t5140;
  double t6069;
  double t6404;
  double t6405;
  double t6411;
  double t5213;
  double t5223;
  double t5238;
  double t5240;
  double t5510;
  double t5520;
  double t6229;
  double t5938;
  double t5956;
  double t5966;
  double t5985;
  double t5986;
  double t6021;
  double t6344;
  double t6350;
  double t6362;
  double t6371;
  double t6394;
  double t6395;
  double t6421;
  double t6427;
  double t6499;
  double t5062;
  double t5078;
  double t6524;
  double t6536;
  double t5810;
  double t5826;
  double t5777;
  double t5784;
  double t6924;
  double t6772;
  double t6804;
  double t6546;
  double t6547;
  double t6550;
  double t6565;
  double t6566;
  double t6572;
  double t6814;
  double t6820;
  double t6693;
  double t6695;
  double t6704;
  double t6705;
  double t6735;
  double t6737;
  double t6827;
  double t6828;
  double t6830;
  double t6834;
  double t6852;
  double t6857;
  double t6888;
  double t6903;
  double t6917;
  double t6636;
  double t6663;
  double t7040;
  double t7043;
  double t7088;
  double t7100;
  double t6503;
  double t7350;
  double t7351;
  double t7361;
  double t7246;
  double t6994;
  double t6999;
  double t7008;
  double t7010;
  double t7014;
  double t7015;
  double t7104;
  double t7106;
  double t7138;
  double t7163;
  double t7179;
  double t7180;
  double t7270;
  double t7278;
  double t7282;
  double t7292;
  double t7307;
  double t7309;
  double t7363;
  double t7368;
  double t7381;
  double t7080;
  double t7081;
  double t7427;
  double t7430;
  double t6946;
  double t6954;
  double t6935;
  double t6940;
  double t7564;
  double t7565;
  double t7402;
  double t7447;
  double t7448;
  double t7476;
  double t7480;
  double t7498;
  double t7572;
  double t7577;
  double t7542;
  double t7543;
  double t7544;
  double t7545;
  double t7546;
  double t7549;
  double t7594;
  double t7626;
  double t7629;
  double t7630;
  double t7645;
  double t7651;
  double t7518;
  double t7520;
  double t7698;
  double t7700;
  double t7382;
  double t722;
  double t1428;
  double t1689;
  double t1701;
  double t2005;
  double t2010;
  double t2354;
  double t2435;
  double t2722;
  double t2849;
  double t2887;
  double t2910;
  double t7810;
  double t7811;
  double t7819;
  double t7845;
  double t7855;
  double t7856;
  double t3137;
  double t3189;
  double t3253;
  double t3329;
  double t3334;
  double t3346;
  double t3611;
  double t3616;
  double t3668;
  double t3717;
  double t3842;
  double t3982;
  double t4082;
  double t4090;
  double t7934;
  double t7942;
  double t7945;
  double t7950;
  double t7905;
  double t7908;
  double t7909;
  double t7928;
  double t7874;
  double t7892;
  double t7894;
  double t7902;
  double t4255;
  double t4464;
  double t4485;
  double t4543;
  double t4547;
  double t4608;
  double t4980;
  double t5011;
  double t5099;
  double t5103;
  double t7972;
  double t7973;
  double t7976;
  double t7980;
  double t8033;
  double t8035;
  double t8036;
  double t8044;
  double t5536;
  double t5568;
  double t5691;
  double t5698;
  double t5761;
  double t5797;
  double t5829;
  double t5915;
  double t8000;
  double t8004;
  double t8019;
  double t8020;
  double t6043;
  double t6045;
  double t6051;
  double t6088;
  double t6111;
  double t6118;
  double t6187;
  double t6192;
  double t6236;
  double t6299;
  double t6401;
  double t6458;
  double t6482;
  double t6511;
  double t6514;
  double t8023;
  double t8031;
  double t8046;
  double t8047;
  double t8055;
  double t8056;
  double t8062;
  double t8064;
  double t8074;
  double t8078;
  double t8082;
  double t8083;
  double t6604;
  double t6621;
  double t6629;
  double t6664;
  double t6690;
  double t6771;
  double t6809;
  double t6825;
  double t6826;
  double t6919;
  double t6941;
  double t6974;
  double t6991;
  double t8090;
  double t8093;
  double t8099;
  double t8102;
  double t8109;
  double t8110;
  double t8113;
  double t8119;
  double t8138;
  double t8139;
  double t8141;
  double t8144;
  double t7035;
  double t7052;
  double t7063;
  double t7084;
  double t7085;
  double t7188;
  double t7189;
  double t7201;
  double t7247;
  double t7249;
  double t7335;
  double t7372;
  double t7379;
  double t7384;
  double t7392;
  double t8149;
  double t8150;
  double t8151;
  double t8152;
  double t8159;
  double t8160;
  double t8161;
  double t8162;
  double t8165;
  double t8169;
  double t8170;
  double t8177;
  double t7503;
  double t7510;
  double t7514;
  double t7521;
  double t7529;
  double t7563;
  double t7568;
  double t7578;
  double t7580;
  double t8180;
  double t8184;
  double t8187;
  double t8196;
  double t8206;
  double t8210;
  double t8214;
  double t8220;
  double t7684;
  double t7687;
  double t8227;
  double t8231;
  double t8233;
  double t8234;
  double t7717;
  double t7719;
  double t7731;
  double t7737;
  double t8320;
  double t8321;
  double t8323;
  double t8325;
  double t8296;
  double t8300;
  double t8306;
  double t8311;
  double t8285;
  double t8286;
  double t8290;
  double t8292;
  double t8328;
  double t8333;
  double t8335;
  double t8336;
  double t8353;
  double t8354;
  double t8355;
  double t8358;
  double t8338;
  double t8340;
  double t8341;
  double t8345;
  double t8347;
  double t8351;
  double t8359;
  double t8361;
  double t8373;
  double t8374;
  double t8377;
  double t8378;
  double t8387;
  double t8390;
  double t8395;
  double t8399;
  double t8401;
  double t8402;
  double t8403;
  double t8405;
  double t8417;
  double t8418;
  double t8419;
  double t8422;
  double t8429;
  double t8433;
  double t8436;
  double t8439;
  double t8443;
  double t8444;
  double t8445;
  double t8457;
  double t8459;
  double t8462;
  double t8465;
  double t8466;
  double t8468;
  double t8475;
  double t8476;
  double t8477;
  double t8479;
  double t8480;
  double t8481;
  double t8483;
  double t8488;
  double t8489;
  double t8492;
  double t8493;
  double t8498;
  double t8499;
  double t8500;
  double t8506;
  t61 = Cos(var1[3]);
  t844 = Cos(var1[6]);
  t1199 = -1.*t844;
  t1244 = 1. + t1199;
  t1429 = Sin(var1[6]);
  t190 = Cos(var1[5]);
  t464 = Sin(var1[3]);
  t221 = Sin(var1[4]);
  t506 = Sin(var1[5]);
  t1963 = Cos(var1[4]);
  t346 = t61*t190*t221;
  t614 = t464*t506;
  t625 = t346 + t614;
  t2579 = -1.*t190*t464;
  t2594 = t61*t221*t506;
  t2639 = t2579 + t2594;
  t2192 = -4.e-6*t1429;
  t2224 = 0. + t2192;
  t1553 = -1.*t1429;
  t1583 = 0. + t1553;
  t3147 = Cos(var1[7]);
  t3149 = -1.*t3147;
  t3161 = 1. + t3149;
  t3239 = Sin(var1[7]);
  t2763 = 4.e-6*t1429;
  t2838 = 0. + t2763;
  t2883 = 0. + t1429;
  t3757 = -1.000000000016*t1244;
  t3776 = 1. + t3757;
  t3779 = t3776*t2639;
  t3795 = t61*t1963*t2838;
  t3805 = t625*t2883;
  t3817 = t3779 + t3795 + t3805;
  t3483 = -4.e-6*t61*t1963*t1244;
  t3497 = -1.*t1244;
  t3500 = 1. + t3497;
  t3511 = t3500*t625;
  t3562 = t2639*t1583;
  t3585 = t3483 + t3511 + t3562;
  t3847 = -8.e-6*t3239;
  t3964 = 0. + t3847;
  t2960 = -1.6e-11*t1244;
  t2974 = 1. + t2960;
  t3044 = t61*t1963*t2974;
  t3054 = -4.e-6*t1244*t625;
  t3086 = t2639*t2224;
  t3114 = t3044 + t3054 + t3086;
  t4077 = 0. + t3239;
  t4278 = Cos(var1[8]);
  t4282 = -1.*t4278;
  t4332 = 1. + t4282;
  t4650 = Cos(var1[9]);
  t4665 = -1.*t4650;
  t4678 = 1. + t4665;
  t4155 = -1.000000000064*t3161;
  t4165 = 1. + t4155;
  t4212 = t4165*t3817;
  t4220 = t3585*t3964;
  t4237 = t3114*t4077;
  t4244 = t4212 + t4220 + t4237;
  t3621 = 8.e-6*t3239;
  t3622 = 0. + t3621;
  t4493 = Sin(var1[8]);
  t4517 = -4.e-6*t4493;
  t4532 = 0. + t4517;
  t5328 = -6.4e-11*t3161;
  t5343 = 1. + t5328;
  t5348 = t5343*t3585;
  t5376 = 8.e-6*t3161*t3114;
  t5491 = t3817*t3622;
  t5504 = t5348 + t5376 + t5491;
  t5043 = Sin(var1[9]);
  t5147 = 8.e-6*t3161*t3585;
  t5182 = -1.*t3161;
  t5185 = 1. + t5182;
  t5186 = t5185*t3114;
  t5189 = -1.*t3239;
  t5197 = 0. + t5189;
  t5198 = t3817*t5197;
  t5200 = t5147 + t5186 + t5198;
  t5544 = -1.*t4493;
  t5562 = 0. + t5544;
  t5591 = 4.e-6*t4493;
  t5689 = 0. + t5591;
  t4364 = -4.e-6*t4332;
  t4433 = 0. + t4364;
  t4883 = -4.e-6*t4678;
  t4903 = 0. + t4883;
  t5134 = 4.e-6*t4332;
  t5140 = 0. + t5134;
  t6069 = 0. + t4493;
  t6404 = Cos(var1[10]);
  t6405 = -1.*t6404;
  t6411 = 1. + t6405;
  t5213 = t5140*t5200;
  t5223 = -1.6e-11*t4332;
  t5238 = 1. + t5223;
  t5240 = t5238*t4244;
  t5510 = t5504*t4532;
  t5520 = t5213 + t5240 + t5510;
  t6229 = 0. + t5043;
  t5938 = -1.000000000016*t4332;
  t5956 = 1. + t5938;
  t5966 = t5956*t5504;
  t5985 = t5200*t5562;
  t5986 = t4244*t5689;
  t6021 = t5966 + t5985 + t5986;
  t6344 = -1.*t4332;
  t6350 = 1. + t6344;
  t6362 = t6350*t5200;
  t6371 = t5140*t4244;
  t6394 = t5504*t6069;
  t6395 = t6362 + t6371 + t6394;
  t6421 = -4.e-6*t6411;
  t6427 = 0. + t6421;
  t6499 = Sin(var1[10]);
  t5062 = -4.e-6*t5043;
  t5078 = 0. + t5062;
  t6524 = 4.e-6*t4678;
  t6536 = 0. + t6524;
  t5810 = 4.e-6*t5043;
  t5826 = 0. + t5810;
  t5777 = -1.*t5043;
  t5784 = 0. + t5777;
  t6924 = Sin(var1[11]);
  t6772 = -1.*t6499;
  t6804 = 0. + t6772;
  t6546 = t6536*t5520;
  t6547 = t6229*t6021;
  t6550 = -1.*t4678;
  t6565 = 1. + t6550;
  t6566 = t6565*t6395;
  t6572 = t6546 + t6547 + t6566;
  t6814 = 4.e-6*t6499;
  t6820 = 0. + t6814;
  t6693 = -1.6e-11*t4678;
  t6695 = 1. + t6693;
  t6704 = t6695*t5520;
  t6705 = t5078*t6021;
  t6735 = t6536*t6395;
  t6737 = t6704 + t6705 + t6735;
  t6827 = t5826*t5520;
  t6828 = -1.000000000016*t4678;
  t6830 = 1. + t6828;
  t6834 = t6830*t6021;
  t6852 = t5784*t6395;
  t6857 = t6827 + t6834 + t6852;
  t6888 = Cos(var1[11]);
  t6903 = -1.*t6888;
  t6917 = 1. + t6903;
  t6636 = -4.e-6*t6499;
  t6663 = 0. + t6636;
  t7040 = -4.e-6*t6917;
  t7043 = 0. + t7040;
  t7088 = 4.e-6*t6411;
  t7100 = 0. + t7088;
  t6503 = 0. + t6499;
  t7350 = Cos(var1[12]);
  t7351 = -1.*t7350;
  t7361 = 1. + t7351;
  t7246 = 0. + t6924;
  t6994 = t6804*t6572;
  t6999 = t6820*t6737;
  t7008 = -1.000000000016*t6411;
  t7010 = 1. + t7008;
  t7014 = t7010*t6857;
  t7015 = t6994 + t6999 + t7014;
  t7104 = t7100*t6572;
  t7106 = -1.6e-11*t6411;
  t7138 = 1. + t7106;
  t7163 = t7138*t6737;
  t7179 = t6663*t6857;
  t7180 = t7104 + t7163 + t7179;
  t7270 = -1.*t6411;
  t7278 = 1. + t7270;
  t7282 = t7278*t6572;
  t7292 = t7100*t6737;
  t7307 = t6503*t6857;
  t7309 = t7282 + t7292 + t7307;
  t7363 = -4.e-6*t7361;
  t7368 = 0. + t7363;
  t7381 = Sin(var1[12]);
  t7080 = -4.e-6*t6924;
  t7081 = 0. + t7080;
  t7427 = 4.e-6*t6917;
  t7430 = 0. + t7427;
  t6946 = 4.e-6*t6924;
  t6954 = 0. + t6946;
  t6935 = -1.*t6924;
  t6940 = 0. + t6935;
  t7564 = -1.*t7381;
  t7565 = 0. + t7564;
  t7402 = t7246*t7015;
  t7447 = t7430*t7180;
  t7448 = -1.*t6917;
  t7476 = 1. + t7448;
  t7480 = t7476*t7309;
  t7498 = t7402 + t7447 + t7480;
  t7572 = 4.e-6*t7381;
  t7577 = 0. + t7572;
  t7542 = t7081*t7015;
  t7543 = -1.6e-11*t6917;
  t7544 = 1. + t7543;
  t7545 = t7544*t7180;
  t7546 = t7430*t7309;
  t7549 = t7542 + t7545 + t7546;
  t7594 = -1.000000000016*t6917;
  t7626 = 1. + t7594;
  t7629 = t7626*t7015;
  t7630 = t6954*t7180;
  t7645 = t6940*t7309;
  t7651 = t7629 + t7630 + t7645;
  t7518 = -4.e-6*t7381;
  t7520 = 0. + t7518;
  t7698 = 4.e-6*t7361;
  t7700 = 0. + t7698;
  t7382 = 0. + t7381;
  t722 = -1.84784e-12*var1[6];
  t1428 = -0.04780500000076488*t1244;
  t1689 = -0.13451000000399999*t1583;
  t1701 = t722 + t1428 + t1689;
  t2005 = 4.6196000000000004e-7*var1[6];
  t2010 = -1.912200000030595e-7*t1244;
  t2354 = -0.13451000000399999*t2224;
  t2435 = t2005 + t2010 + t2354;
  t2722 = -0.13451000000615215*t1244;
  t2849 = -1.9122e-7*t2838;
  t2887 = -0.047805*t2883;
  t2910 = 0. + t2722 + t2849 + t2887;
  t7810 = t190*t464*t221;
  t7811 = -1.*t61*t506;
  t7819 = t7810 + t7811;
  t7845 = t61*t190;
  t7855 = t464*t221*t506;
  t7856 = t7845 + t7855;
  t3137 = 6.086399999999989e-13*var1[7];
  t3189 = -0.062500000004*t3161;
  t3253 = -1.*t3239;
  t3329 = 0. + t3253;
  t3334 = -0.13451000000799998*t3329;
  t3346 = t3137 + t3189 + t3334;
  t3611 = 7.607999999999987e-8*var1[7];
  t3616 = 5.000000000319999e-7*t3161;
  t3668 = -0.13451000000799998*t3622;
  t3717 = t3611 + t3616 + t3668;
  t3842 = -0.13451000001660862*t3161;
  t3982 = 5.e-7*t3964;
  t4082 = -0.0625*t4077;
  t4090 = 0. + t3842 + t3982 + t4082;
  t7934 = t3776*t7856;
  t7942 = t1963*t464*t2838;
  t7945 = t7819*t2883;
  t7950 = t7934 + t7942 + t7945;
  t7905 = -4.e-6*t1963*t1244*t464;
  t7908 = t3500*t7819;
  t7909 = t7856*t1583;
  t7928 = t7905 + t7908 + t7909;
  t7874 = t1963*t2974*t464;
  t7892 = -4.e-6*t1244*t7819;
  t7894 = t7856*t2224;
  t7902 = t7874 + t7892 + t7894;
  t4255 = 4.3677999999999997e-7*var1[8];
  t4464 = -0.0625*t4433;
  t4485 = 3.9999999999999995e-18*t4332;
  t4543 = -0.140805000004*t4532;
  t4547 = t4255 + t4464 + t4485 + t4543;
  t4608 = -4.3219999999999986e-8*var1[9];
  t4980 = -0.062501*t4903;
  t5011 = 4.000064e-18*t4678;
  t5099 = -0.26080500000400003*t5078;
  t5103 = t4608 + t4980 + t5011 + t5099;
  t7972 = t4165*t7950;
  t7973 = t7928*t3964;
  t7976 = t7902*t4077;
  t7980 = t7972 + t7973 + t7976;
  t8033 = t5343*t7928;
  t8035 = 8.e-6*t3161*t7902;
  t8036 = t7950*t3622;
  t8044 = t8033 + t8035 + t8036;
  t5536 = -0.1408050000062529*t4332;
  t5568 = -0.0625*t5562;
  t5691 = 2.5e-7*t5689;
  t5698 = 0. + t5536 + t5568 + t5691;
  t5761 = -0.2608050000081729*t4678;
  t5797 = -0.062501*t5784;
  t5829 = 2.50004e-7*t5826;
  t5915 = 0. + t5761 + t5797 + t5829;
  t8000 = 8.e-6*t3161*t7928;
  t8004 = t5185*t7902;
  t8019 = t7950*t5197;
  t8020 = t8000 + t8004 + t8019;
  t6043 = 1.7471199999999997e-12*var1[8];
  t6045 = 2.5e-7*t4433;
  t6051 = -0.0625*t4332;
  t6088 = -0.140805000004*t6069;
  t6111 = t6043 + t6045 + t6051 + t6088;
  t6118 = -1.7287999999999994e-13*var1[9];
  t6187 = 2.50004e-7*t4903;
  t6192 = -0.062501*t4678;
  t6236 = -0.26080500000400003*t6229;
  t6299 = t6118 + t6187 + t6192 + t6236;
  t6401 = -1.142576e-12*var1[10];
  t6458 = 6.0084e-8*t6427;
  t6482 = -0.015021*t6411;
  t6511 = -0.321411000004*t6503;
  t6514 = t6401 + t6458 + t6482 + t6511;
  t8023 = t5140*t8020;
  t8031 = t5238*t7980;
  t8046 = t8044*t4532;
  t8047 = t8023 + t8031 + t8046;
  t8055 = t5956*t8044;
  t8056 = t8020*t5562;
  t8062 = t7980*t5689;
  t8064 = t8055 + t8056 + t8062;
  t8074 = t6350*t8020;
  t8078 = t5140*t7980;
  t8082 = t8044*t6069;
  t8083 = t8074 + t8078 + t8082;
  t6604 = -2.85644e-7*var1[10];
  t6621 = -0.015021*t6427;
  t6629 = 9.61344e-19*t6411;
  t6664 = -0.321411000004*t6663;
  t6690 = t6604 + t6621 + t6629 + t6664;
  t6771 = -0.32141100000914263*t6411;
  t6809 = -0.015021*t6804;
  t6825 = 6.0084e-8*t6820;
  t6826 = 0. + t6771 + t6809 + t6825;
  t6919 = -0.7561810000240989*t6917;
  t6941 = 0.005553*t6940;
  t6974 = -2.2211999999999997e-8*t6954;
  t6991 = 0. + t6919 + t6941 + t6974;
  t8090 = t6536*t8047;
  t8093 = t6229*t8064;
  t8099 = t6565*t8083;
  t8102 = t8090 + t8093 + t8099;
  t8109 = t6695*t8047;
  t8110 = t5078*t8064;
  t8113 = t6536*t8083;
  t8119 = t8109 + t8110 + t8113;
  t8138 = t5826*t8047;
  t8139 = t6830*t8064;
  t8141 = t5784*t8083;
  t8144 = t8138 + t8139 + t8141;
  t7035 = -2.4723999999999765e-8*var1[11];
  t7052 = 0.005553*t7043;
  t7063 = -3.5539199999999996e-19*t6917;
  t7084 = -0.756181000012*t7081;
  t7085 = t7035 + t7052 + t7063 + t7084;
  t7188 = -9.889599999999905e-14*var1[11];
  t7189 = -2.2211999999999997e-8*t7043;
  t7201 = 0.005553*t6917;
  t7247 = -0.756181000012*t7246;
  t7249 = t7188 + t7189 + t7201 + t7247;
  t7335 = 1.3883040000000026e-12*var1[12];
  t7372 = 1.35636e-7*t7368;
  t7379 = -0.033909*t7361;
  t7384 = -1.16323100002*t7382;
  t7392 = t7335 + t7372 + t7379 + t7384;
  t8149 = t6804*t8102;
  t8150 = t6820*t8119;
  t8151 = t7010*t8144;
  t8152 = t8149 + t8150 + t8151;
  t8159 = t7100*t8102;
  t8160 = t7138*t8119;
  t8161 = t6663*t8144;
  t8162 = t8159 + t8160 + t8161;
  t8165 = t7278*t8102;
  t8169 = t7100*t8119;
  t8170 = t6503*t8144;
  t8177 = t8165 + t8169 + t8170;
  t7503 = 3.4707600000000064e-7*var1[12];
  t7510 = -0.033909*t7368;
  t7514 = 2.170176e-18*t7361;
  t7521 = -1.16323100002*t7520;
  t7529 = t7503 + t7510 + t7514 + t7521;
  t7563 = -1.1632310000386117*t7361;
  t7568 = -0.033909*t7565;
  t7578 = 1.35636e-7*t7577;
  t7580 = 0. + t7563 + t7568 + t7578;
  t8180 = t7246*t8152;
  t8184 = t7430*t8162;
  t8187 = t7476*t8177;
  t8196 = t8180 + t8184 + t8187;
  t8206 = t7081*t8152;
  t8210 = t7544*t8162;
  t8214 = t7430*t8177;
  t8220 = t8206 + t8210 + t8214;
  t7684 = -1.000000000016*t7361;
  t7687 = 1. + t7684;
  t8227 = t7626*t8152;
  t8231 = t6954*t8162;
  t8233 = t6940*t8177;
  t8234 = t8227 + t8231 + t8233;
  t7717 = -1.6e-11*t7361;
  t7719 = 1. + t7717;
  t7731 = -1.*t7361;
  t7737 = 1. + t7731;
  t8320 = t1963*t3776*t506;
  t8321 = -1.*t221*t2838;
  t8323 = t1963*t190*t2883;
  t8325 = t8320 + t8321 + t8323;
  t8296 = t1963*t190*t3500;
  t8300 = 4.e-6*t1244*t221;
  t8306 = t1963*t506*t1583;
  t8311 = t8296 + t8300 + t8306;
  t8285 = -4.e-6*t1963*t190*t1244;
  t8286 = -1.*t2974*t221;
  t8290 = t1963*t506*t2224;
  t8292 = t8285 + t8286 + t8290;
  t8328 = t4165*t8325;
  t8333 = t8311*t3964;
  t8335 = t8292*t4077;
  t8336 = t8328 + t8333 + t8335;
  t8353 = t5343*t8311;
  t8354 = 8.e-6*t3161*t8292;
  t8355 = t8325*t3622;
  t8358 = t8353 + t8354 + t8355;
  t8338 = 8.e-6*t3161*t8311;
  t8340 = t5185*t8292;
  t8341 = t8325*t5197;
  t8345 = t8338 + t8340 + t8341;
  t8347 = t5140*t8345;
  t8351 = t5238*t8336;
  t8359 = t8358*t4532;
  t8361 = t8347 + t8351 + t8359;
  t8373 = t5956*t8358;
  t8374 = t8345*t5562;
  t8377 = t8336*t5689;
  t8378 = t8373 + t8374 + t8377;
  t8387 = t6350*t8345;
  t8390 = t5140*t8336;
  t8395 = t8358*t6069;
  t8399 = t8387 + t8390 + t8395;
  t8401 = t6536*t8361;
  t8402 = t6229*t8378;
  t8403 = t6565*t8399;
  t8405 = t8401 + t8402 + t8403;
  t8417 = t6695*t8361;
  t8418 = t5078*t8378;
  t8419 = t6536*t8399;
  t8422 = t8417 + t8418 + t8419;
  t8429 = t5826*t8361;
  t8433 = t6830*t8378;
  t8436 = t5784*t8399;
  t8439 = t8429 + t8433 + t8436;
  t8443 = t6804*t8405;
  t8444 = t6820*t8422;
  t8445 = t7010*t8439;
  t8457 = t8443 + t8444 + t8445;
  t8459 = t7100*t8405;
  t8462 = t7138*t8422;
  t8465 = t6663*t8439;
  t8466 = t8459 + t8462 + t8465;
  t8468 = t7278*t8405;
  t8475 = t7100*t8422;
  t8476 = t6503*t8439;
  t8477 = t8468 + t8475 + t8476;
  t8479 = t7246*t8457;
  t8480 = t7430*t8466;
  t8481 = t7476*t8477;
  t8483 = t8479 + t8480 + t8481;
  t8488 = t7081*t8457;
  t8489 = t7544*t8466;
  t8492 = t7430*t8477;
  t8493 = t8488 + t8489 + t8492;
  t8498 = t7626*t8457;
  t8499 = t6954*t8466;
  t8500 = t6940*t8477;
  t8506 = t8498 + t8499 + t8500;
  p_output1[0]=t2639*t2910 + t3114*t3346 + t3585*t3717 + t3817*t4090 + t4244*t4547 + t5103*t5520 + t5504*t5698 + t5915*t6021 + t1963*t2435*t61 + t5200*t6111 + t1701*t625 + t6299*t6395 + t6514*t6572 + t6690*t6737 + t6826*t6857 + t6991*t7015 + t7085*t7180 + t7249*t7309 + t7392*t7498 + t7529*t7549 + t7580*t7651 - 1.220321*(t7498*t7565 + t7549*t7577 + t7651*t7687) - 0.137312*(t7520*t7651 + t7498*t7700 + t7549*t7719) + 0.07509*(t7382*t7651 + t7549*t7700 + t7498*t7737) + var1[0];
  p_output1[1]=t1963*t2435*t464 + t1701*t7819 + t2910*t7856 + t3346*t7902 + t3717*t7928 + t4090*t7950 + t4547*t7980 + t6111*t8020 + t5698*t8044 + t5103*t8047 + t5915*t8064 + t6299*t8083 + t6514*t8102 + t6690*t8119 + t6826*t8144 + t6991*t8152 + t7085*t8162 + t7249*t8177 + t7392*t8196 + t7529*t8220 + t7580*t8234 + 0.07509*(t7737*t8196 + t7700*t8220 + t7382*t8234) - 0.137312*(t7700*t8196 + t7719*t8220 + t7520*t8234) - 1.220321*(t7565*t8196 + t7577*t8220 + t7687*t8234) + var1[1];
  p_output1[2]=t1701*t190*t1963 - 1.*t221*t2435 + t1963*t2910*t506 + t3346*t8292 + t3717*t8311 + t4090*t8325 + t4547*t8336 + t6111*t8345 + t5698*t8358 + t5103*t8361 + t5915*t8378 + t6299*t8399 + t6514*t8405 + t6690*t8422 + t6826*t8439 + t6991*t8457 + t7085*t8466 + t7249*t8477 + t7392*t8483 + t7529*t8493 + t7580*t8506 + 0.07509*(t7737*t8483 + t7700*t8493 + t7382*t8506) - 0.137312*(t7700*t8483 + t7719*t8493 + t7520*t8506) - 1.220321*(t7565*t8483 + t7577*t8493 + t7687*t8506) + var1[2];
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

#include "p_RightToeFront_mex.hh"

namespace SymExpression
{

void p_RightToeFront_mex_raw(double *p_output1, const double *var1)
{
  // Call Subroutines
  output1(p_output1, var1);

}

}

#endif // MATLAB_MEX_FILE
