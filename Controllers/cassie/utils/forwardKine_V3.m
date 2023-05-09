function Res=forwardKine_V3(q3,q4,q5,q6,q7,Para)
% all angles are defined as shown in the PPT slide V2
% counter clock wise positive
% Unit: mm

if nargin<=5
    OA=120;
    AB=76.99;
    BC=435.26;
    ABC=144.63/180*pi;
    CE=121.85;
    CD=408.96;
    DCE=174.89/180*pi;
    OE=498.88;
else
    OA=Para.OA;
    AB=Para.AB;
    BC=Para.BC;
    ABC=Para.ABC;
    CE=Para.CE;
    CD=Para.CD;
    DCE=Para.DCE;
    OE=Para.OE;
end

ABCReal=pi-(-q5);
% DCEReal=q6;

PO=[0;0];
PA=Rz(q3)*[0;-OA];
PB=Rz(q3+q4)*[0;-AB]+PA;
PC=Rz(q3+q4+ABCReal-pi)*[0;-BC]+PB;
[x,y]=Get1From2(PC(1),PC(2),0,0,CE,OE,'xSmaller');
PE=[x;y];
%PD=Rz(DCE)*(PE-PC)/CE*CD+PC;
PD=Rz(q6)*(PC-PB)/BC*CD+PC;
vCE=PE-PC;
vBC=PC-PB;
DCEReal=acos(vCE'*vBC/CE/BC)+q6;

vCDu=(PD-PC)/norm(PD-PC);
theta=pi/2;
M=[cos(theta) -sin(theta);sin(theta) cos(theta)];
vGTu=M*vCDu; % direction vector of the foot bottom
theta=q7;
M=[cos(theta) -sin(theta);sin(theta) cos(theta)];
vGTnow=M*vGTu;
FootPitch=acos(vGTnow'*[1;0])*sign(vGTnow(2));

Res.PO=PO;
Res.PA=PA;
Res.PB=PB;
Res.PC=PC;
Res.PD=PD;
Res.FootPitch=FootPitch;
Res.qp1=q5-(-(pi-ABC));
Res.qp2=DCEReal-DCE;










