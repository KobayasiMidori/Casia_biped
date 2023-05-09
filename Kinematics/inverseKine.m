function qRes=inverseKine(PD,GDy)
OA=120;
AB=76.99;
BC=435.26;
ABC=144.63/180*pi;
CE=121.85;
CD=408.96;
DCE=174.89/180*pi;
OE=498.88;

MD=349.07;
MN=55;
NK=348.07;
DK=55;
KDG=49/180*pi;
CDM=4.38/180*pi;

DE=sqrt(CD^2+CE^2-2*CD*CE*cos(DCE));
CDE=acos((CD^2+DE^2-CE^2)/2/CD/DE);
AC=sqrt(AB^2+BC^2-2*AB*BC*cos(ABC));
CAB=acos((AC^2+AB^2-BC^2)/2/AB/AC);
[xE,yE]=Get1From2(PD(1),PD(2),0,0,DE,OE,'xBigger');
PE=[xE;yE];
PC=Rz(CDE)*(PE-PD)/DE*CD+PD;
[xA,yA]=Get1From2(PC(1),PC(2),0,0,AC,OA,'xSmaller');
PA=[xA;yA];
PB=Rz(-CAB)*(PC-PA)/AC*AB+PA;
q4=acos(PA'*(PB-PA)/AB/OA);
q3=acos(PA'*[0;-1]/OA)*sign(PA(1));

% PC=[388.8773;-299.6307];
% PD=[189.5849;-656.7452];%Rz(-0.4)*[0;-AD]+PA;
vDC=(PC-PD)/CD;
PM=Rz(-CDM)*vDC*MD+PD;
vDG=Rz(GDy)*[0;-1];
PK=Rz(KDG)*vDG*DK+PD;
[xN,yN]=Get1From2(PK(1),PK(2),PM(1),PM(2),NK,MN,'xBigger');
PN=[xN;yN];
vMD=PD-PM;
vMN=PN-PM;
DMN=acos(vMD'*vMN/MD/MN);

qRes=[q3;q4;DMN];
