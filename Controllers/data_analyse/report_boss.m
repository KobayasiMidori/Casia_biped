close all;
[row,num] = size(log_data.data);%86; 
anc = 1;
tt = log_data.data(10000:anc:end,num); 
k_deg = 180/pi;


figure('name', 'current');%1
subplot(2,5,1);
plot(tt,log_data.data(10000:anc:end,29),...
    tt,Torque2Current(log_data.data(10000:anc:end,54),1),...
  tt,log_data.data(10000:anc:end,39));
grid on;
legend('dst (limited)','dst','real');
xlabel('time (s)');
ylabel('current (A)');
title('right motor 1');
subplot(2,5,2);
plot(tt,log_data.data(10000:anc:end,30),...
    tt,Torque2Current(log_data.data(10000:anc:end,55),2),...
  tt,log_data.data(10000:anc:end,40));
grid on;
legend('dst (limited)','dst','real');
xlabel('time (s)');
ylabel('current (A)');
title('right motor 2');
subplot(2,5,3);
plot(tt,log_data.data(10000:anc:end,31),...
    tt,Torque2Current(log_data.data(10000:anc:end,56),3),...
  tt,log_data.data(10000:anc:end,41));
grid on;
legend('dst (limited)','dst','real');
xlabel('time (s)');
ylabel('current (A)');
title('right motor 3');
subplot(2,5,4);
plot(tt,log_data.data(10000:anc:end,32),...
    tt,Torque2Current(log_data.data(10000:anc:end,57),4),...
   tt,log_data.data(10000:anc:end,42));
grid on;
legend('dst (limited)','dst','real');
xlabel('time (s)');
ylabel('current (A)');
title('right motor 4');
subplot(2,5,5);
plot(tt,log_data.data(10000:anc:end,33),...
    tt,Torque2Current(log_data.data(10000:anc:end,58),5),...
    tt,log_data.data(10000:anc:end,43));
grid on;
legend('dst (limited)','dst','real');
xlabel('time (s)');
ylabel('current (A)');
title('right motor 5');

subplot(2,5,6);
plot(tt,log_data.data(10000:anc:end,34),...
    tt,Torque2Current(log_data.data(10000:anc:end,59),6),...
    tt,log_data.data(10000:anc:end,44));
grid on;
legend('dst (limited)','dst','real');
xlabel('time (s)');
ylabel('current (A)');
title('left motor 1');

subplot(2,5,7);
plot(tt,log_data.data(10000:anc:end,35),...
    tt,Torque2Current(log_data.data(10000:anc:end,60),7),...
    tt,log_data.data(10000:anc:end,45));
grid on;
legend('dst (limited)','dst','real');
xlabel('time (s)');
ylabel('current (A)');
title('left motor 2');

subplot(2,5,8);
plot(tt,log_data.data(10000:anc:end,36),...
    tt,Torque2Current(log_data.data(10000:anc:end,61),8),...
    tt,log_data.data(10000:anc:end,46));
grid on;
legend('dst (limited)','dst','real');
xlabel('time (s)');
ylabel('current (A)');
title('left motor 3');

subplot(2,5,9);
plot(tt,log_data.data(10000:anc:end,37),...
    tt,Torque2Current(log_data.data(10000:anc:end,62),9),...
    tt,log_data.data(10000:anc:end,47));
grid on;
legend('dst (limited)','dst','real');
xlabel('time (s)');
ylabel('current (A)');
title('left motor 4');

subplot(2 ,5,10);
plot(tt,log_data.data(10000:anc:end,38),...
    tt,Torque2Current(log_data.data(10000:anc:end,63),10),...
    tt,log_data.data(10000:anc:end,48));
grid on;
legend('dst (limited)','dst','real');
xlabel('time (s)');
ylabel('current (A)');
title('left motor 5');

figure('name', 'position');
subplot(3,5,1);
yyaxis left
plot(tt,log_data.data(10000:anc:end,1) * k_deg,'b-',...
        tt,log_data.data(10000:anc:end,74) * k_deg,'r-');
xlabel('time (s)');
ylabel('position (rad)');
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-'); 
ylabel('state');
grid on;
legend('real','ref','state');
title('right motor 1');

subplot(3,5,2);
yyaxis left
plot(tt,log_data.data(10000:anc:end,2) * k_deg,'b-',...
        tt,log_data.data(10000:anc:end,75) * k_deg,'r-');
xlabel('time (s)');
ylabel('position (rad)');
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('real','ref','state');
title('right motor 2');

subplot(3,5,3);
yyaxis left
plot(tt,log_data.data(10000:anc:end,3) * k_deg,'b-',...
        tt,log_data.data(10000:anc:end,76) * k_deg,'r-');
xlabel('time (s)');
ylabel('position (rad)');    
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-'); 
ylabel('state');
grid on;
legend('real','ref','state');
title('right motor 3');

subplot(3,5,4);
yyaxis left
plot(tt,log_data.data(10000:anc:end,4) * k_deg,'b-',...
        tt,log_data.data(10000:anc:end,77) * k_deg,'r-');
xlabel('time (s)');
ylabel('position (rad)');    
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('real','ref','state');
title('right motor 4');

subplot(3,5,5);
plot(tt,log_data.data(10000:anc:end,5) * k_deg);
grid on;
xlabel('time (s)');
ylabel('position (rad)'); 
legend('real');
title('right pas 1');

subplot(3,5,6);
plot(tt,log_data.data(10000:anc:end,6) * k_deg);
grid on;
xlabel('time (s)');
ylabel('position (rad)'); 
legend('real');
title('right pas 2');

subplot(3,5,7);
yyaxis left
plot(tt,log_data.data(10000:anc:end,7) * k_deg,'b-',...
        tt,log_data.data(10000:anc:end,78) * k_deg,'r-');
xlabel('time (s)');
ylabel('position (rad)');   
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('real','ref','state');
title('right motor 5');

subplot(3,5,8);
yyaxis left
plot(tt,log_data.data(10000:anc:end,8) * k_deg,'b-',...
        tt,log_data.data(10000:anc:end,79) * k_deg,'r-');
xlabel('time (s)');
ylabel('position (rad)');     
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-'); 
ylabel('state');
grid on;
legend('real','ref','state');
title('left motor 1');

subplot(3,5,9);
yyaxis left
plot(tt,log_data.data(10000:anc:end,9) * k_deg,'b-',...
        tt,log_data.data(10000:anc:end,80) * k_deg,'r-');
xlabel('time (s)');
ylabel('position (rad)');      
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('real','ref','state');
title('left motor 2');

subplot(3,5,10);
plot(tt,log_data.data(10000:anc:end,10) * k_deg,'b-',...
        tt,log_data.data(10000:anc:end,81) * k_deg,'r-');
xlabel('time (s)');
ylabel('position (rad)');        
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('real','ref','state');
title('left motor 3');

subplot(3,5,11);
yyaxis left;
plot(tt,log_data.data(10000:anc:end,11) * k_deg,'b-',...  
        tt,log_data.data(10000:anc:end,82) * k_deg,'r-');
xlabel('time (s)');
ylabel('position (rad)');      
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('real','ref','state');
title('left motor 4');

subplot(3,5,12);
plot(tt,log_data.data(10000:anc:end,12) * k_deg);
grid on;
xlabel('time (s)');
ylabel('position (rad)'); 
legend('real');
title('left pas 1');

subplot(3,5,13);
plot(tt,log_data.data(10000:anc:end,13) * k_deg);
grid on;
xlabel('time (s)');
ylabel('position (rad)'); 
legend('real');
title('left pas 2');

subplot(3,5,14);
yyaxis left
plot(tt,log_data.data(10000:anc:end,14) * k_deg,'b-',...
        tt,log_data.data(10000:anc:end,83) * k_deg,'r-');
xlabel('time (s)');
ylabel('position (rad)');    
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('real','ref','state');
title('left motor 5');

figure('name', 'imu');
subplot(2,3,1);
yyaxis left;
plot(tt,180/pi*(log_data.data(10000:anc:end,84)),'b-',...
        tt, zeros(length(tt),1),'r-');
xlabel('time (s)');
ylabel('angle (deg)');    
yyaxis right;
plot(tt, log_data.data(10000:anc:end,114));
ylabel('state');
grid on;
legend('real','ref','state');
title('IMU roll');

subplot(2,3,2);
yyaxis left;
plot(tt,180/pi*(log_data.data(10000:anc:end,85)),'b-',...
        tt, zeros(length(tt),1),'r-');
xlabel('time (s)');
ylabel('angle (deg)');    
yyaxis right;
plot(tt, log_data.data(10000:anc:end,114));
ylabel('state');
grid on;
legend('real','ref','state');
title('IMU pitch');

subplot(2,3,3);
yyaxis left;
plot(tt,180/pi*(log_data.data(10000:anc:end,86)),'b-',...
        tt,180/pi*(log_data.data(10000:anc:end,170)),'r-');
xlabel('time (s)');
ylabel('angle (deg)');    
yyaxis right;
plot(tt, log_data.data(10000:anc:end,114));
ylabel('state');
grid on;
legend('real','ref','state');
title('IMU yaw');    

figure('name', 'terminal');%4
subplot(2,3,1);
yyaxis right;
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
yyaxis left;
plot(tt,log_data.data(10000:anc:end,107),'g-',...
        tt,log_data.data(10000:anc:end,201),'r-',...
        tt,log_data.data(10000:anc:end,87),'b-');
xlabel('time (s)');
ylabel('x (m)');  
grid on;
legend('state','trajectory','ref','real');
title('right foot position x (base link)');    

subplot(2,3,2);
yyaxis right;
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
yyaxis left;
plot(tt,log_data.data(10000:anc:end,108),'g-',...
        tt,log_data.data(10000:anc:end,205),'r-',...
        tt,log_data.data(10000:anc:end,88),'b-');
xlabel('time (s)');
ylabel('z (m)');  
grid on;
legend('state','trajectory','ref','real');
title('right foot position z (base link)');  

subplot(2,3,3);
yyaxis right;
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
yyaxis left;
plot(tt,log_data.data(10000:anc:end,109),'g-',...
        tt,log_data.data(10000:anc:end,207),'r-',...
        tt,log_data.data(10000:anc:end,89),'b-');
xlabel('time (s)');
ylabel('p (rad)');  
grid on;
legend('state','trajectory','ref','real');
title('right foot p (base link)');  

subplot(2,3,4);
yyaxis right;
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
yyaxis left;
plot(tt,log_data.data(10000:anc:end,110),'g-',...
        tt,log_data.data(10000:anc:end,202),'r-',...
        tt,log_data.data(10000:anc:end,97),'b-');
xlabel('time (s)');
ylabel('x (m)');  
grid on;
legend('state','trajectory','ref','real');
title('left foot position x (base link)');  

subplot(2,3,5);
yyaxis right;
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
yyaxis left;
plot(tt,log_data.data(10000:anc:end,111),'g-',...
        tt,log_data.data(10000:anc:end,206),'r-',...
        tt,log_data.data(10000:anc:end,98),'b-');
xlabel('time (s)');
ylabel('z (m)');  
grid on;
legend('state','trajectory','ref','real');
title('left foot position z (base link)');  

subplot(2,3,6);
yyaxis right;
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
yyaxis left;
plot(tt,log_data.data(10000:anc:end,112),'g-',...
        tt,log_data.data(10000:anc:end,208),'r-',...
        tt,log_data.data(10000:anc:end,99),'b-');
xlabel('time (s)');
ylabel('p (rad)');  
grid on;
legend('state','trajectory','ref','real');
title('left foot p (base link)');  

figure('name', 'pid');
label_name = {'rz (m)' , 'rp (rad)' , 'lp (rad)' , 'st\_motor1 (rad)' , 'st\_motor3 (rad)' , 'st\_motor2 (rad)' , 'sw\_y (m)' , 'sw\_x (m)' , 'sw\_x (m)' , 'sw\_y (m)' , 'rz (m)' , 'lz (m)'};
title_name={'rz\_roll\_pid' , 'rp\_pitch\_pid' , 'lp\_pitch\_pid' , 'st\_roll\_pid' , 'st\_pitch\_pid' , 'st\_yaw\_pid' , 'sw\_yv\_pid' , 'sw\_xv\_pid' , 'swx\_pitch\_pid' , 'swy\_roll\_pid' , 'rz\_zv\_pid' , 'lz\_zv\_pid'};
Index = [      2,                 3,               6,              7,               13,            12,          8,          10,              18,              19,          16,        17   ];
for i = 1:12
    subplot(3,4,i);
    yyaxis left;
    plot(tt,log_data.data(10000:anc:end,120+Index(i)),'b-'); 
    xlabel('time (s)');
    ylabel(label_name(i));   
    yyaxis right;
    plot(tt,log_data.data(10000:anc:end,114),'m-'); 
    grid on;
    title(title_name{i});
end

figure('name', 'state Est');
subplot(2,3,1)
yyaxis left
plot(tt,log_data.data(10000:anc:end,115),'b-');
xlabel('time (s)');
ylabel('xv (m/s)');    
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('xv','state');
title('xv');    

subplot(2,3,2)
yyaxis left
plot(tt,log_data.data(10000:anc:end,116),'b-');
xlabel('time (s)');
ylabel('yv (m/s)'); 
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('yv','state');
title('yv');    

subplot(2,3,3)
plot(tt,log_data.data(10000:anc:end,117),'b-');
xlabel('time (s)');
ylabel('zv (m/s)'); 
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('zv','state');
title('zv');    

subplot(2,3,4)
yyaxis left
plot(tt,log_data.data(10000:anc:end,118),'b-');
xlabel('time (s)');
ylabel('xp (m)'); 
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('xp','state');
title('xp');    

subplot(2,3,5)
yyaxis left
plot(tt,log_data.data(10000:anc:end,119),'b-');
xlabel('time (s)');
ylabel('yp (m)'); 
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('yp','state');
title('yp');  

subplot(2,3,6)
yyaxis left;
plot(tt,log_data.data(10000:anc:end,120),'b-');
xlabel('time (s)');
ylabel('zp (m)'); 
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('zp','state');
title('zp');  


vel = zeros(row,10);
Index = [1, 2, 3, 4, 7, 8, 9, 10, 11, 14];
for i = 1:10
    for j = 2:row
        vel(j, i) = (log_data.data(j, Index(i)) -  log_data.data(j-1, Index(i)))*2000;
        if log_data.data(j-1, Index(i)) == 0
            vel(j, i) = 0;
        end
    end
end
figure('name', 'pd vel ref');
for i = 1:10
    subplot(3,4,i);
    plot(tt,vel(10000:anc:end, i), 'r-', ...
        tt, log_data.data(10000:anc:end,14 + Index(i)), 'b-');
end

figure;
subplot(2,3,1);
yyaxis left;
plot(tt, log_data.data(10000:anc:end,116), 'b-',...
        tt, -log_data.data(10000:anc:end,127)*3, 'r-');
xlabel('time (s)');
ylabel('yv and pid'); 
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
ylabel('state');
grid on;
legend('yv','st roll pid','state');
title('yv and st_roll');  

figure;
subplot(3,5,1)
% yyaxis left
plot(tt,log_data.data(10000:anc:end,87),'b-');hold on;
plot(tt,log_data.data(10000:anc:end,198+3),'g-');hold on;
% yyaxis right
% plot(tt,log_data.data(10000:anc:end,114),'r-');
legend('fk_r_x','target');
subplot(3,5,2)
plot(tt,log_data.data(10000:anc:end,88),'b-');hold on;
plot(tt,log_data.data(10000:anc:end,108),'r-');hold on;
% plot(tt,log_data.data(10000:anc:end,198+7),'g-');
legend('fk_r_z','TargetBase','target');
subplot(3,5,3)
% yyaxis left;
plot(tt,log_data.data(10000:anc:end,89),'b-');hold on;
plot(tt,log_data.data(10000:anc:end,198+9),'g-');hold on;
% yyaxis right;
plot(tt,log_data.data(10000:anc:end,114)*0.2-0.3,'r-');
legend('fk_r_p','target','march_flag');
subplot(3,5,4)
plot(tt,log_data.data(10000:anc:end,90));legend('fk_r_q1');
subplot(3,5,5)
plot(tt,log_data.data(10000:anc:end,91));legend('fk_r_q2');
subplot(3,5,6)
plot(tt,log_data.data(10000:anc:end,92));legend('fk_r_F1');
subplot(3,5,7)
plot(tt,log_data.data(10000:anc:end,93));legend('fk_r_F2');
hold on;
plot(tt,(log_data.data(10000:anc:end,114)-2)*100,'r-');
subplot(3,5,8)
% yyaxis left
plot(tt,log_data.data(10000:anc:end,97),'b-');hold on;
plot(tt,log_data.data(10000:anc:end,198+4),'g-');
% yyaxis right
% plot(tt,log_data.data(10000:anc:end,114),'r-');
legend('fk_l_x','target');
subplot(3,5,9)
plot(tt,log_data.data(10000:anc:end,98),'b-');hold on;
plot(tt,log_data.data(10000:anc:end,111),'r-');hold on;
plot(tt,log_data.data(10000:anc:end,198+8),'g-');
legend('fk_l_z','TargetBase');
subplot(3,5,10)
% yyaxis left;
plot(tt,log_data.data(10000:anc:end,99),'b-');hold on;
plot(tt,log_data.data(10000:anc:end,198+10)+0.0367+0.0524,'g-');hold on;
% yyaxis right;
plot(tt,log_data.data(10000:anc:end,114)*0.2-0.3,'r-');
legend('fk_l_p','target','march_flag');
subplot(3,5,11)
plot(tt,log_data.data(10000:anc:end,100));legend('fk_l_q1');
subplot(3,5,12)
plot(tt,log_data.data(10000:anc:end,101));legend('fk_l_q2');
subplot(3,5,13)
plot(tt,log_data.data(10000:anc:end,102));legend('fk_l_F1');
subplot(3,5,14)
plot(tt,log_data.data(10000:anc:end,103));legend('fk_l_F2');
hold on;
plot(tt,(log_data.data(10000:anc:end,114)-2)*100,'r-');








