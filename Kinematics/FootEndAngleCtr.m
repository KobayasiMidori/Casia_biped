clear; close all;
MD=349.07;
MN=55;
NK=348.07;
DK=55;
KDG=49/180*pi;
CDM=4.38/180*pi;
GDy=0; % angle between DG and negetive y

PC=[388.8773;-299.6307];
PD=[189.5849;-656.7452];%Rz(-0.4)*[0;-AD]+PA;
vCD=(PD-PC)/norm(PD-PC);
PM=Rz(-CDM)*(-vCD)*MD+PD;
vDG=Rz(GDy)*[0;-1];
PK=Rz(KDG)*vDG*DK+PD;
[xN,yN]=Get1From2(PK(1),PK(2),PM(1),PM(2),NK,MN,'xBigger');
PN=[xN;yN];
vMD=PD-PM;
vMN=PN-PM;
DMN=acos(vMD'*vMN/MD/MN);

figure();
plot([PM(1) PD(1) PK(1) PN(1) PM(1)],[PM(2) PD(2) PK(2) PN(2) PM(2)]);
axis equal;