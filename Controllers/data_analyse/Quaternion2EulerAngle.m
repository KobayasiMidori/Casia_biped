%四元数转欧拉角
% 旋转矩阵转欧拉角
%  [r2,r2,r3]=dcm2angle(R, S)
% 注：得到的结果为弧度，若需要角度需进一步转化
% [r1,r2,r3]=quat2angle([q0 q1 q2 q3]，S)
% 注：S 的选择有12种，【'ZYX','ZYZ’,‘ZXY’,‘ZXZ’,‘YXZ’,‘YXY’,‘YZX’,‘YZY’,‘XYZ’,‘XYX’,‘XZY’,‘XZX’】
%        S  默认 ‘ZYX'

[m,n]=size(log_data.data);
% m = 20000;
x=zeros(m,1);
y=zeros(m,1);
z=zeros(m,1);
t=zeros(m,1);
yaw = zeros(m,1);
pitch = zeros(m,1);
roll = zeros(m,1);
for i = 10000:m
    q0 = log_data.data(i,73);
    q1 = log_data.data(i,74);
    q2 = log_data.data(i,75);
    q3 = log_data.data(i,76);
%       q0 = 0.14;  % 
%       q1 = 0.8;
%       q2 = -0.117;
%       q3 = 0.573;
%       q0 = 0.033;  %后仰20度
%       q1 = 0.557;
%       q2 = -0.016;
%       q3 = 0.821;
%       q0 = 0.12;  %左倾20度
%       q1 = 0.625;
%       q2 = -0.368;
%       q3 = 0.677;
%       q0 = 0.05;  %右倾20度
%       q1 = -0.67;
%       q2 = -0.30;
%       q3 = -0.68;
   %%
   R_Iw_w = [1 0 0;0 -1 0;0 0 -1];
   R_robot_Imu = [0 0 -1;0 -1 0;-1 0 0];
   R_Imu_Iw= quat2rotm([q0 q1 q2 q3]);   
   R_robot_w =R_Iw_w*R_Imu_Iw*R_robot_Imu;
   eulZYX = rotm2eul(R_robot_w,'ZYX');
   roll(i) = eulZYX(3)/pi*180;
   pitch(i) = eulZYX(2)/pi*180;
   yaw(i) = eulZYX(1)/pi*180;
   t(i) = log_data.data(i,77);
end
figure;
plot(t(10000:m),yaw(10000:m),t(10000:m),pitch(10000:m),t(10000:m),roll(10000:m));
legend('yaw','pitch','roll');  

% rtest = Rz(2.647)*Ry(0.07378)*Rx(0.34759);

function M=Ry(sita)
% 3D rotation matrix, vb=M*v: 
% rotate a vector in one frame,
% or change the vector 'v' in rotated frame to 'vb' in world frame
M=[cos(sita),0,sin(sita);
    0,1,0;
    -sin(sita),0,cos(sita)];
end

function M=Rx(sita)
M=[1,0,0;
   0,cos(sita),-sin(sita);    
   0,sin(sita),cos(sita)];
end

 function M=Rz(sita)
M=[cos(sita),-sin(sita),0;    
   sin(sita),cos(sita),0;
   0,0,1];
end   