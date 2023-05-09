clear; close all;
OA=120;
AB=76.99;
BC=435.26;
ABC=144.63/180*pi;
CE=121.85;
CD=408.96;
DCE=174.89/180*pi;
OE=498.88;

AC=sqrt(AB^2+BC^2-2*AB*BC*cos(ABC));
BAC=acos((AC^2+AB^2-BC^2)/2/AC/AB);

q3=-35/180*pi; % initial angle
q4=71/180*pi; % initial angle

PO=[0;0];
PA=Rz(q3)*[0;-OA];
PB=Rz(q3+q4)*[0;-AB]+PA;
PC=Rz(q3+q4+pi-ABC)*[0;-BC]+PB;
[x,y]=Get1From2(PC(1),PC(2),0,0,CE,OE,'xBigger');
PE=[x;y];
PD=Rz(-DCE)*(PE-PC)/CE*CD+PC;
figure()
plot([PO(1) PA(1) PB(1) PC(1) PD(1)],[PO(2) PA(2) PB(2) PC(2) PD(2)],'-o');
hold on;
plot([PO(1) PE(1) PC(1)],[PO(2) PE(2) PC(2)],'--o');
axis equal;grid on;
% patch('Faces',F,'Vertices',V,'Facecolor','none');
% hold on;
% patch('Faces',F2,'Vertices',V2,'Facecolor','none');

