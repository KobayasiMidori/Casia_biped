clear; close all;
l3=3;
l45=3;
l7=3;
l8=5;
q3=-0.2;

q4=0;
temp=Rz(q3)*[0;-l3];
x4=temp(1);y4=temp(2);
temp=Rz(q3+q4)*[0;-l45]+[x4;y4];
x6=temp(1);y6=temp(2);
[x8,y8]=Get1From2(0,0,x6,y6,l8,l7,'xBigger');
q6=-acos([x4-x6,y4-y6]*[x8-x6;y8-y6]/l45/l7);


figure();
V=[0,0;x4,y4;x6,y6;x8,y8];
F=[1 2 3 4 1];
Link=patch('Faces',F,'Vertices',V,'FaceColor','none');
hold on;
xlabel('X');ylabel('Y');
T1=text(x4-0.5,y4,'q4');
T2=text(x6,y6-0.3,'q6');
ylim([y6-1 0]);
xlim([-3 3])
grid on;
axis equal;axis manual;

q4Rec=linspace(q4,0.8,100);
N=length(q4Rec);
q6Rec=zeros(1,N);
for i=1:1:N
    q4=q4Rec(i);
    temp=Rz(q3)*[0;-l3];
    x4=temp(1);y4=temp(2);
    temp=Rz(q3+q4)*[0;-l45]+[x4;y4];
    x6=temp(1);y6=temp(2);
    [x8,y8]=Get1From2(0,0,x6,y6,l8,l7,'xBigger');
    q6=-acos([x4-x6,y4-y6]*[x8-x6;y8-y6]/l45/l7);
    q6Rec(i)=q6;
    delete(Link);delete(T1);delete(T2);
    V=[0,0;x4,y4;x6,y6;x8,y8];
    F=[1 2 3 4 1];
    Link=patch('Faces',F,'Vertices',V,'FaceColor','none');
    T1=text(x4-0.5,y4,'q4');
    T2=text(x6,y6-0.3,'q6');
    drawnow;
end
figure();
plot(q4Rec,q6Rec);
xlabel('q4');ylabel('q6');
res=polyfit(q4Rec,q6Rec,1);
q6Fit=res(1).*q4Rec+res(2);
hold on;
plot(q4Rec,q6Fit);
legend('Ori','Fitted')

