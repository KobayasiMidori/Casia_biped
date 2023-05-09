clear; close all;
PD=[0;-660];
qRes=inverseKine(PD);
q3=qRes(1);
q4=qRes(2);

pRes=forwardKine(q3,q4);
PO=pRes(:,1);PA=pRes(:,2);PB=pRes(:,3);
PC=pRes(:,4);PD=pRes(:,5);PE=pRes(:,6);
figure()
plot(0,0);
xlim([-300 700]);
ylim([-800 0]);
hold on;grid on; axis equal; axis manual;
ax=gca;
h=[];
h=plotLeg(ax,pRes,h);
