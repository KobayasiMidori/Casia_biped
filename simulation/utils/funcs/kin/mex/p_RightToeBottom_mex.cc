/*
 * Automatically Generated from Mathematica.
 * Thu 26 Mar 2020 17:48:43 GMT+08:00
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
  double t145;
  double t629;
  double t639;
  double t754;
  double t823;
  double t196;
  double t473;
  double t266;
  double t483;
  double t1081;
  double t447;
  double t526;
  double t559;
  double t1514;
  double t1517;
  double t1590;
  double t1207;
  double t1243;
  double t1019;
  double t1022;
  double t2485;
  double t2489;
  double t2511;
  double t2535;
  double t1771;
  double t1785;
  double t1827;
  double t3082;
  double t3092;
  double t3117;
  double t3126;
  double t3135;
  double t3155;
  double t2714;
  double t2753;
  double t2776;
  double t2784;
  double t2795;
  double t2796;
  double t3178;
  double t3186;
  double t2058;
  double t2070;
  double t2133;
  double t2138;
  double t2262;
  double t2436;
  double t3357;
  double t3688;
  double t3700;
  double t3703;
  double t4313;
  double t4317;
  double t4383;
  double t3452;
  double t3503;
  double t3509;
  double t3562;
  double t3647;
  double t3650;
  double t2932;
  double t2982;
  double t3865;
  double t3867;
  double t3888;
  double t4990;
  double t5002;
  double t5008;
  double t5017;
  double t5018;
  double t5164;
  double t4437;
  double t4697;
  double t4745;
  double t4766;
  double t4795;
  double t4868;
  double t4885;
  double t4891;
  double t4896;
  double t5295;
  double t5316;
  double t5320;
  double t5321;
  double t3720;
  double t3809;
  double t4396;
  double t4411;
  double t4675;
  double t4684;
  double t5837;
  double t6249;
  double t6250;
  double t6251;
  double t4911;
  double t4921;
  double t4941;
  double t4953;
  double t5176;
  double t5182;
  double t6085;
  double t5597;
  double t5603;
  double t5658;
  double t5660;
  double t5667;
  double t5704;
  double t6104;
  double t6110;
  double t6161;
  double t6162;
  double t6167;
  double t6169;
  double t6268;
  double t6271;
  double t6376;
  double t4449;
  double t4481;
  double t6482;
  double t6507;
  double t5498;
  double t5558;
  double t5473;
  double t5487;
  double t6925;
  double t6734;
  double t6737;
  double t6508;
  double t6509;
  double t6510;
  double t6528;
  double t6530;
  double t6548;
  double t6790;
  double t6795;
  double t6633;
  double t6670;
  double t6674;
  double t6693;
  double t6708;
  double t6713;
  double t6839;
  double t6846;
  double t6860;
  double t6861;
  double t6865;
  double t6870;
  double t6910;
  double t6913;
  double t6918;
  double t6582;
  double t6600;
  double t7053;
  double t7060;
  double t7111;
  double t7121;
  double t6384;
  double t7331;
  double t7336;
  double t7343;
  double t7247;
  double t6991;
  double t6994;
  double t6995;
  double t7005;
  double t7010;
  double t7015;
  double t7126;
  double t7164;
  double t7165;
  double t7189;
  double t7190;
  double t7203;
  double t7253;
  double t7261;
  double t7295;
  double t7298;
  double t7307;
  double t7314;
  double t7347;
  double t7351;
  double t7423;
  double t7085;
  double t7090;
  double t7476;
  double t7479;
  double t6943;
  double t6944;
  double t6930;
  double t6937;
  double t7569;
  double t7572;
  double t7472;
  double t7480;
  double t7481;
  double t7491;
  double t7500;
  double t7503;
  double t7577;
  double t7578;
  double t7531;
  double t7534;
  double t7535;
  double t7542;
  double t7549;
  double t7551;
  double t7607;
  double t7608;
  double t7609;
  double t7612;
  double t7615;
  double t7618;
  double t7521;
  double t7522;
  double t7678;
  double t7692;
  double t7442;
  double t590;
  double t817;
  double t1046;
  double t1049;
  double t1108;
  double t1182;
  double t1346;
  double t1374;
  double t1621;
  double t1815;
  double t1925;
  double t1953;
  double t7808;
  double t7809;
  double t7812;
  double t7856;
  double t7873;
  double t7881;
  double t2449;
  double t2526;
  double t2547;
  double t2558;
  double t2575;
  double t2682;
  double t2827;
  double t2870;
  double t2998;
  double t3010;
  double t3166;
  double t3353;
  double t3395;
  double t3402;
  double t7942;
  double t7945;
  double t7946;
  double t7958;
  double t7915;
  double t7920;
  double t7929;
  double t7930;
  double t7892;
  double t7897;
  double t7904;
  double t7908;
  double t3674;
  double t3838;
  double t3857;
  double t3930;
  double t4112;
  double t4235;
  double t4428;
  double t4429;
  double t4485;
  double t4487;
  double t7972;
  double t7973;
  double t7976;
  double t7979;
  double t8033;
  double t8043;
  double t8044;
  double t8047;
  double t5270;
  double t5317;
  double t5326;
  double t5328;
  double t5459;
  double t5496;
  double t5566;
  double t5590;
  double t7991;
  double t7997;
  double t8019;
  double t8020;
  double t5761;
  double t5770;
  double t5773;
  double t5858;
  double t5860;
  double t5864;
  double t5915;
  double t5917;
  double t6090;
  double t6093;
  double t6205;
  double t6335;
  double t6339;
  double t6386;
  double t6396;
  double t8023;
  double t8031;
  double t8051;
  double t8052;
  double t8064;
  double t8068;
  double t8069;
  double t8072;
  double t8082;
  double t8088;
  double t8090;
  double t8101;
  double t6557;
  double t6566;
  double t6567;
  double t6617;
  double t6621;
  double t6718;
  double t6771;
  double t6808;
  double t6821;
  double t6924;
  double t6938;
  double t6979;
  double t6987;
  double t8109;
  double t8110;
  double t8113;
  double t8138;
  double t8141;
  double t8146;
  double t8148;
  double t8151;
  double t8161;
  double t8163;
  double t8165;
  double t8169;
  double t7030;
  double t7063;
  double t7080;
  double t7101;
  double t7107;
  double t7208;
  double t7229;
  double t7241;
  double t7249;
  double t7251;
  double t7319;
  double t7354;
  double t7396;
  double t7446;
  double t7458;
  double t8187;
  double t8192;
  double t8196;
  double t8220;
  double t8228;
  double t8231;
  double t8239;
  double t8243;
  double t8247;
  double t8249;
  double t8250;
  double t8252;
  double t7507;
  double t7509;
  double t7518;
  double t7523;
  double t7524;
  double t7566;
  double t7576;
  double t7581;
  double t7588;
  double t8254;
  double t8255;
  double t8256;
  double t8259;
  double t8276;
  double t8279;
  double t8285;
  double t8290;
  double t7640;
  double t7641;
  double t8296;
  double t8300;
  double t8306;
  double t8311;
  double t7712;
  double t7714;
  double t7773;
  double t7787;
  double t8392;
  double t8394;
  double t8399;
  double t8401;
  double t8378;
  double t8380;
  double t8386;
  double t8387;
  double t8361;
  double t8372;
  double t8373;
  double t8374;
  double t8403;
  double t8406;
  double t8419;
  double t8422;
  double t8445;
  double t8453;
  double t8457;
  double t8459;
  double t8429;
  double t8432;
  double t8433;
  double t8440;
  double t8443;
  double t8444;
  double t8462;
  double t8464;
  double t8467;
  double t8468;
  double t8475;
  double t8476;
  double t8480;
  double t8481;
  double t8483;
  double t8487;
  double t8489;
  double t8491;
  double t8492;
  double t8493;
  double t8498;
  double t8499;
  double t8500;
  double t8509;
  double t8516;
  double t8517;
  double t8518;
  double t8520;
  double t8525;
  double t8526;
  double t8527;
  double t8534;
  double t8536;
  double t8537;
  double t8539;
  double t8542;
  double t8545;
  double t8547;
  double t8548;
  double t8552;
  double t8554;
  double t8559;
  double t8560;
  double t8562;
  double t8564;
  double t8565;
  double t8566;
  double t8568;
  double t8570;
  double t8571;
  double t8573;
  double t8574;
  t145 = Cos(var1[3]);
  t629 = Cos(var1[6]);
  t639 = -1.*t629;
  t754 = 1. + t639;
  t823 = Sin(var1[6]);
  t196 = Cos(var1[5]);
  t473 = Sin(var1[3]);
  t266 = Sin(var1[4]);
  t483 = Sin(var1[5]);
  t1081 = Cos(var1[4]);
  t447 = t145*t196*t266;
  t526 = t473*t483;
  t559 = t447 + t526;
  t1514 = -1.*t196*t473;
  t1517 = t145*t266*t483;
  t1590 = t1514 + t1517;
  t1207 = -4.e-6*t823;
  t1243 = 0. + t1207;
  t1019 = -1.*t823;
  t1022 = 0. + t1019;
  t2485 = Cos(var1[7]);
  t2489 = -1.*t2485;
  t2511 = 1. + t2489;
  t2535 = Sin(var1[7]);
  t1771 = 4.e-6*t823;
  t1785 = 0. + t1771;
  t1827 = 0. + t823;
  t3082 = -1.000000000016*t754;
  t3092 = 1. + t3082;
  t3117 = t3092*t1590;
  t3126 = t145*t1081*t1785;
  t3135 = t559*t1827;
  t3155 = t3117 + t3126 + t3135;
  t2714 = -4.e-6*t145*t1081*t754;
  t2753 = -1.*t754;
  t2776 = 1. + t2753;
  t2784 = t2776*t559;
  t2795 = t1590*t1022;
  t2796 = t2714 + t2784 + t2795;
  t3178 = -8.e-6*t2535;
  t3186 = 0. + t3178;
  t2058 = -1.6e-11*t754;
  t2070 = 1. + t2058;
  t2133 = t145*t1081*t2070;
  t2138 = -4.e-6*t754*t559;
  t2262 = t1590*t1243;
  t2436 = t2133 + t2138 + t2262;
  t3357 = 0. + t2535;
  t3688 = Cos(var1[8]);
  t3700 = -1.*t3688;
  t3703 = 1. + t3700;
  t4313 = Cos(var1[9]);
  t4317 = -1.*t4313;
  t4383 = 1. + t4317;
  t3452 = -1.000000000064*t2511;
  t3503 = 1. + t3452;
  t3509 = t3503*t3155;
  t3562 = t2796*t3186;
  t3647 = t2436*t3357;
  t3650 = t3509 + t3562 + t3647;
  t2932 = 8.e-6*t2535;
  t2982 = 0. + t2932;
  t3865 = Sin(var1[8]);
  t3867 = -4.e-6*t3865;
  t3888 = 0. + t3867;
  t4990 = -6.4e-11*t2511;
  t5002 = 1. + t4990;
  t5008 = t5002*t2796;
  t5017 = 8.e-6*t2511*t2436;
  t5018 = t3155*t2982;
  t5164 = t5008 + t5017 + t5018;
  t4437 = Sin(var1[9]);
  t4697 = 8.e-6*t2511*t2796;
  t4745 = -1.*t2511;
  t4766 = 1. + t4745;
  t4795 = t4766*t2436;
  t4868 = -1.*t2535;
  t4885 = 0. + t4868;
  t4891 = t3155*t4885;
  t4896 = t4697 + t4795 + t4891;
  t5295 = -1.*t3865;
  t5316 = 0. + t5295;
  t5320 = 4.e-6*t3865;
  t5321 = 0. + t5320;
  t3720 = -4.e-6*t3703;
  t3809 = 0. + t3720;
  t4396 = -4.e-6*t4383;
  t4411 = 0. + t4396;
  t4675 = 4.e-6*t3703;
  t4684 = 0. + t4675;
  t5837 = 0. + t3865;
  t6249 = Cos(var1[10]);
  t6250 = -1.*t6249;
  t6251 = 1. + t6250;
  t4911 = t4684*t4896;
  t4921 = -1.6e-11*t3703;
  t4941 = 1. + t4921;
  t4953 = t4941*t3650;
  t5176 = t5164*t3888;
  t5182 = t4911 + t4953 + t5176;
  t6085 = 0. + t4437;
  t5597 = -1.000000000016*t3703;
  t5603 = 1. + t5597;
  t5658 = t5603*t5164;
  t5660 = t4896*t5316;
  t5667 = t3650*t5321;
  t5704 = t5658 + t5660 + t5667;
  t6104 = -1.*t3703;
  t6110 = 1. + t6104;
  t6161 = t6110*t4896;
  t6162 = t4684*t3650;
  t6167 = t5164*t5837;
  t6169 = t6161 + t6162 + t6167;
  t6268 = -4.e-6*t6251;
  t6271 = 0. + t6268;
  t6376 = Sin(var1[10]);
  t4449 = -4.e-6*t4437;
  t4481 = 0. + t4449;
  t6482 = 4.e-6*t4383;
  t6507 = 0. + t6482;
  t5498 = 4.e-6*t4437;
  t5558 = 0. + t5498;
  t5473 = -1.*t4437;
  t5487 = 0. + t5473;
  t6925 = Sin(var1[11]);
  t6734 = -1.*t6376;
  t6737 = 0. + t6734;
  t6508 = t6507*t5182;
  t6509 = t6085*t5704;
  t6510 = -1.*t4383;
  t6528 = 1. + t6510;
  t6530 = t6528*t6169;
  t6548 = t6508 + t6509 + t6530;
  t6790 = 4.e-6*t6376;
  t6795 = 0. + t6790;
  t6633 = -1.6e-11*t4383;
  t6670 = 1. + t6633;
  t6674 = t6670*t5182;
  t6693 = t4481*t5704;
  t6708 = t6507*t6169;
  t6713 = t6674 + t6693 + t6708;
  t6839 = t5558*t5182;
  t6846 = -1.000000000016*t4383;
  t6860 = 1. + t6846;
  t6861 = t6860*t5704;
  t6865 = t5487*t6169;
  t6870 = t6839 + t6861 + t6865;
  t6910 = Cos(var1[11]);
  t6913 = -1.*t6910;
  t6918 = 1. + t6913;
  t6582 = -4.e-6*t6376;
  t6600 = 0. + t6582;
  t7053 = -4.e-6*t6918;
  t7060 = 0. + t7053;
  t7111 = 4.e-6*t6251;
  t7121 = 0. + t7111;
  t6384 = 0. + t6376;
  t7331 = Cos(var1[12]);
  t7336 = -1.*t7331;
  t7343 = 1. + t7336;
  t7247 = 0. + t6925;
  t6991 = t6737*t6548;
  t6994 = t6795*t6713;
  t6995 = -1.000000000016*t6251;
  t7005 = 1. + t6995;
  t7010 = t7005*t6870;
  t7015 = t6991 + t6994 + t7010;
  t7126 = t7121*t6548;
  t7164 = -1.6e-11*t6251;
  t7165 = 1. + t7164;
  t7189 = t7165*t6713;
  t7190 = t6600*t6870;
  t7203 = t7126 + t7189 + t7190;
  t7253 = -1.*t6251;
  t7261 = 1. + t7253;
  t7295 = t7261*t6548;
  t7298 = t7121*t6713;
  t7307 = t6384*t6870;
  t7314 = t7295 + t7298 + t7307;
  t7347 = -4.e-6*t7343;
  t7351 = 0. + t7347;
  t7423 = Sin(var1[12]);
  t7085 = -4.e-6*t6925;
  t7090 = 0. + t7085;
  t7476 = 4.e-6*t6918;
  t7479 = 0. + t7476;
  t6943 = 4.e-6*t6925;
  t6944 = 0. + t6943;
  t6930 = -1.*t6925;
  t6937 = 0. + t6930;
  t7569 = -1.*t7423;
  t7572 = 0. + t7569;
  t7472 = t7247*t7015;
  t7480 = t7479*t7203;
  t7481 = -1.*t6918;
  t7491 = 1. + t7481;
  t7500 = t7491*t7314;
  t7503 = t7472 + t7480 + t7500;
  t7577 = 4.e-6*t7423;
  t7578 = 0. + t7577;
  t7531 = t7090*t7015;
  t7534 = -1.6e-11*t6918;
  t7535 = 1. + t7534;
  t7542 = t7535*t7203;
  t7549 = t7479*t7314;
  t7551 = t7531 + t7542 + t7549;
  t7607 = -1.000000000016*t6918;
  t7608 = 1. + t7607;
  t7609 = t7608*t7015;
  t7612 = t6944*t7203;
  t7615 = t6937*t7314;
  t7618 = t7609 + t7612 + t7615;
  t7521 = -4.e-6*t7423;
  t7522 = 0. + t7521;
  t7678 = 4.e-6*t7343;
  t7692 = 0. + t7678;
  t7442 = 0. + t7423;
  t590 = -1.84784e-12*var1[6];
  t817 = -0.04780500000076488*t754;
  t1046 = -0.13451000000399999*t1022;
  t1049 = t590 + t817 + t1046;
  t1108 = 4.6196000000000004e-7*var1[6];
  t1182 = -1.912200000030595e-7*t754;
  t1346 = -0.13451000000399999*t1243;
  t1374 = t1108 + t1182 + t1346;
  t1621 = -0.13451000000615215*t754;
  t1815 = -1.9122e-7*t1785;
  t1925 = -0.047805*t1827;
  t1953 = 0. + t1621 + t1815 + t1925;
  t7808 = t196*t473*t266;
  t7809 = -1.*t145*t483;
  t7812 = t7808 + t7809;
  t7856 = t145*t196;
  t7873 = t473*t266*t483;
  t7881 = t7856 + t7873;
  t2449 = 6.086399999999989e-13*var1[7];
  t2526 = -0.062500000004*t2511;
  t2547 = -1.*t2535;
  t2558 = 0. + t2547;
  t2575 = -0.13451000000799998*t2558;
  t2682 = t2449 + t2526 + t2575;
  t2827 = 7.607999999999987e-8*var1[7];
  t2870 = 5.000000000319999e-7*t2511;
  t2998 = -0.13451000000799998*t2982;
  t3010 = t2827 + t2870 + t2998;
  t3166 = -0.13451000001660862*t2511;
  t3353 = 5.e-7*t3186;
  t3395 = -0.0625*t3357;
  t3402 = 0. + t3166 + t3353 + t3395;
  t7942 = t3092*t7881;
  t7945 = t1081*t473*t1785;
  t7946 = t7812*t1827;
  t7958 = t7942 + t7945 + t7946;
  t7915 = -4.e-6*t1081*t754*t473;
  t7920 = t2776*t7812;
  t7929 = t7881*t1022;
  t7930 = t7915 + t7920 + t7929;
  t7892 = t1081*t2070*t473;
  t7897 = -4.e-6*t754*t7812;
  t7904 = t7881*t1243;
  t7908 = t7892 + t7897 + t7904;
  t3674 = 4.3677999999999997e-7*var1[8];
  t3838 = -0.0625*t3809;
  t3857 = 3.9999999999999995e-18*t3703;
  t3930 = -0.140805000004*t3888;
  t4112 = t3674 + t3838 + t3857 + t3930;
  t4235 = -4.3219999999999986e-8*var1[9];
  t4428 = -0.062501*t4411;
  t4429 = 4.000064e-18*t4383;
  t4485 = -0.26080500000400003*t4481;
  t4487 = t4235 + t4428 + t4429 + t4485;
  t7972 = t3503*t7958;
  t7973 = t7930*t3186;
  t7976 = t7908*t3357;
  t7979 = t7972 + t7973 + t7976;
  t8033 = t5002*t7930;
  t8043 = 8.e-6*t2511*t7908;
  t8044 = t7958*t2982;
  t8047 = t8033 + t8043 + t8044;
  t5270 = -0.1408050000062529*t3703;
  t5317 = -0.0625*t5316;
  t5326 = 2.5e-7*t5321;
  t5328 = 0. + t5270 + t5317 + t5326;
  t5459 = -0.2608050000081729*t4383;
  t5496 = -0.062501*t5487;
  t5566 = 2.50004e-7*t5558;
  t5590 = 0. + t5459 + t5496 + t5566;
  t7991 = 8.e-6*t2511*t7930;
  t7997 = t4766*t7908;
  t8019 = t7958*t4885;
  t8020 = t7991 + t7997 + t8019;
  t5761 = 1.7471199999999997e-12*var1[8];
  t5770 = 2.5e-7*t3809;
  t5773 = -0.0625*t3703;
  t5858 = -0.140805000004*t5837;
  t5860 = t5761 + t5770 + t5773 + t5858;
  t5864 = -1.7287999999999994e-13*var1[9];
  t5915 = 2.50004e-7*t4411;
  t5917 = -0.062501*t4383;
  t6090 = -0.26080500000400003*t6085;
  t6093 = t5864 + t5915 + t5917 + t6090;
  t6205 = -1.142576e-12*var1[10];
  t6335 = 6.0084e-8*t6271;
  t6339 = -0.015021*t6251;
  t6386 = -0.321411000004*t6384;
  t6396 = t6205 + t6335 + t6339 + t6386;
  t8023 = t4684*t8020;
  t8031 = t4941*t7979;
  t8051 = t8047*t3888;
  t8052 = t8023 + t8031 + t8051;
  t8064 = t5603*t8047;
  t8068 = t8020*t5316;
  t8069 = t7979*t5321;
  t8072 = t8064 + t8068 + t8069;
  t8082 = t6110*t8020;
  t8088 = t4684*t7979;
  t8090 = t8047*t5837;
  t8101 = t8082 + t8088 + t8090;
  t6557 = -2.85644e-7*var1[10];
  t6566 = -0.015021*t6271;
  t6567 = 9.61344e-19*t6251;
  t6617 = -0.321411000004*t6600;
  t6621 = t6557 + t6566 + t6567 + t6617;
  t6718 = -0.32141100000914263*t6251;
  t6771 = -0.015021*t6737;
  t6808 = 6.0084e-8*t6795;
  t6821 = 0. + t6718 + t6771 + t6808;
  t6924 = -0.7561810000240989*t6918;
  t6938 = 0.005553*t6937;
  t6979 = -2.2211999999999997e-8*t6944;
  t6987 = 0. + t6924 + t6938 + t6979;
  t8109 = t6507*t8052;
  t8110 = t6085*t8072;
  t8113 = t6528*t8101;
  t8138 = t8109 + t8110 + t8113;
  t8141 = t6670*t8052;
  t8146 = t4481*t8072;
  t8148 = t6507*t8101;
  t8151 = t8141 + t8146 + t8148;
  t8161 = t5558*t8052;
  t8163 = t6860*t8072;
  t8165 = t5487*t8101;
  t8169 = t8161 + t8163 + t8165;
  t7030 = -2.4723999999999765e-8*var1[11];
  t7063 = 0.005553*t7060;
  t7080 = -3.5539199999999996e-19*t6918;
  t7101 = -0.756181000012*t7090;
  t7107 = t7030 + t7063 + t7080 + t7101;
  t7208 = -9.889599999999905e-14*var1[11];
  t7229 = -2.2211999999999997e-8*t7060;
  t7241 = 0.005553*t6918;
  t7249 = -0.756181000012*t7247;
  t7251 = t7208 + t7229 + t7241 + t7249;
  t7319 = 1.3883040000000026e-12*var1[12];
  t7354 = 1.35636e-7*t7351;
  t7396 = -0.033909*t7343;
  t7446 = -1.16323100002*t7442;
  t7458 = t7319 + t7354 + t7396 + t7446;
  t8187 = t6737*t8138;
  t8192 = t6795*t8151;
  t8196 = t7005*t8169;
  t8220 = t8187 + t8192 + t8196;
  t8228 = t7121*t8138;
  t8231 = t7165*t8151;
  t8239 = t6600*t8169;
  t8243 = t8228 + t8231 + t8239;
  t8247 = t7261*t8138;
  t8249 = t7121*t8151;
  t8250 = t6384*t8169;
  t8252 = t8247 + t8249 + t8250;
  t7507 = 3.4707600000000064e-7*var1[12];
  t7509 = -0.033909*t7351;
  t7518 = 2.170176e-18*t7343;
  t7523 = -1.16323100002*t7522;
  t7524 = t7507 + t7509 + t7518 + t7523;
  t7566 = -1.1632310000386117*t7343;
  t7576 = -0.033909*t7572;
  t7581 = 1.35636e-7*t7578;
  t7588 = 0. + t7566 + t7576 + t7581;
  t8254 = t7247*t8220;
  t8255 = t7479*t8243;
  t8256 = t7491*t8252;
  t8259 = t8254 + t8255 + t8256;
  t8276 = t7090*t8220;
  t8279 = t7535*t8243;
  t8285 = t7479*t8252;
  t8290 = t8276 + t8279 + t8285;
  t7640 = -1.000000000016*t7343;
  t7641 = 1. + t7640;
  t8296 = t7608*t8220;
  t8300 = t6944*t8243;
  t8306 = t6937*t8252;
  t8311 = t8296 + t8300 + t8306;
  t7712 = -1.6e-11*t7343;
  t7714 = 1. + t7712;
  t7773 = -1.*t7343;
  t7787 = 1. + t7773;
  t8392 = t1081*t3092*t483;
  t8394 = -1.*t266*t1785;
  t8399 = t1081*t196*t1827;
  t8401 = t8392 + t8394 + t8399;
  t8378 = t1081*t196*t2776;
  t8380 = 4.e-6*t754*t266;
  t8386 = t1081*t483*t1022;
  t8387 = t8378 + t8380 + t8386;
  t8361 = -4.e-6*t1081*t196*t754;
  t8372 = -1.*t2070*t266;
  t8373 = t1081*t483*t1243;
  t8374 = t8361 + t8372 + t8373;
  t8403 = t3503*t8401;
  t8406 = t8387*t3186;
  t8419 = t8374*t3357;
  t8422 = t8403 + t8406 + t8419;
  t8445 = t5002*t8387;
  t8453 = 8.e-6*t2511*t8374;
  t8457 = t8401*t2982;
  t8459 = t8445 + t8453 + t8457;
  t8429 = 8.e-6*t2511*t8387;
  t8432 = t4766*t8374;
  t8433 = t8401*t4885;
  t8440 = t8429 + t8432 + t8433;
  t8443 = t4684*t8440;
  t8444 = t4941*t8422;
  t8462 = t8459*t3888;
  t8464 = t8443 + t8444 + t8462;
  t8467 = t5603*t8459;
  t8468 = t8440*t5316;
  t8475 = t8422*t5321;
  t8476 = t8467 + t8468 + t8475;
  t8480 = t6110*t8440;
  t8481 = t4684*t8422;
  t8483 = t8459*t5837;
  t8487 = t8480 + t8481 + t8483;
  t8489 = t6507*t8464;
  t8491 = t6085*t8476;
  t8492 = t6528*t8487;
  t8493 = t8489 + t8491 + t8492;
  t8498 = t6670*t8464;
  t8499 = t4481*t8476;
  t8500 = t6507*t8487;
  t8509 = t8498 + t8499 + t8500;
  t8516 = t5558*t8464;
  t8517 = t6860*t8476;
  t8518 = t5487*t8487;
  t8520 = t8516 + t8517 + t8518;
  t8525 = t6737*t8493;
  t8526 = t6795*t8509;
  t8527 = t7005*t8520;
  t8534 = t8525 + t8526 + t8527;
  t8536 = t7121*t8493;
  t8537 = t7165*t8509;
  t8539 = t6600*t8520;
  t8542 = t8536 + t8537 + t8539;
  t8545 = t7261*t8493;
  t8547 = t7121*t8509;
  t8548 = t6384*t8520;
  t8552 = t8545 + t8547 + t8548;
  t8554 = t7247*t8534;
  t8559 = t7479*t8542;
  t8560 = t7491*t8552;
  t8562 = t8554 + t8559 + t8560;
  t8564 = t7090*t8534;
  t8565 = t7535*t8542;
  t8566 = t7479*t8552;
  t8568 = t8564 + t8565 + t8566;
  t8570 = t7608*t8534;
  t8571 = t6944*t8542;
  t8573 = t6937*t8552;
  t8574 = t8570 + t8571 + t8573;
  p_output1[0]=t1081*t1374*t145 + t1590*t1953 + t2436*t2682 + t2796*t3010 + t3155*t3402 + t3650*t4112 + t4487*t5182 + t5164*t5328 + t1049*t559 + t5590*t5704 + t4896*t5860 + t6093*t6169 + t6396*t6548 + t6621*t6713 + t6821*t6870 + t6987*t7015 + t7107*t7203 + t7251*t7314 + t7458*t7503 + t7524*t7551 + t7588*t7618 - 1.220321*(t7503*t7572 + t7551*t7578 + t7618*t7641) - 0.137311*(t7522*t7618 + t7503*t7692 + t7551*t7714) - 0.03391*(t7442*t7618 + t7551*t7692 + t7503*t7787) + var1[0];
  p_output1[1]=t1081*t1374*t473 + t1049*t7812 + t1953*t7881 + t2682*t7908 + t3010*t7930 + t3402*t7958 + t4112*t7979 + t5860*t8020 + t5328*t8047 + t4487*t8052 + t5590*t8072 + t6093*t8101 + t6396*t8138 + t6621*t8151 + t6821*t8169 + t6987*t8220 + t7107*t8243 + t7251*t8252 + t7458*t8259 + t7524*t8290 + t7588*t8311 - 0.03391*(t7787*t8259 + t7692*t8290 + t7442*t8311) - 0.137311*(t7692*t8259 + t7714*t8290 + t7522*t8311) - 1.220321*(t7572*t8259 + t7578*t8290 + t7641*t8311) + var1[1];
  p_output1[2]=t1049*t1081*t196 - 1.*t1374*t266 + t1081*t1953*t483 + t2682*t8374 + t3010*t8387 + t3402*t8401 + t4112*t8422 + t5860*t8440 + t5328*t8459 + t4487*t8464 + t5590*t8476 + t6093*t8487 + t6396*t8493 + t6621*t8509 + t6821*t8520 + t6987*t8534 + t7107*t8542 + t7251*t8552 + t7458*t8562 + t7524*t8568 + t7588*t8574 - 0.03391*(t7787*t8562 + t7692*t8568 + t7442*t8574) - 0.137311*(t7692*t8562 + t7714*t8568 + t7522*t8574) - 1.220321*(t7572*t8562 + t7578*t8568 + t7641*t8574) + var1[2];
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

#include "p_RightToeBottom_mex.hh"

namespace SymExpression
{

void p_RightToeBottom_mex_raw(double *p_output1, const double *var1)
{
  // Call Subroutines
  output1(p_output1, var1);

}

}

#endif // MATLAB_MEX_FILE
