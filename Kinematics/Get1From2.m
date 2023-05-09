function [xout,yout]=Get1From2(x1,y1,x2,y2,l1,l2,limit)
%给定两点，以及未知点到两点的距离来求取未知点（二维）
%输入：为给定两点的坐标，以及到两点的距离l1,l2；limit为限制条件以确定唯一的输出解
%输出：为未知点的距离
%若输入的长度有逻辑错误则返回值为99
%2014.1.16   KBoxing
D=sqrt((x1-x2)^2+(y1-y2)^2);
if ~(l1+l2>=D && abs(l1-l2)<D)
    xout=99;
    yout=99;
    return;
end
if abs(l1+l2-D)<10^-3 %认为所求点在两点连线上
    xout=x1+l1/D*(x2-x1);
    yout=y1+l1/D*(y2-y1);
    return;
end
A=(l1+l2)^2-(x1-x2)^2-(y1-y2)^2;
B=-(l1-l2)^2+(x1-x2)^2+(y1-y2)^2;
E=(-l1^2+l2^2)*(y1-y2)+(y1+y2)*((x1-x2)^2-y1*y2)+y1^3+y2^3;
F=2*((x1-x2)^2+(y1-y2)^2);
temp=sqrt(A*B);
yo1=(x1*temp-x2*temp+E)/F;
yo2=(x2*temp-x1*temp+E)/F;
xo1=sqrt(l1^2-(yo1-y1)^2)+x1;
if abs((xo1-x2)^2+(yo1-y2)^2-l2^2)>10^-4
    xo1=-sqrt(l1^2-(yo1-y1)^2)+x1;
end
xo2=sqrt(l1^2-(yo2-y1)^2)+x1;
if abs((xo2-x2)^2+(yo2-y2)^2-l2^2)>10^-4
    xo2=-sqrt(l1^2-(yo2-y1)^2)+x1;
end
if yo1==yo2
    xo2=2*x1-xo1;
end
if strcmp('yBigger',limit)
    if yo1>yo2
        yout=yo1;
        xout=xo1;
    else
        yout=yo2;
        xout=xo2;
    end
elseif strcmp('ySmaller',limit)
    if yo1<yo2
        yout=yo1;
        xout=xo1;
    else
        yout=yo2;
        xout=xo2;
    end
elseif strcmp('xSmaller',limit)
    if xo1<xo2
        yout=yo1;
        xout=xo1;
    else
        yout=yo2;
        xout=xo2;
    end
elseif strcmp('xBigger',limit)
    if xo1>xo2
        yout=yo1;
        xout=xo1;
    else
        yout=yo2;
        xout=xo2;
    end
else
    error('PamError');
end