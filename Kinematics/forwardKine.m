function pRes=forwardKine(q3,q4,DMN)
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
DG=57.09;
GT=109;
GH=70;
KDG=49/180*pi;
CDM=4.38/180*pi;

%AC=sqrt(AB^2+BC^2-2*AB*BC*cos(ABC));
%BAC=acos((AC^2+AB^2-BC^2)/2/AC/AB);

%q3=-35/180*pi; % initial angle
%q4=71/180*pi; % initial angle

PO=[0;0];
PA=Rz(q3)*[0;-OA];
PB=Rz(q3+q4)*[0;-AB]+PA;
PC=Rz(q3+q4+pi-ABC)*[0;-BC]+PB;
[x,y]=Get1From2(PC(1),PC(2),0,0,CE,OE,'xBigger');
PE=[x;y];
PD=Rz(-DCE)*(PE-PC)/CE*CD+PC;

PM=Rz(-CDM)*(PC-PD)/CD*MD+PD;
PN=Rz(DMN)*(PD-PM)/MD*MN+PM;
[xk,yk]=Get1From2(PD(1),PD(2),PN(1),PN(2),DK,NK,'xBigger');
PK=[xk;yk];
PG=Rz(-KDG)*(PK-PD)/DK*DG+PD;
PH=Rz(-pi/2)*(PD-PG)/DG*GH+PG;
PT=Rz(pi/2)*(PD-PG)/DG*GT+PG;

pRes=[PO,PA,PB,PC,PD,PE,PG,PT,PH];