% close all;
aa = 'imu';
% load('C:\Users\taizun\Desktop\copy\casia_cassie\DataRec\2021_04_16T16_34_20.mat');%60Hzright
% der = 'right';
% load('C:\Users\taizun\Desktop\copy\casia_cassie\DataRec\2021_04_20T11_52_43.mat');%60Hzleft
load('C:\Users\taizun\Desktop\copy\casia_cassie\DataRec\2021_04_20T14_58_42.mat');
der = 'left';
% [~,num1] = size(log_data.data);
% time = log_data.data(:,num1);
% foot_x :100
% foot_y :101
% foot_z :102
% foot_a :103
% foot_b :104
% foot_t :105
% seg_x :106
% seg_y :107
% seg_z :108
% seg_a :109
% seg_b :110
% seg_t :111
[num,num1] = size(log_data.data);
if  strcmp(der,'right')== 1
    starttime = 53*2000;%
    endtime = 160*2000;%
else
    starttime = 47.5*2000;%
    endtime = 154*2000;%
end

% foot_p = zeros(4,endtime-starttime+1);
foot_p = zeros(4,num);
imu_p = zeros(4,num);
d_sp = [-6.5;0;-42.19+8.9]; 
imu_position = [54.13;0;132.81];
time=log_data.data(:,num1);
if  strcmp(der,'right')== 1
    Index_ori = 100;
else
    Index_ori = 102;
end
for i = 1:num%starttime:endtime
    if  strcmp(aa,'cap')== 1
        roll = log_data.data(i,Index_ori+9);
        pitch =log_data.data(i,Index_ori+10);
    else
        roll = log_data.data(i,83);%
        pitch =log_data.data(i,84);%
    end    
    yaw = log_data.data(i,Index_ori+11);%zlog_data.data(i,85);%
    d_ws = [log_data.data(i,Index_ori+6); log_data.data(i,Index_ori+7); log_data.data(i,Index_ori+8)];
    foot_w = [log_data.data(i,Index_ori); log_data.data(i,Index_ori+1); log_data.data(i,Index_ori+2)];

    R_sw_ang = [cos(yaw), -sin(yaw), 0;sin(yaw), cos(yaw), 0;0, 0, 1]*...
          [cos(pitch), 0, sin(pitch);0, 1, 0;-sin(pitch), 0, cos(pitch)]*... 
          [1, 0, 0;0, cos(roll), -sin( roll);0, sin(roll), cos(roll)];
    R_sw = [R_sw_ang, d_ws;0,0,0,1];
    R_ws = inv_my(R_sw);                                      
    R_sp = [1,0,0,d_sp(1);0,1,0,d_sp(2);0,0,1,d_sp(3);0,0,0,1];
    R_ps = inv_my(R_sp);  
    foot_p(:,i) = R_sp*R_ws*[foot_w;1];
    if  strcmp(der,'right')== 1
        foot_p(2,i) = foot_p(2,i)-33.2; 
    else
        foot_p(2,i) = foot_p(2,i)+33.2; 
    end    
    foot_p(3,i) = foot_p(3,i);% + 93;    
%     foot_p(:,i-starttime+1) = R_sp*R_ws*[foot_w;1];    
    imu_p(:,i) = R_sw*R_ps*[imu_position;1];
%     if i>starttime
%         if abs(foot_p(1,i-starttime+1) - foot_p_pre(1)) > 15 || ...
%            abs(foot_p(2,i-starttime+1) - foot_p_pre(2)) > 15 || ...
%            abs(foot_p(3,i-starttime+1) - foot_p_pre(3)) > 15
%                 foot_p(:,i-starttime+1) = foot_p_pre;
%         end
%     end
%     foot_p_pre = foot_p(:,i-starttime+1);
end
Index = [1:10140,22580:39730,43850:58050,64490:95310,107300:137200,146600:179400,183900:198200,207400:214001];
% Index = int8(Index);
figure;
scatter3(foot_p(1,:),foot_p(2,:),foot_p(3,:),'.');
% scatter3(foot_p(1,1:2000),foot_p(2,1:2000),foot_p(3,1:2000),'r.');
% hold on;
% scatter3(foot_p(1,2001:end),foot_p(2,2001:endt),foot_p(3,2001:end),'b.');
axis equal;
ylim([-300,300]);
Index1 = starttime:endtime;
if strcmp(der,'right')== 1
    figure;
    subplot(3,1,1);
    plot(time(Index1),foot_p(1,Index1),'r',time(Index1),log_data.data(Index1,89+1)*1000,'b');%,Index2/2000,foot_p(1,Index2),'g');
    subplot(3,1,2);
    plot(time(Index1),foot_p(2,Index1));%,Index2/2000,foot_p(2,Index2),'g');
    subplot(3,1,3);
    plot(time(Index1),foot_p(3,Index1),'r',time(Index1),log_data.data(Index1,89+2)*1000,'b');%,Index2/2000,foot_p(3,Index2),'g');
    grid on;
else
    figure;
    subplot(3,1,1);
    plot(time(Index1),foot_p(1,Index1),'r',time(Index1),log_data.data(Index1,91+6)*1000,'b');%,Index2/2000,foot_p(1,Index2),'g');
    subplot(3,1,2);
    plot(time(Index1),foot_p(2,Index1));%,Index2/2000,foot_p(2,Index2),'g');
    subplot(3,1,3);
    plot(time(Index1),foot_p(3,Index1),'r',time(Index1),log_data.data(Index1,91+7)*1000,'b');%,Index2/2000,foot_p(3,Index2),'g');
    grid on;    
end
figure;
subplot(3,1,1);
plot(time,log_data.data(:,Index_ori+9)*180/pi,'r',time,log_data.data(:,83)*180/pi,'b');
subplot(3,1,2);
plot(time,log_data.data(:,Index_ori+10)*180/pi,'r',time,log_data.data(:,84)*180/pi,'b');
subplot(3,1,3);
plot(time,log_data.data(:,Index_ori+11)*180/pi,'r',time,log_data.data(:,85)*180/pi,'b');

% clear variables;
% N=100;
if strcmp(der,'right')== 1
    Index2 = Index1(Index);    
    data.q.q1=log_data.data(Index2,1);
    data.q.q2=log_data.data(Index2,2);
    data.q.q3=log_data.data(Index2,3);
    data.q.q4=log_data.data(Index2,4);
    data.q.q5=log_data.data(Index2,5);
    data.q.q6=log_data.data(Index2,6);
    data.q.q7=log_data.data(Index2,7);
    data.pD=foot_p(1:3,Index2); %(1:3,Index2); foot-end position in w.r.t pelvis
else
    data.q.q1=log_data.data(Index1,8);%(Index2,1);
    data.q.q2=log_data.data(Index1,9);%(Index2,2);
    data.q.q3=log_data.data(Index1,10);%(Index2,3);
    data.q.q4=log_data.data(Index1,11);%(Index2,4);
    data.q.q5=log_data.data(Index1,12);%(Index2,5);
    data.q.q6=log_data.data(Index1,13);%(Index2,6);
    data.q.q7=log_data.data(Index1,14);%(Index2,7);
    data.pD=foot_p(1:3,Index1); %(1:3,Index2);  foot-end position in w.r.t pelvis    
end
figure;
subplot(4,1,1);
plot(data.pD(1,:));
subplot(4,1,2);
plot(data.pD(2,:));
subplot(4,1,3);
plot(data.pD(3,:));
subplot(4,1,4);
plot(Index);
if strcmp(der,'right')== 1
    save('C:\Users\taizun\Desktop\copy\casia_cassie\Controllers\data_analyse\foot_p_cap_right','data');
    data_imu.time = time;log_data.data(:,num1);
    data_imu.imu_angle = log_data.data(:,83:85);
    data_imu.capture_p = imu_p(1:3,:);
    save('C:\Users\taizun\Desktop\copy\casia_cassie\Controllers\data_analyse\imu_cap_right','data_imu');
else  
    data_imu.time = time;log_data.data(:,num1);
    data_imu.imu_angle = log_data.data(:,83:85);
    data_imu.imu_acc = log_data.data(:,86:88);
    data_imu.imu_gyr = log_data.data(:,89:91);
    data_imu.capture_p = imu_p(1:3,:);
    if strcmp(aa,'cap')== 1
        save('C:\Users\taizun\Desktop\copy\casia_cassie\Controllers\data_analyse\foot_p_cap_left','data');
        save('C:\Users\taizun\Desktop\copy\casia_cassie\Controllers\data_analyse\imu_cap_left','data_imu');
    else
        save('C:\Users\taizun\Desktop\copy\casia_cassie\Controllers\data_analyse\foot_p_imu_left','data');
        save('C:\Users\taizun\Desktop\copy\casia_cassie\Controllers\data_analyse\imu_imu_left','data_imu');
    end
end
figure;
scatter3(imu_p(1,:),imu_p(2,:),imu_p(3,:),'.');
% figure;
% plot(data.q.q3);
% figure;
% plot(data.q.q3);


function H_t = inv_my(H)
    H_t = H;
    H_t(1:3,1:3)=H(1:3,1:3)';
    H_t(1:3,4)=-H(1:3,1:3)'*H(1:3,4);
end


