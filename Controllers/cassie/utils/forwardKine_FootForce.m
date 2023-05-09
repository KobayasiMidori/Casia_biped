function Res=forwardKine_FootForce(q3,q4,q5,q6,q7,Para)
% calculate forward kinematics as well as foot contact forces
if nargin==1
    OA=120;
    AB=76.99;
    BC=435.26;
    ABC=144.63/180*pi;
    CE=121.85;
    CD=408.96;
    DCE=174.89/180*pi;
    OE=498.88;
    scq5=-4500;
    scq6=-2400;
else
    OA=Para.OA;
    AB=Para.AB;
    BC=Para.BC;
    ABC=Para.ABC;
    CE=Para.CE;
    CD=Para.CD;
    DCE=Para.DCE;
    OE=Para.OE;
    scq5=Para.scq5;
    scq6=Para.scq6;
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
%DCEReal=acos(vCE'*vCD/CE/CD);

vCDu=(PD-PC)/norm(PD-PC);
theta=pi/2;
M=[cos(theta) -sin(theta);sin(theta) cos(theta)];
vGTu=M*vCDu; % direction vector of the foot bottom
theta=q7;
M=[cos(theta) -sin(theta);sin(theta) cos(theta)];
vGTnow=M*vGTu;
FootPitch=acos(vGTnow'*[1;0])*sign(vGTnow(2));

% vOA=PA-PO;
% qp2=acos(vCD'*vOA/OA/CD)*sign(vCD(2)-vOA(2));

Res.PO=PO;
Res.PA=PA;
Res.PB=PB;
Res.PC=PC;
Res.PD=PD;
Res.PE=PE;
Res.DCEReal=DCEReal;
Res.FootPitch=FootPitch;
Res.qp1=q5-(-(pi-ABC));
Res.qp2=DCEReal-DCE;
Res.F_end=[0;0];

PD=Res.PD/1000;
PC=Res.PC/1000;
PB=Res.PB/1000;
PE=Res.PE/1000;

CD=PD-PC;
BC=PC-PB;
OC=PC;
OE=PE;
EC=PC-PE;

Mt=[1,0,0;0,1,0];
Jq5=Mt*cross([0;0;1],[BC;0]);
JL=[Mt*cross([0;0;1],[OC;0]),Mt*cross([0;0;1],[EC;0])];
Jql1=Mt*cross([0;0;1],[OE;0]);
R=[cos(Res.DCEReal),-sin(Res.DCEReal);sin(Res.DCEReal),cos(Res.DCEReal)];
k=R*Para.CD/Para.CE;
Jtmp=[1,0]*(JL\Jq5);

col1=Jq5+k*(Jql1*Jtmp-Jq5);
col2=Mt*cross([0;0;1],[CD;0]);
J=[col1,col2];

F5=Res.qp1*scq5;
F6=Res.qp2*scq6;
Fend=(J')\[-F5;-F6];
Res.F_end=Fend;





