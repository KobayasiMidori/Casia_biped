clear; close all;
rr=importrobot('casia.urdf');
show(rr);

PendOffset=[-0.18956;-0.031799;-0.65677];
Pend=[0;0;-800]/1000; % pos in cassie coordinates
%Pend=PendOffset;
tformP=[-1 0 0;0 0 1;0 0 0]*1000; % map pos vec from casia to kinematic space
q3Off=-0.6109;
q4Off=1.2392;
q7MOff=1.4223;
tformQ=[-1 0 0 q3Off;0 -1 0 q4Off;0 0 -1 q7MOff;0 0 0 1]; % map q vec from kinematic space to casia

Pendk=tformP*Pend;
qResk=inverseKine(Pendk(1:2),0);
qRes=tformQ*[qResk;1];
qRes=qRes(1:3);

figure();
hold on;
pResk=forwardKine(qResk(1),qResk(2),qResk(3));
ax=gca;
plotLeg(ax,pResk,[]);
axis equal;grid on;
xlabel('local x (mm)');ylabel('local y (mm)')
fprintf('\t q3=%.4f, q4=%.4f q7M=%.4f\n',qRes(1),qRes(2),qRes(3));
