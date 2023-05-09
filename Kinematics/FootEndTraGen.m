clear; close all;
%% construct foot-end trajectory via Bezier curve
%% counter-clockwise rotation
strideL=200;
tS=0.8; % stance duration
tF=0.8; % flight duration
dt=0.001;

ds=dt/tF;
aX=zeros(6,1);
aY=zeros(6,1);
aX(1)=-strideL/2;
aX(2)=-strideL/tS/5*tF+aX(1);
aX(6)=strideL/2;
aX(5)=aX(6)-(-strideL/tS/5*tF);
aX(3)=-strideL*0.2;
aX(4)=strideL*1;

aY(1)=0;
aY(2)=0;
aY(6)=0;
aY(5)=0;
aY(3)=150;
aY(4)=150;

t=0:dt:(tS+tF);
N=length(t);
XData=zeros(1,N);
YData=zeros(1,N);
s=0;
TouchDownN=1;
for i=2:1:N
    if t(i)<=tS/2
        XData(i)=-strideL/tS*t(i);
    end
    if t(i)>=tS/2 && t(i-1)<tS/2
        aX(1)=XData(i-1);
        aX(2)=-strideL/tS/5*tF+aX(1);
    end
    if t(i)>tS/2 && t(i)<=tS/2+tF
        XData(i)=BezierOut(aX,s);
        YData(i)=BezierOut(aY,s);
        s=s+ds;
    end
    if t(i-1)<tS/2+tF && t(i)>=tS/2+tF
        TouchDownN=i-1;
    end
    if t(i)>tS/2+tF && t(i)<=tS+tF
        XData(i)=XData(TouchDownN)+(-strideL/tS)*(t(i)-tS/2-tF);
    end
end
%% output data
save('FootEndTra.mat','XData','YData','t','dt');

figure();
plot(XData,YData,'.');
axis equal; grid on; hold on;xlabel('X');ylabel('Y');
plot(aX,aY,'*');
%% XY decomposition
% figure()
% subplot(2,1,1)
% plot(t,XData);ylabel('XData');
% subplot(2,1,2)
% plot(t,YData);ylabel('YData');