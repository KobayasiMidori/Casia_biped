function qRes=inverseKine_V2(PD,pitch,Para)
% all angles are defined as shown in the PPT slide V2
% counter clock wise positive
% Unit: mm

% pitch: angle between the foot bottom and the positive x direction, counter clock wise positive
% DMN: negative angle DMN, so that the counter clock wise direction is
% positive
if nargin<=2
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
else
    OA=Para.OA;
    AB=Para.AB;
    BC=Para.BC;
    ABC=Para.ABC;
    CE=Para.CE;
    CD=Para.CD;
    DCE=Para.DCE;
    OE=Para.OE;
    
    MD=Para.MD;
    MN=Para.MN;
    NK=Para.NK;
    DK=Para.DK;
    KDG=Para.KDG;
    CDM=Para.CDM;
end

DE=sqrt(CD^2+CE^2-2*CD*CE*cos(DCE));
CDE=acos((CD^2+DE^2-CE^2)/2/CD/DE);
AC=sqrt(AB^2+BC^2-2*AB*BC*cos(ABC));
CAB=acos((AC^2+AB^2-BC^2)/2/AB/AC);
[xE,yE]=Get1From2(PD(1),PD(2),0,0,DE,OE,'xSmaller');
PE=[xE;yE];
PC=Rz(-CDE)*(PE-PD)/DE*CD+PD;
[xA,yA]=Get1From2(PC(1),PC(2),0,0,AC,OA,'xBigger');
PA=[xA;yA];
PB=Rz(CAB)*(PC-PA)/AC*AB+PA;
q4=-acos(PA'*(PB-PA)/AB/OA);
q3=acos(PA'*[0;-1]/OA)*sign(PA(1));
vBC=PC-PB;
vCD=PD-PC;
q6=acos(vBC'*vCD/norm(vBC)/norm(vCD));
q5=-(pi-ABC);


% PC=[388.8773;-299.6307];
% PD=[189.5849;-656.7452];%Rz(-0.4)*[0;-AD]+PA;
vDC=(PC-PD)/CD;
PM=Rz(CDM)*vDC*MD+PD;
vDG=Rz(pitch)*[0;-1];
PK=Rz(-KDG)*vDG*DK+PD;
[xN,yN]=Get1From2(PK(1),PK(2),PM(1),PM(2),NK,MN,'xSmaller');
PN=[xN;yN];
vMD=PD-PM;
vMN=PN-PM;
DMN=-acos(vMD'*vMN/MD/MN);

q7=acos(vCD'*vDG/norm(vCD)/norm(vDG));
tmp=vCD'*vDG*vCD/norm(vCD)^2-vDG;
if tmp(2)>0
    q7=-q7;
end

qRes.q3=q3;
qRes.q4=q4;
qRes.q5=q5;
qRes.q6=q6;
qRes.q7=q7;
qRes.nDMN=DMN;
