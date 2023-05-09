clear; close all;
Tra=load('FootEndTra.mat');
X=-Tra.XData+50;
Y=Tra.YData-800;
dt=Tra.dt;
N=length(X);
%% figure initial
figure()
plot(0,0);
plot(X,Y,'k');
xlim([-300 700]);
ylim([-900 0]);
hold on;grid on; axis equal; axis manual;
xlabel('x (mm)');ylabel('y (mm)');
ax=gca;
h=[];ht=[];
n=1;
LoopCount=3000;
qResRec=zeros(3,LoopCount);
tLine=(0:1:(LoopCount-1))*dt;
F(floor(LoopCount/60)+1) = struct('cdata',[],'colormap',[]);
%% main loop
j=1;
for ii=1:1:LoopCount
    if n>N
        n=1;
    end
    PD=[X(n);Y(n)];
    qRes=inverseKine(PD,0);
    pRes=forwardKine(qRes(1),qRes(2),qRes(3));
    qResRec(:,ii)=qRes;
    h=plotLeg(ax,pRes,h);
    if mod(ii,floor(1/60/dt))==1
        drawnow;
        if ~isempty(ht)
            delete(ht);
        end
        ht=text(-400,-100,sprintf('t=%gs',ii*dt),'fontsize',15);
        F(j)=getframe(gcf);
        j=j+1;
    end
    n=n+1;
end
figure();
subplot(3,1,1)
plot(tLine,qResRec(1,:)/pi*180);ylabel('q3');
subplot(3,1,2)
plot(tLine,qResRec(2,:)/pi*180);ylabel('q4');
subplot(3,1,3)
plot(tLine,qResRec(3,:)/pi*180);ylabel('DMN');

movie(F,1);

v = VideoWriter('Kinematics.avi');
v.Quality=95;
open(v);writeVideo(v,F);close(v);