/*
 * Automatically Generated from Mathematica.
 * Thu 26 Mar 2020 17:48:35 GMT+08:00
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
  double t312;
  double t476;
  double t494;
  double t579;
  double t34;
  double t932;
  double t1066;
  double t960;
  double t1083;
  double t1921;
  double t72;
  double t1192;
  double t1240;
  double t1305;
  double t1014;
  double t1141;
  double t1154;
  double t1408;
  double t1423;
  double t1501;
  double t1580;
  double t1639;
  double t1691;
  double t777;
  double t815;
  double t595;
  double t634;
  double t3517;
  double t3573;
  double t3667;
  double t2186;
  double t2193;
  double t2252;
  double t2425;
  double t2456;
  double t2465;
  double t2661;
  double t2674;
  double t2677;
  double t2734;
  double t2757;
  double t2777;
  double t3009;
  double t3036;
  double t3158;
  double t3263;
  double t3269;
  double t3278;
  double t3704;
  double t2605;
  double t2606;
  double t3684;
  double t3687;
  double t1924;
  double t1934;
  double t2038;
  double t5639;
  double t5653;
  double t5737;
  double t3790;
  double t3824;
  double t3899;
  double t4055;
  double t4070;
  double t4108;
  double t4263;
  double t4275;
  double t5308;
  double t5352;
  double t4985;
  double t4991;
  double t4999;
  double t5000;
  double t5017;
  double t5019;
  double t5367;
  double t5380;
  double t5387;
  double t5407;
  double t5409;
  double t5445;
  double t5744;
  double t5772;
  double t5845;
  double t3707;
  double t5875;
  double t5910;
  double t4498;
  double t4629;
  double t4800;
  double t4810;
  double t6840;
  double t6668;
  double t6712;
  double t5928;
  double t5930;
  double t5933;
  double t5997;
  double t6036;
  double t6101;
  double t6610;
  double t6613;
  double t6382;
  double t6408;
  double t6448;
  double t6482;
  double t6496;
  double t6553;
  double t6725;
  double t6745;
  double t6748;
  double t6752;
  double t6761;
  double t6765;
  double t6819;
  double t6823;
  double t6831;
  double t5848;
  double t5849;
  double t7085;
  double t7107;
  double t7186;
  double t7190;
  double t6244;
  double t7359;
  double t7366;
  double t7390;
  double t7307;
  double t6970;
  double t6981;
  double t6982;
  double t6985;
  double t6996;
  double t7010;
  double t7177;
  double t7181;
  double t7185;
  double t7211;
  double t7218;
  double t7250;
  double t7319;
  double t7326;
  double t7338;
  double t7339;
  double t7340;
  double t7341;
  double t7409;
  double t7419;
  double t7443;
  double t7126;
  double t7140;
  double t7462;
  double t7466;
  double t6918;
  double t6959;
  double t6878;
  double t6905;
  double t7743;
  double t7610;
  double t7613;
  double t7455;
  double t7471;
  double t7485;
  double t7490;
  double t7503;
  double t7505;
  double t7654;
  double t7656;
  double t7583;
  double t7584;
  double t7589;
  double t7597;
  double t7600;
  double t7607;
  double t7662;
  double t7663;
  double t7678;
  double t7692;
  double t7693;
  double t7702;
  double t7710;
  double t7711;
  double t7718;
  double t7547;
  double t7572;
  double t7854;
  double t7864;
  double t7918;
  double t7921;
  double t7445;
  double t7991;
  double t7809;
  double t7812;
  double t7824;
  double t7827;
  double t7828;
  double t7839;
  double t7932;
  double t7953;
  double t7955;
  double t7965;
  double t7968;
  double t7969;
  double t8011;
  double t8016;
  double t8021;
  double t8031;
  double t8034;
  double t8045;
  double t7888;
  double t7908;
  double t8062;
  double t8063;
  double t7780;
  double t7782;
  double t7759;
  double t7772;
  double t92;
  double t541;
  double t650;
  double t727;
  double t750;
  double t769;
  double t845;
  double t899;
  double t1189;
  double t1262;
  double t1375;
  double t1399;
  double t1733;
  double t1945;
  double t2050;
  double t2077;
  double t8174;
  double t8185;
  double t8188;
  double t8194;
  double t8196;
  double t8198;
  double t2502;
  double t2584;
  double t2628;
  double t2657;
  double t2814;
  double t2839;
  double t2859;
  double t2897;
  double t2916;
  double t2995;
  double t3439;
  double t3698;
  double t3700;
  double t3726;
  double t3782;
  double t8211;
  double t8213;
  double t8217;
  double t8225;
  double t8228;
  double t8235;
  double t8238;
  double t8239;
  double t8246;
  double t8247;
  double t8256;
  double t8259;
  double t4496;
  double t4768;
  double t4902;
  double t4965;
  double t5037;
  double t5193;
  double t5266;
  double t5354;
  double t5361;
  double t5501;
  double t5823;
  double t5842;
  double t5855;
  double t5860;
  double t8269;
  double t8273;
  double t8274;
  double t8282;
  double t8287;
  double t8288;
  double t8289;
  double t8292;
  double t8299;
  double t8301;
  double t8307;
  double t8311;
  double t6136;
  double t6211;
  double t6239;
  double t6348;
  double t6374;
  double t6567;
  double t6644;
  double t6714;
  double t6720;
  double t6839;
  double t6916;
  double t6967;
  double t6968;
  double t8321;
  double t8324;
  double t8326;
  double t8327;
  double t8329;
  double t8332;
  double t8335;
  double t8336;
  double t8338;
  double t8340;
  double t8341;
  double t8345;
  double t7075;
  double t7113;
  double t7122;
  double t7144;
  double t7162;
  double t7262;
  double t7303;
  double t7304;
  double t7314;
  double t7318;
  double t7349;
  double t7421;
  double t7436;
  double t7451;
  double t7452;
  double t8350;
  double t8351;
  double t8352;
  double t8354;
  double t8358;
  double t8359;
  double t8361;
  double t8374;
  double t8377;
  double t8380;
  double t8382;
  double t8386;
  double t7518;
  double t7533;
  double t7537;
  double t7577;
  double t7581;
  double t7609;
  double t7651;
  double t7658;
  double t7661;
  double t7732;
  double t7773;
  double t7799;
  double t7808;
  double t8392;
  double t8394;
  double t8399;
  double t8402;
  double t8422;
  double t8429;
  double t8432;
  double t8433;
  double t8443;
  double t8444;
  double t8445;
  double t8450;
  double t7847;
  double t7882;
  double t7884;
  double t7914;
  double t7915;
  double t7981;
  double t7983;
  double t7986;
  double t7993;
  double t8010;
  double t8457;
  double t8459;
  double t8462;
  double t8464;
  double t8468;
  double t8474;
  double t8475;
  double t8476;
  double t8066;
  double t8067;
  double t8479;
  double t8480;
  double t8481;
  double t8483;
  double t8096;
  double t8100;
  double t8118;
  double t8137;
  double t8526;
  double t8531;
  double t8534;
  double t8535;
  double t8537;
  double t8539;
  double t8542;
  double t8545;
  double t8553;
  double t8556;
  double t8557;
  double t8559;
  double t8563;
  double t8564;
  double t8568;
  double t8570;
  double t8574;
  double t8577;
  double t8578;
  double t8581;
  double t8583;
  double t8586;
  double t8590;
  double t8592;
  double t8594;
  double t8595;
  double t8596;
  double t8597;
  double t8603;
  double t8608;
  double t8609;
  double t8610;
  double t8613;
  double t8614;
  double t8615;
  double t8617;
  double t8623;
  double t8628;
  double t8630;
  double t8631;
  double t8635;
  double t8636;
  double t8637;
  double t8638;
  double t8641;
  double t8645;
  double t8646;
  double t8647;
  double t8650;
  double t8651;
  double t8652;
  double t8656;
  double t8667;
  double t8668;
  double t8669;
  double t8673;
  double t8676;
  double t8678;
  double t8679;
  double t8682;
  double t8684;
  double t8686;
  double t8687;
  double t8688;
  double t8690;
  double t8691;
  double t8692;
  double t8693;
  double t8696;
  double t8697;
  double t8698;
  double t8699;
  t312 = Cos(var1[13]);
  t476 = -1.*t312;
  t494 = 1. + t476;
  t579 = Sin(var1[13]);
  t34 = Cos(var1[3]);
  t932 = Cos(var1[5]);
  t1066 = Sin(var1[3]);
  t960 = Sin(var1[4]);
  t1083 = Sin(var1[5]);
  t1921 = Sin(var1[14]);
  t72 = Cos(var1[4]);
  t1192 = 4.e-6*t579;
  t1240 = 0. + t1192;
  t1305 = 0. + t579;
  t1014 = t34*t932*t960;
  t1141 = t1066*t1083;
  t1154 = t1014 + t1141;
  t1408 = -1.*t932*t1066;
  t1423 = t34*t960*t1083;
  t1501 = t1408 + t1423;
  t1580 = Cos(var1[14]);
  t1639 = -1.*t1580;
  t1691 = 1. + t1639;
  t777 = -1.*t579;
  t815 = 0. + t777;
  t595 = -4.e-6*t579;
  t634 = 0. + t595;
  t3517 = Cos(var1[15]);
  t3573 = -1.*t3517;
  t3667 = 1. + t3573;
  t2186 = t34*t72*t1240;
  t2193 = t1305*t1154;
  t2252 = -1.000000000016*t494;
  t2425 = 1. + t2252;
  t2456 = t2425*t1501;
  t2465 = t2186 + t2193 + t2456;
  t2661 = -4.e-6*t494*t34*t72;
  t2674 = -1.*t494;
  t2677 = 1. + t2674;
  t2734 = t2677*t1154;
  t2757 = t815*t1501;
  t2777 = t2661 + t2734 + t2757;
  t3009 = -1.6e-11*t494;
  t3036 = 1. + t3009;
  t3158 = t3036*t34*t72;
  t3263 = -4.e-6*t494*t1154;
  t3269 = t634*t1501;
  t3278 = t3158 + t3263 + t3269;
  t3704 = Sin(var1[15]);
  t2605 = 8.e-6*t1921;
  t2606 = 0. + t2605;
  t3684 = -4.e-6*t3667;
  t3687 = 0. + t3684;
  t1924 = -8.e-6*t1921;
  t1934 = 0. + t1924;
  t2038 = 0. + t1921;
  t5639 = Cos(var1[16]);
  t5653 = -1.*t5639;
  t5737 = 1. + t5653;
  t3790 = -1.*t1921;
  t3824 = 0. + t3790;
  t3899 = t3824*t2465;
  t4055 = 8.e-6*t1691*t2777;
  t4070 = -1.*t1691;
  t4108 = 1. + t4070;
  t4263 = t4108*t3278;
  t4275 = t3899 + t4055 + t4263;
  t5308 = -4.e-6*t3704;
  t5352 = 0. + t5308;
  t4985 = t2606*t2465;
  t4991 = -6.4e-11*t1691;
  t4999 = 1. + t4991;
  t5000 = t4999*t2777;
  t5017 = 8.e-6*t1691*t3278;
  t5019 = t4985 + t5000 + t5017;
  t5367 = -1.000000000064*t1691;
  t5380 = 1. + t5367;
  t5387 = t5380*t2465;
  t5407 = t1934*t2777;
  t5409 = t2038*t3278;
  t5445 = t5387 + t5407 + t5409;
  t5744 = -4.e-6*t5737;
  t5772 = 0. + t5744;
  t5845 = Sin(var1[16]);
  t3707 = 0. + t3704;
  t5875 = 4.e-6*t3667;
  t5910 = 0. + t5875;
  t4498 = -1.*t3704;
  t4629 = 0. + t4498;
  t4800 = 4.e-6*t3704;
  t4810 = 0. + t4800;
  t6840 = Sin(var1[17]);
  t6668 = 4.e-6*t5845;
  t6712 = 0. + t6668;
  t5928 = t5910*t4275;
  t5930 = t5352*t5019;
  t5933 = -1.6e-11*t3667;
  t5997 = 1. + t5933;
  t6036 = t5997*t5445;
  t6101 = t5928 + t5930 + t6036;
  t6610 = -1.*t5845;
  t6613 = 0. + t6610;
  t6382 = -1.*t3667;
  t6408 = 1. + t6382;
  t6448 = t6408*t4275;
  t6482 = t3707*t5019;
  t6496 = t5910*t5445;
  t6553 = t6448 + t6482 + t6496;
  t6725 = t4629*t4275;
  t6745 = -1.000000000016*t3667;
  t6748 = 1. + t6745;
  t6752 = t6748*t5019;
  t6761 = t4810*t5445;
  t6765 = t6725 + t6752 + t6761;
  t6819 = Cos(var1[17]);
  t6823 = -1.*t6819;
  t6831 = 1. + t6823;
  t5848 = -4.e-6*t5845;
  t5849 = 0. + t5848;
  t7085 = -4.e-6*t6831;
  t7107 = 0. + t7085;
  t7186 = 4.e-6*t5737;
  t7190 = 0. + t7186;
  t6244 = 0. + t5845;
  t7359 = Cos(var1[18]);
  t7366 = -1.*t7359;
  t7390 = 1. + t7366;
  t7307 = 0. + t6840;
  t6970 = t6712*t6101;
  t6981 = t6613*t6553;
  t6982 = -1.000000000016*t5737;
  t6985 = 1. + t6982;
  t6996 = t6985*t6765;
  t7010 = t6970 + t6981 + t6996;
  t7177 = -1.6e-11*t5737;
  t7181 = 1. + t7177;
  t7185 = t7181*t6101;
  t7211 = t7190*t6553;
  t7218 = t5849*t6765;
  t7250 = t7185 + t7211 + t7218;
  t7319 = t7190*t6101;
  t7326 = -1.*t5737;
  t7338 = 1. + t7326;
  t7339 = t7338*t6553;
  t7340 = t6244*t6765;
  t7341 = t7319 + t7339 + t7340;
  t7409 = -4.e-6*t7390;
  t7419 = 0. + t7409;
  t7443 = Sin(var1[18]);
  t7126 = -4.e-6*t6840;
  t7140 = 0. + t7126;
  t7462 = 4.e-6*t6831;
  t7466 = 0. + t7462;
  t6918 = 4.e-6*t6840;
  t6959 = 0. + t6918;
  t6878 = -1.*t6840;
  t6905 = 0. + t6878;
  t7743 = Sin(var1[19]);
  t7610 = -1.*t7443;
  t7613 = 0. + t7610;
  t7455 = t7307*t7010;
  t7471 = t7466*t7250;
  t7485 = -1.*t6831;
  t7490 = 1. + t7485;
  t7503 = t7490*t7341;
  t7505 = t7455 + t7471 + t7503;
  t7654 = 4.e-6*t7443;
  t7656 = 0. + t7654;
  t7583 = t7140*t7010;
  t7584 = -1.6e-11*t6831;
  t7589 = 1. + t7584;
  t7597 = t7589*t7250;
  t7600 = t7466*t7341;
  t7607 = t7583 + t7597 + t7600;
  t7662 = -1.000000000016*t6831;
  t7663 = 1. + t7662;
  t7678 = t7663*t7010;
  t7692 = t6959*t7250;
  t7693 = t6905*t7341;
  t7702 = t7678 + t7692 + t7693;
  t7710 = Cos(var1[19]);
  t7711 = -1.*t7710;
  t7718 = 1. + t7711;
  t7547 = -4.e-6*t7443;
  t7572 = 0. + t7547;
  t7854 = -4.e-6*t7718;
  t7864 = 0. + t7854;
  t7918 = 4.e-6*t7390;
  t7921 = 0. + t7918;
  t7445 = 0. + t7443;
  t7991 = 0. + t7743;
  t7809 = t7613*t7505;
  t7812 = t7656*t7607;
  t7824 = -1.000000000016*t7390;
  t7827 = 1. + t7824;
  t7828 = t7827*t7702;
  t7839 = t7809 + t7812 + t7828;
  t7932 = t7921*t7505;
  t7953 = -1.6e-11*t7390;
  t7955 = 1. + t7953;
  t7965 = t7955*t7607;
  t7968 = t7572*t7702;
  t7969 = t7932 + t7965 + t7968;
  t8011 = -1.*t7390;
  t8016 = 1. + t8011;
  t8021 = t8016*t7505;
  t8031 = t7921*t7607;
  t8034 = t7445*t7702;
  t8045 = t8021 + t8031 + t8034;
  t7888 = -4.e-6*t7743;
  t7908 = 0. + t7888;
  t8062 = 4.e-6*t7718;
  t8063 = 0. + t8062;
  t7780 = 4.e-6*t7743;
  t7782 = 0. + t7780;
  t7759 = -1.*t7743;
  t7772 = 0. + t7759;
  t92 = -4.6196000000000004e-7*var1[13];
  t541 = -1.912200000030595e-7*t494;
  t650 = 0.13451000000399999*t634;
  t727 = t92 + t541 + t650;
  t750 = 1.84784e-12*var1[13];
  t769 = -0.04780500000076488*t494;
  t845 = 0.13451000000399999*t815;
  t899 = t750 + t769 + t845;
  t1189 = 0.13451000000615215*t494;
  t1262 = -1.9122e-7*t1240;
  t1375 = -0.047805*t1305;
  t1399 = 0. + t1189 + t1262 + t1375;
  t1733 = 0.13451000001660862*t1691;
  t1945 = 5.e-7*t1934;
  t2050 = -0.0625*t2038;
  t2077 = 0. + t1733 + t1945 + t2050;
  t8174 = t932*t1066*t960;
  t8185 = -1.*t34*t1083;
  t8188 = t8174 + t8185;
  t8194 = t34*t932;
  t8196 = t1066*t960*t1083;
  t8198 = t8194 + t8196;
  t2502 = -7.607999999999987e-8*var1[14];
  t2584 = 5.000000000319999e-7*t1691;
  t2628 = 0.13451000000799998*t2606;
  t2657 = t2502 + t2584 + t2628;
  t2814 = -6.086399999999989e-13*var1[14];
  t2839 = -0.062500000004*t1691;
  t2859 = -1.*t1921;
  t2897 = 0. + t2859;
  t2916 = 0.13451000000799998*t2897;
  t2995 = t2814 + t2839 + t2916;
  t3439 = 1.7471199999999997e-12*var1[15];
  t3698 = 2.50004e-7*t3687;
  t3700 = -0.062501*t3667;
  t3726 = -0.140805000004*t3707;
  t3782 = t3439 + t3698 + t3700 + t3726;
  t8211 = t72*t1240*t1066;
  t8213 = t1305*t8188;
  t8217 = t2425*t8198;
  t8225 = t8211 + t8213 + t8217;
  t8228 = -4.e-6*t494*t72*t1066;
  t8235 = t2677*t8188;
  t8238 = t815*t8198;
  t8239 = t8228 + t8235 + t8238;
  t8246 = t3036*t72*t1066;
  t8247 = -4.e-6*t494*t8188;
  t8256 = t634*t8198;
  t8259 = t8246 + t8247 + t8256;
  t4496 = -0.1408050000062529*t3667;
  t4768 = -0.062501*t4629;
  t4902 = 2.50004e-7*t4810;
  t4965 = 0. + t4496 + t4768 + t4902;
  t5037 = 4.3677999999999997e-7*var1[15];
  t5193 = -0.062501*t3687;
  t5266 = 4.000064e-18*t3667;
  t5354 = -0.140805000004*t5352;
  t5361 = t5037 + t5193 + t5266 + t5354;
  t5501 = -4.3219999999999986e-8*var1[16];
  t5823 = -0.062502*t5772;
  t5842 = 4.000128e-18*t5737;
  t5855 = -0.26080500000400003*t5849;
  t5860 = t5501 + t5823 + t5842 + t5855;
  t8269 = t3824*t8225;
  t8273 = 8.e-6*t1691*t8239;
  t8274 = t4108*t8259;
  t8282 = t8269 + t8273 + t8274;
  t8287 = t2606*t8225;
  t8288 = t4999*t8239;
  t8289 = 8.e-6*t1691*t8259;
  t8292 = t8287 + t8288 + t8289;
  t8299 = t5380*t8225;
  t8301 = t1934*t8239;
  t8307 = t2038*t8259;
  t8311 = t8299 + t8301 + t8307;
  t6136 = -1.7287999999999994e-13*var1[16];
  t6211 = 2.50008e-7*t5772;
  t6239 = -0.062502*t5737;
  t6348 = -0.26080500000400003*t6244;
  t6374 = t6136 + t6211 + t6239 + t6348;
  t6567 = -0.2608050000081729*t5737;
  t6644 = -0.062502*t6613;
  t6714 = 2.50008e-7*t6712;
  t6720 = 0. + t6567 + t6644 + t6714;
  t6839 = -0.32141100000914263*t6831;
  t6916 = -0.015022*t6905;
  t6967 = 6.0088e-8*t6959;
  t6968 = 0. + t6839 + t6916 + t6967;
  t8321 = t5910*t8282;
  t8324 = t5352*t8292;
  t8326 = t5997*t8311;
  t8327 = t8321 + t8324 + t8326;
  t8329 = t6408*t8282;
  t8332 = t3707*t8292;
  t8335 = t5910*t8311;
  t8336 = t8329 + t8332 + t8335;
  t8338 = t4629*t8282;
  t8340 = t6748*t8292;
  t8341 = t4810*t8311;
  t8345 = t8338 + t8340 + t8341;
  t7075 = -2.85644e-7*var1[17];
  t7113 = -0.015022*t7107;
  t7122 = 9.61408e-19*t6831;
  t7144 = -0.321411000004*t7140;
  t7162 = t7075 + t7113 + t7122 + t7144;
  t7262 = -1.142576e-12*var1[17];
  t7303 = 6.0088e-8*t7107;
  t7304 = -0.015022*t6831;
  t7314 = -0.321411000004*t7307;
  t7318 = t7262 + t7303 + t7304 + t7314;
  t7349 = -9.889599999999905e-14*var1[18];
  t7421 = -2.2207999999999996e-8*t7419;
  t7436 = 0.005552*t7390;
  t7451 = -0.756181000012*t7445;
  t7452 = t7349 + t7421 + t7436 + t7451;
  t8350 = t6712*t8327;
  t8351 = t6613*t8336;
  t8352 = t6985*t8345;
  t8354 = t8350 + t8351 + t8352;
  t8358 = t7181*t8327;
  t8359 = t7190*t8336;
  t8361 = t5849*t8345;
  t8374 = t8358 + t8359 + t8361;
  t8377 = t7190*t8327;
  t8380 = t7338*t8336;
  t8382 = t6244*t8345;
  t8386 = t8377 + t8380 + t8382;
  t7518 = -2.4723999999999765e-8*var1[18];
  t7533 = 0.005552*t7419;
  t7537 = -3.553279999999999e-19*t7390;
  t7577 = -0.756181000012*t7572;
  t7581 = t7518 + t7533 + t7537 + t7577;
  t7609 = -0.7561810000240989*t7390;
  t7651 = 0.005552*t7613;
  t7658 = -2.2207999999999996e-8*t7656;
  t7661 = 0. + t7609 + t7651 + t7658;
  t7732 = -1.1632310000386117*t7718;
  t7773 = -0.03391*t7772;
  t7799 = 1.3564000000000002e-7*t7782;
  t7808 = 0. + t7732 + t7773 + t7799;
  t8392 = t7307*t8354;
  t8394 = t7466*t8374;
  t8399 = t7490*t8386;
  t8402 = t8392 + t8394 + t8399;
  t8422 = t7140*t8354;
  t8429 = t7589*t8374;
  t8432 = t7466*t8386;
  t8433 = t8422 + t8429 + t8432;
  t8443 = t7663*t8354;
  t8444 = t6959*t8374;
  t8445 = t6905*t8386;
  t8450 = t8443 + t8444 + t8445;
  t7847 = 3.4707600000000064e-7*var1[19];
  t7882 = -0.03391*t7864;
  t7884 = 2.1702400000000003e-18*t7718;
  t7914 = -1.16323100002*t7908;
  t7915 = t7847 + t7882 + t7884 + t7914;
  t7981 = 1.3883040000000026e-12*var1[19];
  t7983 = 1.3564000000000002e-7*t7864;
  t7986 = -0.03391*t7718;
  t7993 = -1.16323100002*t7991;
  t8010 = t7981 + t7983 + t7986 + t7993;
  t8457 = t7613*t8402;
  t8459 = t7656*t8433;
  t8462 = t7827*t8450;
  t8464 = t8457 + t8459 + t8462;
  t8468 = t7921*t8402;
  t8474 = t7955*t8433;
  t8475 = t7572*t8450;
  t8476 = t8468 + t8474 + t8475;
  t8066 = -1.*t7718;
  t8067 = 1. + t8066;
  t8479 = t8016*t8402;
  t8480 = t7921*t8433;
  t8481 = t7445*t8450;
  t8483 = t8479 + t8480 + t8481;
  t8096 = -1.6e-11*t7718;
  t8100 = 1. + t8096;
  t8118 = -1.000000000016*t7718;
  t8137 = 1. + t8118;
  t8526 = t72*t932*t1305;
  t8531 = -1.*t1240*t960;
  t8534 = t2425*t72*t1083;
  t8535 = t8526 + t8531 + t8534;
  t8537 = t2677*t72*t932;
  t8539 = 4.e-6*t494*t960;
  t8542 = t72*t815*t1083;
  t8545 = t8537 + t8539 + t8542;
  t8553 = -4.e-6*t494*t72*t932;
  t8556 = -1.*t3036*t960;
  t8557 = t72*t634*t1083;
  t8559 = t8553 + t8556 + t8557;
  t8563 = t3824*t8535;
  t8564 = 8.e-6*t1691*t8545;
  t8568 = t4108*t8559;
  t8570 = t8563 + t8564 + t8568;
  t8574 = t2606*t8535;
  t8577 = t4999*t8545;
  t8578 = 8.e-6*t1691*t8559;
  t8581 = t8574 + t8577 + t8578;
  t8583 = t5380*t8535;
  t8586 = t1934*t8545;
  t8590 = t2038*t8559;
  t8592 = t8583 + t8586 + t8590;
  t8594 = t5910*t8570;
  t8595 = t5352*t8581;
  t8596 = t5997*t8592;
  t8597 = t8594 + t8595 + t8596;
  t8603 = t6408*t8570;
  t8608 = t3707*t8581;
  t8609 = t5910*t8592;
  t8610 = t8603 + t8608 + t8609;
  t8613 = t4629*t8570;
  t8614 = t6748*t8581;
  t8615 = t4810*t8592;
  t8617 = t8613 + t8614 + t8615;
  t8623 = t6712*t8597;
  t8628 = t6613*t8610;
  t8630 = t6985*t8617;
  t8631 = t8623 + t8628 + t8630;
  t8635 = t7181*t8597;
  t8636 = t7190*t8610;
  t8637 = t5849*t8617;
  t8638 = t8635 + t8636 + t8637;
  t8641 = t7190*t8597;
  t8645 = t7338*t8610;
  t8646 = t6244*t8617;
  t8647 = t8641 + t8645 + t8646;
  t8650 = t7307*t8631;
  t8651 = t7466*t8638;
  t8652 = t7490*t8647;
  t8656 = t8650 + t8651 + t8652;
  t8667 = t7140*t8631;
  t8668 = t7589*t8638;
  t8669 = t7466*t8647;
  t8673 = t8667 + t8668 + t8669;
  t8676 = t7663*t8631;
  t8678 = t6959*t8638;
  t8679 = t6905*t8647;
  t8682 = t8676 + t8678 + t8679;
  t8684 = t7613*t8656;
  t8686 = t7656*t8673;
  t8687 = t7827*t8682;
  t8688 = t8684 + t8686 + t8687;
  t8690 = t7921*t8656;
  t8691 = t7955*t8673;
  t8692 = t7572*t8682;
  t8693 = t8690 + t8691 + t8692;
  t8696 = t8016*t8656;
  t8697 = t7921*t8673;
  t8698 = t7445*t8682;
  t8699 = t8696 + t8697 + t8698;
  p_output1[0]=t1399*t1501 + t2077*t2465 + t2657*t2777 + t2995*t3278 + t3782*t4275 + t4965*t5019 + t5361*t5445 + t5860*t6101 + t6374*t6553 + t6720*t6765 + t6968*t7010 + t7162*t7250 + t34*t72*t727 + t7318*t7341 + t7452*t7505 + t7581*t7607 + t7661*t7702 + t7808*t7839 + t7915*t7969 + t8010*t8045 - 0.10391*(t7839*t7991 + t7969*t8063 + t8045*t8067) + 0.13731*(t7839*t7908 + t8045*t8063 + t7969*t8100) - 1.220321*(t7782*t7969 + t7772*t8045 + t7839*t8137) + t1154*t899 + var1[0];
  p_output1[1]=t1066*t72*t727 + t1399*t8198 + t2077*t8225 + t2657*t8239 + t2995*t8259 + t3782*t8282 + t4965*t8292 + t5361*t8311 + t5860*t8327 + t6374*t8336 + t6720*t8345 + t6968*t8354 + t7162*t8374 + t7318*t8386 + t7452*t8402 + t7581*t8433 + t7661*t8450 + t7808*t8464 + t7915*t8476 + t8010*t8483 - 1.220321*(t8137*t8464 + t7782*t8476 + t7772*t8483) + 0.13731*(t7908*t8464 + t8100*t8476 + t8063*t8483) - 0.10391*(t7991*t8464 + t8063*t8476 + t8067*t8483) + t8188*t899 + var1[1];
  p_output1[2]=t1083*t1399*t72 + t2077*t8535 + t2657*t8545 + t2995*t8559 + t3782*t8570 + t4965*t8581 + t5361*t8592 + t5860*t8597 + t6374*t8610 + t6720*t8617 + t6968*t8631 + t7162*t8638 + t7318*t8647 + t7452*t8656 + t7581*t8673 + t7661*t8682 + t7808*t8688 + t7915*t8693 + t8010*t8699 - 1.220321*(t8137*t8688 + t7782*t8693 + t7772*t8699) + 0.13731*(t7908*t8688 + t8100*t8693 + t8063*t8699) - 0.10391*(t7991*t8688 + t8063*t8693 + t8067*t8699) + t72*t899*t932 - 1.*t727*t960 + var1[2];
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

#include "p_LeftToeBack_mex.hh"

namespace SymExpression
{

void p_LeftToeBack_mex_raw(double *p_output1, const double *var1)
{
  // Call Subroutines
  output1(p_output1, var1);

}

}

#endif // MATLAB_MEX_FILE
