/*
 * Automatically Generated from Mathematica.
 * Thu 26 Mar 2020 17:47:45 GMT+08:00
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
  double t151;
  double t562;
  double t680;
  double t857;
  double t867;
  double t204;
  double t286;
  double t214;
  double t343;
  double t1364;
  double t249;
  double t345;
  double t432;
  double t1750;
  double t1791;
  double t2291;
  double t1465;
  double t1526;
  double t888;
  double t950;
  double t3623;
  double t3625;
  double t3635;
  double t3736;
  double t2365;
  double t2458;
  double t3012;
  double t4800;
  double t4985;
  double t4995;
  double t5129;
  double t5233;
  double t5246;
  double t4189;
  double t4202;
  double t4236;
  double t4314;
  double t4324;
  double t4366;
  double t5387;
  double t5630;
  double t3350;
  double t3359;
  double t3426;
  double t3447;
  double t3555;
  double t3577;
  double t5721;
  double t6275;
  double t6328;
  double t6611;
  double t6824;
  double t6828;
  double t6838;
  double t5874;
  double t5981;
  double t6008;
  double t6018;
  double t6037;
  double t6126;
  double t4496;
  double t4518;
  double t6664;
  double t6694;
  double t6696;
  double t7207;
  double t7208;
  double t7228;
  double t7234;
  double t7235;
  double t7236;
  double t6888;
  double t6953;
  double t7034;
  double t7054;
  double t7064;
  double t7081;
  double t7084;
  double t7085;
  double t7099;
  double t7258;
  double t7260;
  double t7262;
  double t7264;
  double t6645;
  double t6649;
  double t6841;
  double t6846;
  double t6945;
  double t6950;
  double t7335;
  double t7374;
  double t7375;
  double t7376;
  double t7121;
  double t7145;
  double t7177;
  double t7199;
  double t7237;
  double t7239;
  double t7353;
  double t7304;
  double t7305;
  double t7309;
  double t7314;
  double t7321;
  double t7322;
  double t7359;
  double t7360;
  double t7367;
  double t7368;
  double t7369;
  double t7370;
  double t7379;
  double t7381;
  double t7389;
  double t6924;
  double t6925;
  double t7400;
  double t7402;
  double t7290;
  double t7292;
  double t7280;
  double t7281;
  double t7491;
  double t7455;
  double t7456;
  double t7408;
  double t7410;
  double t7412;
  double t7413;
  double t7415;
  double t7416;
  double t7462;
  double t7466;
  double t7431;
  double t7433;
  double t7435;
  double t7436;
  double t7447;
  double t7448;
  double t7469;
  double t7472;
  double t7479;
  double t7480;
  double t7481;
  double t7482;
  double t7485;
  double t7486;
  double t7489;
  double t7426;
  double t7428;
  double t7515;
  double t7516;
  double t7529;
  double t7531;
  double t7390;
  double t7582;
  double t7583;
  double t7584;
  double t7556;
  double t7506;
  double t7507;
  double t7508;
  double t7509;
  double t7510;
  double t7512;
  double t7532;
  double t7534;
  double t7535;
  double t7536;
  double t7537;
  double t7542;
  double t7562;
  double t7569;
  double t7573;
  double t7574;
  double t7575;
  double t7577;
  double t7585;
  double t7591;
  double t7594;
  double t7521;
  double t7523;
  double t7605;
  double t7606;
  double t7496;
  double t7501;
  double t7493;
  double t7494;
  double t7660;
  double t7661;
  double t7603;
  double t7607;
  double t7608;
  double t7611;
  double t7612;
  double t7615;
  double t7666;
  double t7667;
  double t7644;
  double t7646;
  double t7647;
  double t7648;
  double t7650;
  double t7653;
  double t7670;
  double t7672;
  double t7674;
  double t7675;
  double t7676;
  double t7679;
  double t7635;
  double t7637;
  double t7693;
  double t7694;
  double t7599;
  double t545;
  double t863;
  double t1074;
  double t1282;
  double t1415;
  double t1417;
  double t1650;
  double t1696;
  double t2316;
  double t2857;
  double t3071;
  double t3192;
  double t7741;
  double t7742;
  double t7744;
  double t7752;
  double t7754;
  double t7755;
  double t3580;
  double t3726;
  double t4009;
  double t4010;
  double t4028;
  double t4044;
  double t4390;
  double t4492;
  double t4625;
  double t4689;
  double t5253;
  double t5660;
  double t5732;
  double t5765;
  double t7789;
  double t7790;
  double t7791;
  double t7792;
  double t7780;
  double t7782;
  double t7783;
  double t7786;
  double t7763;
  double t7764;
  double t7768;
  double t7769;
  double t6163;
  double t6650;
  double t6660;
  double t6711;
  double t6712;
  double t6811;
  double t6878;
  double t6884;
  double t6933;
  double t6941;
  double t7794;
  double t7795;
  double t7797;
  double t7798;
  double t7810;
  double t7811;
  double t7812;
  double t7813;
  double t7245;
  double t7261;
  double t7265;
  double t7266;
  double t7274;
  double t7284;
  double t7297;
  double t7298;
  double t7800;
  double t7802;
  double t7804;
  double t7807;
  double t7325;
  double t7329;
  double t7330;
  double t7339;
  double t7340;
  double t7345;
  double t7347;
  double t7350;
  double t7354;
  double t7357;
  double t7373;
  double t7382;
  double t7384;
  double t7394;
  double t7399;
  double t7808;
  double t7809;
  double t7814;
  double t7815;
  double t7819;
  double t7820;
  double t7821;
  double t7823;
  double t7828;
  double t7829;
  double t7830;
  double t7831;
  double t7421;
  double t7423;
  double t7425;
  double t7429;
  double t7430;
  double t7452;
  double t7457;
  double t7467;
  double t7468;
  double t7490;
  double t7495;
  double t7502;
  double t7504;
  double t7833;
  double t7834;
  double t7835;
  double t7836;
  double t7838;
  double t7839;
  double t7841;
  double t7842;
  double t7844;
  double t7846;
  double t7847;
  double t7849;
  double t7514;
  double t7517;
  double t7520;
  double t7524;
  double t7525;
  double t7544;
  double t7549;
  double t7555;
  double t7558;
  double t7560;
  double t7580;
  double t7592;
  double t7593;
  double t7601;
  double t7602;
  double t7851;
  double t7852;
  double t7854;
  double t7855;
  double t7857;
  double t7859;
  double t7861;
  double t7862;
  double t7864;
  double t7866;
  double t7867;
  double t7868;
  double t7624;
  double t7625;
  double t7632;
  double t7639;
  double t7643;
  double t7659;
  double t7663;
  double t7668;
  double t7669;
  double t7871;
  double t7872;
  double t7873;
  double t7875;
  double t7878;
  double t7879;
  double t7880;
  double t7882;
  double t7685;
  double t7686;
  double t7884;
  double t7887;
  double t7888;
  double t7889;
  double t7697;
  double t7701;
  double t7709;
  double t7715;
  double t7926;
  double t7927;
  double t7928;
  double t7929;
  double t7921;
  double t7922;
  double t7923;
  double t7924;
  double t7914;
  double t7915;
  double t7917;
  double t7918;
  double t7931;
  double t7932;
  double t7933;
  double t7935;
  double t7945;
  double t7946;
  double t7947;
  double t7948;
  double t7937;
  double t7938;
  double t7941;
  double t7942;
  double t7943;
  double t7944;
  double t7949;
  double t7950;
  double t7955;
  double t7956;
  double t7958;
  double t7959;
  double t7962;
  double t7963;
  double t7964;
  double t7965;
  double t7968;
  double t7971;
  double t7972;
  double t7973;
  double t7975;
  double t7978;
  double t7980;
  double t7981;
  double t7983;
  double t7985;
  double t7986;
  double t7987;
  double t7990;
  double t7991;
  double t7992;
  double t7993;
  double t7996;
  double t7997;
  double t7999;
  double t8000;
  double t8004;
  double t8005;
  double t8006;
  double t8007;
  double t8009;
  double t8010;
  double t8011;
  double t8012;
  double t8016;
  double t8017;
  double t8018;
  double t8019;
  double t8024;
  double t8026;
  double t8027;
  double t8030;
  t151 = Cos(var1[3]);
  t562 = Cos(var1[6]);
  t680 = -1.*t562;
  t857 = 1. + t680;
  t867 = Sin(var1[6]);
  t204 = Cos(var1[5]);
  t286 = Sin(var1[3]);
  t214 = Sin(var1[4]);
  t343 = Sin(var1[5]);
  t1364 = Cos(var1[4]);
  t249 = t151*t204*t214;
  t345 = t286*t343;
  t432 = t249 + t345;
  t1750 = -1.*t204*t286;
  t1791 = t151*t214*t343;
  t2291 = t1750 + t1791;
  t1465 = -4.e-6*t867;
  t1526 = 0. + t1465;
  t888 = -1.*t867;
  t950 = 0. + t888;
  t3623 = Cos(var1[7]);
  t3625 = -1.*t3623;
  t3635 = 1. + t3625;
  t3736 = Sin(var1[7]);
  t2365 = 4.e-6*t867;
  t2458 = 0. + t2365;
  t3012 = 0. + t867;
  t4800 = -1.000000000016*t857;
  t4985 = 1. + t4800;
  t4995 = t4985*t2291;
  t5129 = t151*t1364*t2458;
  t5233 = t432*t3012;
  t5246 = t4995 + t5129 + t5233;
  t4189 = -4.e-6*t151*t1364*t857;
  t4202 = -1.*t857;
  t4236 = 1. + t4202;
  t4314 = t4236*t432;
  t4324 = t2291*t950;
  t4366 = t4189 + t4314 + t4324;
  t5387 = -8.e-6*t3736;
  t5630 = 0. + t5387;
  t3350 = -1.6e-11*t857;
  t3359 = 1. + t3350;
  t3426 = t151*t1364*t3359;
  t3447 = -4.e-6*t857*t432;
  t3555 = t2291*t1526;
  t3577 = t3426 + t3447 + t3555;
  t5721 = 0. + t3736;
  t6275 = Cos(var1[8]);
  t6328 = -1.*t6275;
  t6611 = 1. + t6328;
  t6824 = Cos(var1[9]);
  t6828 = -1.*t6824;
  t6838 = 1. + t6828;
  t5874 = -1.000000000064*t3635;
  t5981 = 1. + t5874;
  t6008 = t5981*t5246;
  t6018 = t4366*t5630;
  t6037 = t3577*t5721;
  t6126 = t6008 + t6018 + t6037;
  t4496 = 8.e-6*t3736;
  t4518 = 0. + t4496;
  t6664 = Sin(var1[8]);
  t6694 = -4.e-6*t6664;
  t6696 = 0. + t6694;
  t7207 = -6.4e-11*t3635;
  t7208 = 1. + t7207;
  t7228 = t7208*t4366;
  t7234 = 8.e-6*t3635*t3577;
  t7235 = t5246*t4518;
  t7236 = t7228 + t7234 + t7235;
  t6888 = Sin(var1[9]);
  t6953 = 8.e-6*t3635*t4366;
  t7034 = -1.*t3635;
  t7054 = 1. + t7034;
  t7064 = t7054*t3577;
  t7081 = -1.*t3736;
  t7084 = 0. + t7081;
  t7085 = t5246*t7084;
  t7099 = t6953 + t7064 + t7085;
  t7258 = -1.*t6664;
  t7260 = 0. + t7258;
  t7262 = 4.e-6*t6664;
  t7264 = 0. + t7262;
  t6645 = -4.e-6*t6611;
  t6649 = 0. + t6645;
  t6841 = -4.e-6*t6838;
  t6846 = 0. + t6841;
  t6945 = 4.e-6*t6611;
  t6950 = 0. + t6945;
  t7335 = 0. + t6664;
  t7374 = Cos(var1[10]);
  t7375 = -1.*t7374;
  t7376 = 1. + t7375;
  t7121 = t6950*t7099;
  t7145 = -1.6e-11*t6611;
  t7177 = 1. + t7145;
  t7199 = t7177*t6126;
  t7237 = t7236*t6696;
  t7239 = t7121 + t7199 + t7237;
  t7353 = 0. + t6888;
  t7304 = -1.000000000016*t6611;
  t7305 = 1. + t7304;
  t7309 = t7305*t7236;
  t7314 = t7099*t7260;
  t7321 = t6126*t7264;
  t7322 = t7309 + t7314 + t7321;
  t7359 = -1.*t6611;
  t7360 = 1. + t7359;
  t7367 = t7360*t7099;
  t7368 = t6950*t6126;
  t7369 = t7236*t7335;
  t7370 = t7367 + t7368 + t7369;
  t7379 = -4.e-6*t7376;
  t7381 = 0. + t7379;
  t7389 = Sin(var1[10]);
  t6924 = -4.e-6*t6888;
  t6925 = 0. + t6924;
  t7400 = 4.e-6*t6838;
  t7402 = 0. + t7400;
  t7290 = 4.e-6*t6888;
  t7292 = 0. + t7290;
  t7280 = -1.*t6888;
  t7281 = 0. + t7280;
  t7491 = Sin(var1[11]);
  t7455 = -1.*t7389;
  t7456 = 0. + t7455;
  t7408 = t7402*t7239;
  t7410 = t7353*t7322;
  t7412 = -1.*t6838;
  t7413 = 1. + t7412;
  t7415 = t7413*t7370;
  t7416 = t7408 + t7410 + t7415;
  t7462 = 4.e-6*t7389;
  t7466 = 0. + t7462;
  t7431 = -1.6e-11*t6838;
  t7433 = 1. + t7431;
  t7435 = t7433*t7239;
  t7436 = t6925*t7322;
  t7447 = t7402*t7370;
  t7448 = t7435 + t7436 + t7447;
  t7469 = t7292*t7239;
  t7472 = -1.000000000016*t6838;
  t7479 = 1. + t7472;
  t7480 = t7479*t7322;
  t7481 = t7281*t7370;
  t7482 = t7469 + t7480 + t7481;
  t7485 = Cos(var1[11]);
  t7486 = -1.*t7485;
  t7489 = 1. + t7486;
  t7426 = -4.e-6*t7389;
  t7428 = 0. + t7426;
  t7515 = -4.e-6*t7489;
  t7516 = 0. + t7515;
  t7529 = 4.e-6*t7376;
  t7531 = 0. + t7529;
  t7390 = 0. + t7389;
  t7582 = Cos(var1[12]);
  t7583 = -1.*t7582;
  t7584 = 1. + t7583;
  t7556 = 0. + t7491;
  t7506 = t7456*t7416;
  t7507 = t7466*t7448;
  t7508 = -1.000000000016*t7376;
  t7509 = 1. + t7508;
  t7510 = t7509*t7482;
  t7512 = t7506 + t7507 + t7510;
  t7532 = t7531*t7416;
  t7534 = -1.6e-11*t7376;
  t7535 = 1. + t7534;
  t7536 = t7535*t7448;
  t7537 = t7428*t7482;
  t7542 = t7532 + t7536 + t7537;
  t7562 = -1.*t7376;
  t7569 = 1. + t7562;
  t7573 = t7569*t7416;
  t7574 = t7531*t7448;
  t7575 = t7390*t7482;
  t7577 = t7573 + t7574 + t7575;
  t7585 = -4.e-6*t7584;
  t7591 = 0. + t7585;
  t7594 = Sin(var1[12]);
  t7521 = -4.e-6*t7491;
  t7523 = 0. + t7521;
  t7605 = 4.e-6*t7489;
  t7606 = 0. + t7605;
  t7496 = 4.e-6*t7491;
  t7501 = 0. + t7496;
  t7493 = -1.*t7491;
  t7494 = 0. + t7493;
  t7660 = -1.*t7594;
  t7661 = 0. + t7660;
  t7603 = t7556*t7512;
  t7607 = t7606*t7542;
  t7608 = -1.*t7489;
  t7611 = 1. + t7608;
  t7612 = t7611*t7577;
  t7615 = t7603 + t7607 + t7612;
  t7666 = 4.e-6*t7594;
  t7667 = 0. + t7666;
  t7644 = t7523*t7512;
  t7646 = -1.6e-11*t7489;
  t7647 = 1. + t7646;
  t7648 = t7647*t7542;
  t7650 = t7606*t7577;
  t7653 = t7644 + t7648 + t7650;
  t7670 = -1.000000000016*t7489;
  t7672 = 1. + t7670;
  t7674 = t7672*t7512;
  t7675 = t7501*t7542;
  t7676 = t7494*t7577;
  t7679 = t7674 + t7675 + t7676;
  t7635 = -4.e-6*t7594;
  t7637 = 0. + t7635;
  t7693 = 4.e-6*t7584;
  t7694 = 0. + t7693;
  t7599 = 0. + t7594;
  t545 = -1.84784e-12*var1[6];
  t863 = -0.04780500000076488*t857;
  t1074 = -0.13451000000399999*t950;
  t1282 = t545 + t863 + t1074;
  t1415 = 4.6196000000000004e-7*var1[6];
  t1417 = -1.912200000030595e-7*t857;
  t1650 = -0.13451000000399999*t1526;
  t1696 = t1415 + t1417 + t1650;
  t2316 = -0.13451000000615215*t857;
  t2857 = -1.9122e-7*t2458;
  t3071 = -0.047805*t3012;
  t3192 = 0. + t2316 + t2857 + t3071;
  t7741 = t204*t286*t214;
  t7742 = -1.*t151*t343;
  t7744 = t7741 + t7742;
  t7752 = t151*t204;
  t7754 = t286*t214*t343;
  t7755 = t7752 + t7754;
  t3580 = 6.086399999999989e-13*var1[7];
  t3726 = -0.062500000004*t3635;
  t4009 = -1.*t3736;
  t4010 = 0. + t4009;
  t4028 = -0.13451000000799998*t4010;
  t4044 = t3580 + t3726 + t4028;
  t4390 = 7.607999999999987e-8*var1[7];
  t4492 = 5.000000000319999e-7*t3635;
  t4625 = -0.13451000000799998*t4518;
  t4689 = t4390 + t4492 + t4625;
  t5253 = -0.13451000001660862*t3635;
  t5660 = 5.e-7*t5630;
  t5732 = -0.0625*t5721;
  t5765 = 0. + t5253 + t5660 + t5732;
  t7789 = t4985*t7755;
  t7790 = t1364*t286*t2458;
  t7791 = t7744*t3012;
  t7792 = t7789 + t7790 + t7791;
  t7780 = -4.e-6*t1364*t857*t286;
  t7782 = t4236*t7744;
  t7783 = t7755*t950;
  t7786 = t7780 + t7782 + t7783;
  t7763 = t1364*t3359*t286;
  t7764 = -4.e-6*t857*t7744;
  t7768 = t7755*t1526;
  t7769 = t7763 + t7764 + t7768;
  t6163 = 4.3677999999999997e-7*var1[8];
  t6650 = -0.0625*t6649;
  t6660 = 3.9999999999999995e-18*t6611;
  t6711 = -0.140805000004*t6696;
  t6712 = t6163 + t6650 + t6660 + t6711;
  t6811 = -4.3219999999999986e-8*var1[9];
  t6878 = -0.062501*t6846;
  t6884 = 4.000064e-18*t6838;
  t6933 = -0.26080500000400003*t6925;
  t6941 = t6811 + t6878 + t6884 + t6933;
  t7794 = t5981*t7792;
  t7795 = t7786*t5630;
  t7797 = t7769*t5721;
  t7798 = t7794 + t7795 + t7797;
  t7810 = t7208*t7786;
  t7811 = 8.e-6*t3635*t7769;
  t7812 = t7792*t4518;
  t7813 = t7810 + t7811 + t7812;
  t7245 = -0.1408050000062529*t6611;
  t7261 = -0.0625*t7260;
  t7265 = 2.5e-7*t7264;
  t7266 = 0. + t7245 + t7261 + t7265;
  t7274 = -0.2608050000081729*t6838;
  t7284 = -0.062501*t7281;
  t7297 = 2.50004e-7*t7292;
  t7298 = 0. + t7274 + t7284 + t7297;
  t7800 = 8.e-6*t3635*t7786;
  t7802 = t7054*t7769;
  t7804 = t7792*t7084;
  t7807 = t7800 + t7802 + t7804;
  t7325 = 1.7471199999999997e-12*var1[8];
  t7329 = 2.5e-7*t6649;
  t7330 = -0.0625*t6611;
  t7339 = -0.140805000004*t7335;
  t7340 = t7325 + t7329 + t7330 + t7339;
  t7345 = -1.7287999999999994e-13*var1[9];
  t7347 = 2.50004e-7*t6846;
  t7350 = -0.062501*t6838;
  t7354 = -0.26080500000400003*t7353;
  t7357 = t7345 + t7347 + t7350 + t7354;
  t7373 = -1.142576e-12*var1[10];
  t7382 = 6.0084e-8*t7381;
  t7384 = -0.015021*t7376;
  t7394 = -0.321411000004*t7390;
  t7399 = t7373 + t7382 + t7384 + t7394;
  t7808 = t6950*t7807;
  t7809 = t7177*t7798;
  t7814 = t7813*t6696;
  t7815 = t7808 + t7809 + t7814;
  t7819 = t7305*t7813;
  t7820 = t7807*t7260;
  t7821 = t7798*t7264;
  t7823 = t7819 + t7820 + t7821;
  t7828 = t7360*t7807;
  t7829 = t6950*t7798;
  t7830 = t7813*t7335;
  t7831 = t7828 + t7829 + t7830;
  t7421 = -2.85644e-7*var1[10];
  t7423 = -0.015021*t7381;
  t7425 = 9.61344e-19*t7376;
  t7429 = -0.321411000004*t7428;
  t7430 = t7421 + t7423 + t7425 + t7429;
  t7452 = -0.32141100000914263*t7376;
  t7457 = -0.015021*t7456;
  t7467 = 6.0084e-8*t7466;
  t7468 = 0. + t7452 + t7457 + t7467;
  t7490 = -0.7561810000240989*t7489;
  t7495 = 0.005553*t7494;
  t7502 = -2.2211999999999997e-8*t7501;
  t7504 = 0. + t7490 + t7495 + t7502;
  t7833 = t7402*t7815;
  t7834 = t7353*t7823;
  t7835 = t7413*t7831;
  t7836 = t7833 + t7834 + t7835;
  t7838 = t7433*t7815;
  t7839 = t6925*t7823;
  t7841 = t7402*t7831;
  t7842 = t7838 + t7839 + t7841;
  t7844 = t7292*t7815;
  t7846 = t7479*t7823;
  t7847 = t7281*t7831;
  t7849 = t7844 + t7846 + t7847;
  t7514 = -2.4723999999999765e-8*var1[11];
  t7517 = 0.005553*t7516;
  t7520 = -3.5539199999999996e-19*t7489;
  t7524 = -0.756181000012*t7523;
  t7525 = t7514 + t7517 + t7520 + t7524;
  t7544 = -9.889599999999905e-14*var1[11];
  t7549 = -2.2211999999999997e-8*t7516;
  t7555 = 0.005553*t7489;
  t7558 = -0.756181000012*t7556;
  t7560 = t7544 + t7549 + t7555 + t7558;
  t7580 = 1.3883040000000026e-12*var1[12];
  t7592 = 1.35636e-7*t7591;
  t7593 = -0.033909*t7584;
  t7601 = -1.16323100002*t7599;
  t7602 = t7580 + t7592 + t7593 + t7601;
  t7851 = t7456*t7836;
  t7852 = t7466*t7842;
  t7854 = t7509*t7849;
  t7855 = t7851 + t7852 + t7854;
  t7857 = t7531*t7836;
  t7859 = t7535*t7842;
  t7861 = t7428*t7849;
  t7862 = t7857 + t7859 + t7861;
  t7864 = t7569*t7836;
  t7866 = t7531*t7842;
  t7867 = t7390*t7849;
  t7868 = t7864 + t7866 + t7867;
  t7624 = 3.4707600000000064e-7*var1[12];
  t7625 = -0.033909*t7591;
  t7632 = 2.170176e-18*t7584;
  t7639 = -1.16323100002*t7637;
  t7643 = t7624 + t7625 + t7632 + t7639;
  t7659 = -1.1632310000386117*t7584;
  t7663 = -0.033909*t7661;
  t7668 = 1.35636e-7*t7667;
  t7669 = 0. + t7659 + t7663 + t7668;
  t7871 = t7556*t7855;
  t7872 = t7606*t7862;
  t7873 = t7611*t7868;
  t7875 = t7871 + t7872 + t7873;
  t7878 = t7523*t7855;
  t7879 = t7647*t7862;
  t7880 = t7606*t7868;
  t7882 = t7878 + t7879 + t7880;
  t7685 = -1.000000000016*t7584;
  t7686 = 1. + t7685;
  t7884 = t7672*t7855;
  t7887 = t7501*t7862;
  t7888 = t7494*t7868;
  t7889 = t7884 + t7887 + t7888;
  t7697 = -1.6e-11*t7584;
  t7701 = 1. + t7697;
  t7709 = -1.*t7584;
  t7715 = 1. + t7709;
  t7926 = t1364*t4985*t343;
  t7927 = -1.*t214*t2458;
  t7928 = t1364*t204*t3012;
  t7929 = t7926 + t7927 + t7928;
  t7921 = t1364*t204*t4236;
  t7922 = 4.e-6*t857*t214;
  t7923 = t1364*t343*t950;
  t7924 = t7921 + t7922 + t7923;
  t7914 = -4.e-6*t1364*t204*t857;
  t7915 = -1.*t3359*t214;
  t7917 = t1364*t343*t1526;
  t7918 = t7914 + t7915 + t7917;
  t7931 = t5981*t7929;
  t7932 = t7924*t5630;
  t7933 = t7918*t5721;
  t7935 = t7931 + t7932 + t7933;
  t7945 = t7208*t7924;
  t7946 = 8.e-6*t3635*t7918;
  t7947 = t7929*t4518;
  t7948 = t7945 + t7946 + t7947;
  t7937 = 8.e-6*t3635*t7924;
  t7938 = t7054*t7918;
  t7941 = t7929*t7084;
  t7942 = t7937 + t7938 + t7941;
  t7943 = t6950*t7942;
  t7944 = t7177*t7935;
  t7949 = t7948*t6696;
  t7950 = t7943 + t7944 + t7949;
  t7955 = t7305*t7948;
  t7956 = t7942*t7260;
  t7958 = t7935*t7264;
  t7959 = t7955 + t7956 + t7958;
  t7962 = t7360*t7942;
  t7963 = t6950*t7935;
  t7964 = t7948*t7335;
  t7965 = t7962 + t7963 + t7964;
  t7968 = t7402*t7950;
  t7971 = t7353*t7959;
  t7972 = t7413*t7965;
  t7973 = t7968 + t7971 + t7972;
  t7975 = t7433*t7950;
  t7978 = t6925*t7959;
  t7980 = t7402*t7965;
  t7981 = t7975 + t7978 + t7980;
  t7983 = t7292*t7950;
  t7985 = t7479*t7959;
  t7986 = t7281*t7965;
  t7987 = t7983 + t7985 + t7986;
  t7990 = t7456*t7973;
  t7991 = t7466*t7981;
  t7992 = t7509*t7987;
  t7993 = t7990 + t7991 + t7992;
  t7996 = t7531*t7973;
  t7997 = t7535*t7981;
  t7999 = t7428*t7987;
  t8000 = t7996 + t7997 + t7999;
  t8004 = t7569*t7973;
  t8005 = t7531*t7981;
  t8006 = t7390*t7987;
  t8007 = t8004 + t8005 + t8006;
  t8009 = t7556*t7993;
  t8010 = t7606*t8000;
  t8011 = t7611*t8007;
  t8012 = t8009 + t8010 + t8011;
  t8016 = t7523*t7993;
  t8017 = t7647*t8000;
  t8018 = t7606*t8007;
  t8019 = t8016 + t8017 + t8018;
  t8024 = t7672*t7993;
  t8026 = t7501*t8000;
  t8027 = t7494*t8007;
  t8030 = t8024 + t8026 + t8027;
  p_output1[0]=t1364*t151*t1696 + t2291*t3192 + t3577*t4044 + t1282*t432 + t4366*t4689 + t5246*t5765 + t6126*t6712 + t6941*t7239 + t7236*t7266 + t7298*t7322 + t7099*t7340 + t7357*t7370 + t7399*t7416 + t7430*t7448 + t7468*t7482 + t7504*t7512 + t7525*t7542 + t7560*t7577 + t7602*t7615 + t7643*t7653 + t7669*t7679 - 1.163231*(t7615*t7661 + t7653*t7667 + t7679*t7686) - 0.137311*(t7637*t7679 + t7615*t7694 + t7653*t7701) - 0.03391*(t7599*t7679 + t7653*t7694 + t7615*t7715) + var1[0];
  p_output1[1]=t1364*t1696*t286 + t1282*t7744 + t3192*t7755 + t4044*t7769 + t4689*t7786 + t5765*t7792 + t6712*t7798 + t7340*t7807 + t7266*t7813 + t6941*t7815 + t7298*t7823 + t7357*t7831 + t7399*t7836 + t7430*t7842 + t7468*t7849 + t7504*t7855 + t7525*t7862 + t7560*t7868 + t7602*t7875 + t7643*t7882 + t7669*t7889 - 0.03391*(t7715*t7875 + t7694*t7882 + t7599*t7889) - 0.137311*(t7694*t7875 + t7701*t7882 + t7637*t7889) - 1.163231*(t7661*t7875 + t7667*t7882 + t7686*t7889) + var1[1];
  p_output1[2]=t1282*t1364*t204 - 1.*t1696*t214 + t1364*t3192*t343 + t4044*t7918 + t4689*t7924 + t5765*t7929 + t6712*t7935 + t7340*t7942 + t7266*t7948 + t6941*t7950 + t7298*t7959 + t7357*t7965 + t7399*t7973 + t7430*t7981 + t7468*t7987 + t7504*t7993 + t7525*t8000 + t7560*t8007 + t7602*t8012 + t7643*t8019 + t7669*t8030 - 0.03391*(t7715*t8012 + t7694*t8019 + t7599*t8030) - 0.137311*(t7694*t8012 + t7701*t8019 + t7637*t8030) - 1.163231*(t7661*t8012 + t7667*t8019 + t7686*t8030) + var1[2];
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

#include "p_toe_joint_right_mex.hh"

namespace SymExpression
{

void p_toe_joint_right_mex_raw(double *p_output1, const double *var1)
{
  // Call Subroutines
  output1(p_output1, var1);

}

}

#endif // MATLAB_MEX_FILE
