clear; close all;
rr=importrobot('casia.urdf');
N=length(rr.Bodies);
JointPos=zeros(3,N);
%BasePos=[-0.002333;0;-0.002333];
BasePos=[0;0;0];
tempP=rr.Bodies{1,1}.Joint.JointToParentTransform*[BasePos;1];
JointPos(:,1)=tempP(1:3);
config=homeConfiguration(rr);
for i=2:1:N
    tform=getTransform(rr,config,rr.Bodies{i}.Name,rr.BaseName);
    tempP=tform*[BasePos;1];
    JointPos(:,i)=tempP(1:3);
end
figure();
show(rr);
hold on;
plot3(JointPos(1,:),JointPos(2,:),JointPos(3,:),'ro');
tempA=JointPos([1,3],3)-JointPos([1,3],4);
tempB=JointPos([1,3],5)-JointPos([1,3],4);
q3=acos(tempA'*tempB/norm(tempA)/norm(tempB));
tempA=JointPos([1,3],4)-JointPos([1,3],5);
tempB=JointPos([1,3],6)-JointPos([1,3],5);
q4=acos(tempA'*tempB/norm(tempA)/norm(tempB));
PendOri=JointPos(:,8)-JointPos(:,4);

Pend=[0;0;-700]/1000;
Pend=PendOri;
tformP=[-1 0 0;0 0 1;0 0 0]*1000; % map pos vec from casia to kinematic space
q3Off=-0.6109;
q4Off=1.2392;
tformQ=[-1 0 0 q3Off;0 -1 0 q4Off;0 0 1 0;0 0 0 1]; % map q vec from kinematic space to casia

Pendk=tformP*Pend;
qResk=inverseKine(Pendk(1:2),0);
qRes=tformQ*[qResk;1];
qRes=qRes(1:3);

%config(3).JointPosition=qRes(1);
%config(4).JointPosition=qRes(2);
show(rr,config);
for i=2:1:N
    tform=getTransform(rr,config,rr.Bodies{i}.Name,rr.BaseName);
    tempP=tform*[BasePos;1];
    JointPos(:,i)=tempP(1:3);
end
PendNow=JointPos(:,8)-JointPos(:,4);

figure();
hold on;
pResk=forwardKine(qResk(1),qResk(2),qResk(3));
ax=gca;
plotLeg(ax,pResk,[]);
axis equal;grid on;
% figure();
% hold on;
% ax=gca;
% pRes=forwardKine(-(pi-q3),pi-q4,pi/2);
% pRes(:,5);
% plotLeg(ax,pRes,[]);
% grid on;
% axis equal;