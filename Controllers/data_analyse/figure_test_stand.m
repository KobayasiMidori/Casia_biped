close all;
[~,num] = size(log_data.data);%86;
anc = 1;
%%
num_value = [14; 14; 10; 10; 5; 10; 10; 10; 3; 10; 10; 6; 1; 1; 3; 3; 20; 22; 1; 6; 1; 2; 4; 10];
Index_value = zeros(length(num_value),1);
Index_value(1) = 1;
for i = 2:length(num_value) 
    Index_value(i) = Index_value(i-1) + num_value(i-1);
end
[~,num] = size(log_data.data);%86; 
anc = 1;
tt = log_data.data(10000:anc:end,num); 
% % q4R=log_data.data(60*2000,4)-log_data.data(7*2000,4);
% % q6R=log_data.data(60*2000,6)-log_data.data(7*2000,6);
% % R=q6R/q4R
% % q4L=log_data.data(60*2000,11)-log_data.data(7*2000,11);
% % q6L=log_data.data(60*2000,13)-log_data.data(7*2000,13);
% % L=q6L/q4L
figure;
subplot(3,5,1);
plot(tt,log_data.data(10000:anc:end,1));
subplot(3,5,2);
plot(tt,log_data.data(10000:anc:end,2));
subplot(3,5,3);
plot(tt,log_data.data(10000:anc:end,3));
subplot(3,5,4);
plot(tt,log_data.data(10000:anc:end,4));
subplot(3,5,5);
plot(tt,log_data.data(10000:anc:end,7));
legend('right position(rad)');


subplot(3,5,6);
plot(tt,log_data.data(10000:anc:end,15));
subplot(3,5,7);
plot(tt,log_data.data(10000:anc:end,16));
subplot(3,5,8);
plot(tt,log_data.data(10000:anc:end,17));
subplot(3,5,9);
plot(tt,log_data.data(10000:anc:end,18));
subplot(3,5,10);
plot(tt,log_data.data(10000:anc:end,21));
legend('right velocity(rad/s)');
% 
% 
subplot(3,5,11);
plot(tt,Current2Torque(log_data.data(10000:anc:end,29),1),tt,log_data.data(10000:anc:end,54));
subplot(3,5,12);
plot(tt,Current2Torque(log_data.data(10000:anc:end,30),2),tt,log_data.data(10000:anc:end,55));
subplot(3,5,13);
plot(tt,Current2Torque(log_data.data(10000:anc:end,31),3),tt,log_data.data(10000:anc:end,56));
subplot(3,5,14);
plot(tt,Current2Torque(log_data.data(10000:anc:end,32),4),tt,log_data.data(10000:anc:end,57));
subplot(3,5,15);
plot(tt,Current2Torque(log_data.data(10000:anc:end,33),5),tt,log_data.data(10000:anc:end,58));
legend('right friction compensation added torque(NM)','right demand torque(NM)');
% 
figure;
subplot(3,5,1);
plot(tt,log_data.data(10000:anc:end,29),tt,Torque2Current(log_data.data(10000:anc:end,54),1),...
  tt,log_data.data(10000:anc:end,39));
subplot(3,5,2);
plot(tt,log_data.data(10000:anc:end,30),tt,Torque2Current(log_data.data(10000:anc:end,55),2),...
  tt,log_data.data(10000:anc:end,40));
subplot(3,5,3);
plot(tt,log_data.data(10000:anc:end,31),tt,Torque2Current(log_data.data(10000:anc:end,56),3),...
  tt,log_data.data(10000:anc:end,41));
subplot(3,5,4);
plot(tt,log_data.data(10000:anc:end,32),tt,Torque2Current(log_data.data(10000:anc:end,57),4),...
   tt,log_data.data(10000:anc:end,42) );
subplot(3,5,5);
plot(tt,log_data.data(10000:anc:end,33),tt,Torque2Current(log_data.data(10000:anc:end,58),5),...
    tt,log_data.data(10000:anc:end,43) );
legend('right out current','right target current','right real current');



subplot(3,5,6);
plot(tt,log_data.data(10000:anc:end,63));
subplot(3,5,7);
plot(tt,log_data.data(10000:anc:end,64));
subplot(3,5,8);
plot(tt,log_data.data(10000:anc:end,65));
subplot(3,5,9);
plot(tt,log_data.data(10000:anc:end,66));
subplot(3,5,10);
plot(tt,log_data.data(10000:anc:end,67));
legend('right f-mode');


figure;
subplot(3,5,1);
plot(tt,log_data.data(10000:anc:end,8));
subplot(3,5,2);
plot(tt,log_data.data(10000:anc:end,9));
subplot(3,5,3);
plot(tt,log_data.data(10000:anc:end,10));
subplot(3,5,4);
plot(tt,log_data.data(10000:anc:end,11));
subplot(3,5,5);
plot(tt,log_data.data(10000:anc:end,14));
legend('left position(rad)');


subplot(3,5,6);
plot(tt,log_data.data(10000:anc:end,22));
subplot(3,5,7);
plot(tt,log_data.data(10000:anc:end,23));
subplot(3,5,8);
plot(tt,log_data.data(10000:anc:end,24));
subplot(3,5,9);
plot(tt,log_data.data(10000:anc:end,25));
subplot(3,5,10);
plot(tt,log_data.data(10000:anc:end,28));
legend('left velocity(rad/s)');


subplot(3,5,11);
plot(tt,Current2Torque(log_data.data(10000:anc:end,34),6),tt,log_data.data(10000:anc:end,59));
subplot(3,5,12);
plot(tt,Current2Torque(log_data.data(10000:anc:end,35),7),tt,log_data.data(10000:anc:end,60));
subplot(3,5,13);
plot(tt,Current2Torque(log_data.data(10000:anc:end,36),8),tt,log_data.data(10000:anc:end,61));
subplot(3,5,14);
plot(tt,Current2Torque(log_data.data(10000:anc:end,37),9),tt,log_data.data(10000:anc:end,62));
subplot(3,5,15);
plot(tt,Current2Torque(log_data.data(10000:anc:end,38),10),tt,log_data.data(10000:anc:end,63));
legend('left friction compensation added torque(NM)','left demand torque(NM)');
figure;
subplot(3,5,1);
plot(tt,log_data.data(10000:anc:end,34),tt,Torque2Current(log_data.data(10000:anc:end,59),6),tt,log_data.data(10000:anc:end,44));
subplot(3,5,2);
plot(tt,log_data.data(10000:anc:end,35),tt,Torque2Current(log_data.data(10000:anc:end,60),7),tt,log_data.data(10000:anc:end,45));
subplot(3,5,3);
plot(tt,log_data.data(10000:anc:end,36),tt,Torque2Current(log_data.data(10000:anc:end,61),8),tt,log_data.data(10000:anc:end,46));
subplot(3,5,4);
plot(tt,log_data.data(10000:anc:end,37),tt,Torque2Current(log_data.data(10000:anc:end,62),9),tt,log_data.data(10000:anc:end,47));
subplot(3,5,5);
% yyaxis left;
plot(tt,log_data.data(10000:anc:end,38),tt,Torque2Current(log_data.data(10000:anc:end,63),10),tt,log_data.data(10000:anc:end,48));
% yyaxis right;
% plot(tt,log_data.data(10000:anc:end,114));
legend('left out current(A)','left target current(A)','left real current(A)');
% 
total_r =  abs(log_data.data(10000:anc:end,29))+abs(log_data.data(10000:anc:end,30))+abs(log_data.data(10000:anc:end,31))+abs(log_data.data(10000:anc:end,32))+abs(log_data.data(10000:anc:end,33));
total_l =  abs(log_data.data(10000:anc:end,34))+abs(log_data.data(10000:anc:end,35))+abs(log_data.data(10000:anc:end,36))+abs(log_data.data(10000:anc:end,37))+abs(log_data.data(10000:anc:end,38));
total = total_l+total_r;
figure;
subplot(1,3,1);plot(tt,total_r); legend('total_l');
subplot(1,3,2);plot(tt,total_l); legend('total_r');
subplot(1,3,3);plot(tt,total); legend('total');
% 
% % subplot(3,5,6);
% % plot(tt,log_data.data(10000:anc:end,68));
% % subplot(3,5,7);
% % plot(tt,log_data.data(10000:anc:end,69));
% % subplot(3,5,8);
% % plot(tt,log_data.data(10000:anc:end,70));
% % subplot(3,5,9);
% % plot(tt,log_data.data(10000:anc:end,71));
% % subplot(3,5,10);
% % plot(tt,log_data.data(10000:anc:end,72));
% % legend('left f_mode');
% % 
% figure;
% subplot(2,2,1);
% plot(tt,log_data.data(10000:anc:end,84)*180/pi);
% legend('roll°');
% subplot(2,2,2);
% plot(tt,log_data.data(10000:anc:end,85)*180/pi);
% legend('pitch°');
% subplot(2,2,3);
% plot(tt,log_data.data(10000:anc:end,86)*180/pi);
% legend('yaw°');
%%
close all;
[~,num] = size(log_data.data);%86;
anc = 1;
tt = log_data.data(10000:anc:end,num);
figure;
subplot(3,5,1);
yyaxis left
plot(tt,log_data.data(10000:anc:end,1),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,74),'r-');
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-'); 
legend('right roll P','target');
subplot(3,5,2);
% yyaxis left
plot(tt,log_data.data(10000:anc:end,2),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,75),'r-');legend('right yaw P','target');
% yyaxis right
% plot(tt,log_data.data(10000:anc:end,114),'m-');
subplot(3,5,3);
yyaxis left
plot(tt,log_data.data(10000:anc:end,3),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,76),'r-');
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-'); 
legend('right pitch P','target');
subplot(3,5,4);
% yyaxis left
plot(tt,log_data.data(10000:anc:end,4),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,77),'r-');legend('right knee P','target');
% yyaxis right
% plot(tt,log_data.data(10000:anc:end,114),'m-');
subplot(3,5,5);
plot(tt,log_data.data(10000:anc:end,5));legend('right ShinJoint P');
subplot(3,5,6);
yyaxis left;
plot(tt,log_data.data(10000:anc:end,6));legend('right TarsusJoint P'); 
yyaxis right;
hold on;plot(tt,log_data.data(10000:anc:end,114)*0.01,'-');
subplot(3,5,7);
% yyaxis left
plot(tt,log_data.data(10000:anc:end,7),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,78),'r-');
hold on;plot(tt,log_data.data(10000:anc:end,43)/10,'g-');
% yyaxis right
% plot(tt,log_data.data(10000:anc:end,114),'m-');
legend('right foot P','target','current');
subplot(3,5,8);
yyaxis left
plot(tt,log_data.data(10000:anc:end,8),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,79),'r-');
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-'); 
legend('left roll P','target');
subplot(3,5,9);
% yyaxis left
plot(tt,log_data.data(10000:anc:end,9));
hold on;plot(tt,log_data.data(10000:anc:end,80));legend('left yaw P','target');
% yyaxis right
% plot(tt,log_data.data(10000:anc:end,114),'m-');
subplot(3,5,10);
plot(tt,log_data.data(10000:anc:end,10),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,81),'r-');
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
legend('left pitch P','target');
subplot(3,5,11);
% yyaxis left;
plot(tt,log_data.data(10000:anc:end,11),'b-');    
hold on;plot(tt,log_data.data(10000:anc:end,82),'r-');legend('left knee P','target');
% yyaxis right
% plot(tt,log_data.data(10000:anc:end,114),'m-');
subplot(3,5,12);
plot(tt,log_data.data(10000:anc:end,12));legend('left ShinJoint P');
subplot(3,5,13);
yyaxis left;
plot(tt,log_data.data(10000:anc:end,13));legend('left TarsusJoint P');
yyaxis right;
hold on;plot(tt,log_data.data(10000:anc:end,114)*0.01,'-');
subplot(3,5,14);
% yyaxis left
plot(tt,log_data.data(10000:anc:end,14),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,83),'r-');
hold on;plot(tt,log_data.data(10000:anc:end,48)/10,'g-');legend('left foot P','target','current');
% yyaxis right
% plot(tt,log_data.data(10000:anc:end,114),'m-');

figure;
subplot(1,3,1);
plot(tt,180/pi*(log_data.data(10000:anc:end,84)), tt, log_data.data(10000:anc:end,114)-2);
hold on;
% plot(tt,log_data.data(10000:anc:end,265));
legend('roll');
subplot(1,3,2);
plot(tt,180/pi*(log_data.data(10000:anc:end,85)), tt, log_data.data(10000:anc:end,114)-2,tt, log_data.data(10000:anc:end,123)*10,tt, log_data.data(10000:anc:end,115));hold on;
hold on;
% plot(tt,log_data.data(10000:anc:end,265));
% plot(tt,log_data.data(10000:anc:end,257)*20);
hold on;
% plot(tt,log_data.data(10000:anc:end,214)*10,'-k');
legend('pitch');
subplot(1,3,3);
plot(tt,180/pi*(log_data.data(10000:anc:end,86)),'-b');hold on;
plot(tt,180/pi*(log_data.data(10000:anc:end,170)),'-r');hold on;
plot(tt,180/pi*(log_data.data(10000:anc:end,170))+log_data.data(10000:anc:end,120+12)*40-10,'-g');hold on;
plot(tt,180/pi*(log_data.data(10000:anc:end,170))+log_data.data(10000:anc:end,114)*4-20,'-m');hold on;
% plot(tt,180/pi*(log_data.data(10000:anc:end,170))+log_data.data(10000:anc:end,257+5)*5,'-c');hold on;
legend('yaw');

% % figure;
% % v_rad = log_data.data(:,15);
% % velocity_filtered = filter(MyButterworth1,v_rad); %应该改成filtfilt
% % plot(log_data.data(:,63),v_rad,log_data.data(:,63),velocity_filtered);
% % figure;
% % v_rad = log_data.data(:,16);
% % velocity_filtered = filter(MyButterworth1,v_rad); %应该改成filtfilt
% % plot(log_data.data(:,63),v_rad,log_data.data(:,63),velocity_filtered);
% % figure;
% % v_rad = log_data.data(:,17);
% % velocity_filtered = filter(MyButterworth1,v_rad); %应该改成filtfilt
% % plot(log_data.data(:,63),v_rad,log_data.data(:,63),velocity_filtered);
% 
% % figure;
% % v_rad = log_data.data(10000:anc:end,18);
% % velocity_filtered = filter(MyButterworth1,v_rad); %应该改成filtfilt
% % plot(log_data.data(10000:anc:end,63),v_rad,log_data.data(10000:anc:end,63),velocity_filtered);
% % legend('velocity(rad/s)','filtered velocity(rad/s)');
% % title('observated velocity filter');
% % xlabel('t(s)');
% % ylabel('velocity')
% 
% total_r =  abs(log_data.data(:,39))+abs(log_data.data(:,40))+abs(log_data.data(:,41))+abs(log_data.data(:,42))+abs(log_data.data(:,43));
% total_l =  abs(log_data.data(:,44))+abs(log_data.data(:,45))+abs(log_data.data(:,46))+abs(log_data.data(:,47))+abs(log_data.data(:,48));
% total = total_l+total_r;
% figure;
% subplot(1,3,1);plot(log_data.data(:,num),total_r); legend('total_l');
% subplot(1,3,2);plot(log_data.data(:,num),total_l); legend('total_r');
% subplot(1,3,3);plot(log_data.data(:,num),total); legend('total');

% figure;
% subplot(1,3,1);plot(log_data.data(:,num),log_data.data(:,97)); legend('pd(1)');
% subplot(1,3,2);plot(log_data.data(:,num),log_data.data(:,98)); legend('pd(2)');
% subplot(1,3,3);plot(log_data.data(:,num),log_data.data(:,99)); legend('pd(3)');

% figure;
% for i = 1:10
%     subplot(2,5,i);
%     plot(tt,log_data.data(10000:anc:end,28+i),tt,log_data.data(10000:anc:end,38+i)); 
% end  
% legend('out current(A)','real current(A)');
% 
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
% 
figure;
name={'xr_base','zr_base','pr_base','xl_base','zl_base','pl_base'};
for i = 1:6
    subplot(2,3,i);
    plot(tt,log_data.data(10000:anc:end,106+i)); 
    legend(name(i));
end

figure;
plot(tt,log_data.data(10000:anc:end,163));hold on;
plot(tt,log_data.data(10000:anc:end,172));hold on;
plot(tt,log_data.data(10000:anc:end,171));hold on;
legend('s','s_r','s_l');

figure;
name={'rx','rz','rp','lx','lz','lp','RollStand','RollWaveYV','RollWaveYP','XV','XP','YawStand','pitchQ3','pos_rota_x','pos_rota_y','zr_v','zl_v','x_pitch','y_roll'};
for i = 1:12
    subplot(3,4,i);
%     yyaxis left;
    plot(tt,log_data.data(10000:anc:end,120+i),'b-'); 
    hold on;
%     if i ==10
%         plot(tt,log_data.data(10000:anc:end,120+i) - log_data.data(10000:anc:end,115)*0.16,'g-');         
%     end
    if i == 8
        plot(tt,log_data.data(10000:anc:end,116)*0.2,'g-');         
    end
    if i == 2
        plot(tt,(0-log_data.data(10000:anc:end,84))*0.17,'g-'); %pid_p  
    end
    if i == 3
        plot(tt,(0-log_data.data(10000:anc:end,85))*0.65,'g-');%pid_p           
    end
    if i == 5
        plot(tt,-1*(0-log_data.data(10000:anc:end,84))*0.17,'g-');         
    end
    if i == 6
        plot(tt,(0-log_data.data(10000:anc:end,85))*0.65,'g-');         
    end

    if i == 7
        plot(tt, -log_data.data(10000:anc:end,212),'g-');  
        hold on;
        plot(tt, -log_data.data(10000:anc:end,213),'m-');  
        hold on;
        plot(tt, -log_data.data(10000:anc:end,214),'y-');  
        hold on;
    end    
    
    yyaxis right;
    plot(tt,log_data.data(10000:anc:end,114),'r-'); 
    title(name{i});
end
legend('pid');
figure;
for i = 13:19
    subplot(3,4,i-12);
    yyaxis left;
    plot(tt,log_data.data(10000:anc:end,120+i)); 
    yyaxis right;
    plot(tt,log_data.data(10000:anc:end,114),'r-');     
    title(name{i});
end
legend('pid');

figure;
for i = 1:3
    subplot(2,3,i);
    plot(tt,log_data.data(10000:anc:end,114+i)); 
    legend('vEstimation');
end

for i = 1:3
    subplot(2,3,i+3);
    plot(tt,log_data.data(10000:anc:end,117+i));hold on; 
    plot(tt,log_data.data(10000:anc:end,108)); hold on;
    plot(tt,log_data.data(10000:anc:end,111)); hold on;
    legend('pEstimation','r','l');
end

figure;
subplot(2,3,1)
yyaxis left
plot(tt,log_data.data(10000:anc:end,115),'b-');hold on;
plot(tt,log_data.data(10000:anc:end,120+10),'g-');hold on;
plot(tt,log_data.data(10000:anc:end,257),'r-');%,tt,log_data.data(10000:anc:end,157));;
yyaxis right
plot(tt,log_data.data(10000:anc:end,114),'m-');
legend('xv_yaw','xvpid');hold on; 
subplot(2,3,2)
yyaxis left
plot(tt,log_data.data(10000:anc:end,116),'b-');hold on;
plot(tt,log_data.data(10000:anc:end,120+8),'g-');
yyaxis right
plot(tt,log_data.data(10000:anc:end,114));
legend('yv_yaw','yvpid');hold on; 
subplot(2,3,3)
plot(tt,log_data.data(10000:anc:end,117),'b',tt,log_data.data(10000:anc:end,120+15),'g-');%tt,log_data.data(10000:anc:end,159));
legend('zv_yaw','zvpid');hold on; 
subplot(2,3,4)
yyaxis left
plot(tt,log_data.data(10000:anc:end,118),'b-',tt,log_data.data(10000:anc:end,160));%,tt,log_data.data(10000:anc:end,187));
yyaxis right
plot(tt,log_data.data(10000:anc:end,114));
legend('xp_yaw','xp');hold on; 
subplot(2,3,5)
yyaxis left
plot(tt,log_data.data(10000:anc:end,119),'b-',tt,log_data.data(10000:anc:end,161));%,tt,log_data.data(10000:anc:end,188));
yyaxis right
plot(tt,log_data.data(10000:anc:end,114));
legend('yp_yaw','yp');hold on; 
subplot(2,3,6)
plot(tt,log_data.data(10000:anc:end,120),'b-',tt,log_data.data(10000:anc:end,162));hold on;
plot(tt,log_data.data(10000:anc:end,114)*0.02+0.9,'m-')
legend('zp_yaw','zp');hold on; 

%%

N=length(log_data.data(10000:anc:end,82));
yaw = zeros(N,1);
pitch = zeros(N,1);
roll = zeros(N,1);
for i = 1:N
    temp = quat2eul(log_data.data(10000+anc*(i-1),173:176),'ZYX');
    yaw(i) = temp(1)*180/pi;
    pitch(i) = temp(2)*180/pi;
    roll(i) = temp(3)*180/pi;
end
figure;
subplot(1,3,1);
plot(tt,roll);legend('roll_est');
subplot(1,3,2);
plot(tt,pitch);legend('pitch_est');
subplot(1,3,3);
plot(tt,yaw);legend('yaw_est');

%%
% close all;
figure;
subplot(2,2,1);
plot(tt, log_data.data(10000:anc:end,141));
legend('acc');
subplot(2,2,2);
plot(tt, log_data.data(10000:anc:end,142));
subplot(2,2,3);
plot(tt, log_data.data(10000:anc:end,143));

figure;
subplot(2,2,1);
plot(tt, log_data.data(10000:anc:end,154));
legend('w');
subplot(2,2,2);
plot(tt, log_data.data(10000:anc:end,155));
subplot(2,2,3);
plot(tt, log_data.data(10000:anc:end,156));

figure;
for i = 1:6
    subplot(2,3,i);
    plot(tt, log_data.data(10000:anc:end,192+i));
end
legend('walk_xzdir');

name={'IK1','IK6','x_r','x_l','q3','q8','z_r','z_l','p_r','p_l','IK2','IK7'};
figure;
for i = [1,2,3,4,5,6,9,10]
    subplot(3,4,i);
%     yyaxis left;
    plot(tt,log_data.data(10000:anc:end,198+i),'-',tt,log_data.data(10000:anc:end,114)*0.05,'-');
    if i == 1
        hold on;
        plot(tt,0.02*log_data.data(10000:anc:end,257+6),'-');
    end
    if i == 2
        hold on;
        plot(tt,0.02*log_data.data(10000:anc:end,257+6),'-');           
    end   
%     if i == 9
%         hold on;
%         plot(tt,-1*log_data.data(10000:anc:end,3),'-');
%         legend('p_r','s','q3');
%     end
%     if i == 10
%         hold on;
%         plot(tt,-1*log_data.data(10000:anc:end,10),'-');    
%         legend('p_l','s','q3');        
%     end   
%     yyaxis right;
%     plot(tt,log_data.data(10000:anc:end,114),'-');
    title(name(i));
end
for i = [7,8]
    subplot(3,4,i);
%     yyaxis left;
    plot(tt,log_data.data(10000:anc:end,198+i),'-',tt,log_data.data(10000:anc:end,114)*0.05-0.8,'-');
end
    subplot(3,4,11);
%     yyaxis left;
    plot(tt,log_data.data(10000:anc:end,234+4),'-',tt,log_data.data(10000:anc:end,114)*0.05,'-');
    hold on;
    plot(tt,0.1*log_data.data(10000:anc:end,257+5),'-');           
    title(name(11));
    subplot(3,4,12);
%     yyaxis left;
    plot(tt,log_data.data(10000:anc:end,234+5),'-',tt,log_data.data(10000:anc:end,114)*0.05,'-');
    hold on;
    plot(tt,0.1*log_data.data(10000:anc:end,257+5),'-'); 
    title(name(12));
%%
figure;
plot(tt,log_data.data(10000:anc:end,236));
hold on;
plot(tt,log_data.data(10000:anc:end,207));
hold on;
plot(tt,log_data.data(10000:anc:end,114)*0.05);
legend('p_r_0','p_r','status')

figure;
plot(tt,log_data.data(10000:anc:end,237));
hold on;
plot(tt,log_data.data(10000:anc:end,208));
hold on;
plot(tt,log_data.data(10000:anc:end,114)*0.05);
legend('p_l_0','p_l','status')

figure;
subplot(2,2,1);
plot(tt,log_data.data(10000:anc:end,88),tt,log_data.data(10000:anc:end,120));
subplot(2,2,2);
plot(tt,log_data.data(10000:anc:end,98),tt,log_data.data(10000:anc:end,120));
subplot(2,2,3);
plot(tt, log_data.data(10000:anc:end,120) - (-log_data.data(10000:anc:end,88) + 0.1));
subplot(2,2,4);
plot(tt, log_data.data(10000:anc:end,120) - (-log_data.data(10000:anc:end,98) + 0.1));
%%
figure;
% q3_r = zeros(length(tt)/anc,1);
% q3_l = zeros(length(tt)/anc,1);
% xv_r = zeros(length(tt)/anc,1);
% xv_l = zeros(length(tt)/anc,1);
% for i=10000:anc:length(tt)
%     if abs(log_data.data(10000:anc:end,114)-2)<0.1 %r-st l-sw
%         q3_r(i) = log_data.data(i,120+13);
%         q3_l(i) = 0;
%         xv_r(i) = 0;
%         xv_l(i) = log_data.data(i,120+10);       
%     elseif abs(log_data.data(10000:anc:end,114)-1)<0.1  %r-sw l-st
%         q3_r(i) = 0;
%         q3_l(i) = log_data.data(i,120+13);
%         xv_r(i) = log_data.data(i,120+10);
%         xv_l(i) = 0;        
%     end
% end
subplot(2,3,1);
yyaxis left;
% plot(tt,log_data.data(10000:anc:end,87),'b-');
plot(tt,log_data.data(10000:anc:end,201),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,107),'r-');
legend('fk_r_x','Base');
yyaxis right;
plot(tt,log_data.data(10000:anc:end,114),'y-');
subplot(2,3,2);
yyaxis left;
% plot(tt,log_data.data(10000:anc:end,87),'b-');
plot(tt,log_data.data(10000:anc:end,201),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,107),'r-');
hold on;plot(tt,log_data.data(10000:anc:end,107) + log_data.data(10000:anc:end,198+5).*-log_data.data(10000:anc:end,88),'g-');
yyaxis right;
plot(tt,log_data.data(10000:anc:end,114),'y-');
legend('fk_r_x','Base','BaseQ3');
subplot(2,3,3);
yyaxis left;
% plot(tt,log_data.data(10000:anc:end,87),'b-');
plot(tt,log_data.data(10000:anc:end,201),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,107),'r-');
hold on;plot(tt,log_data.data(10000:anc:end,107) + log_data.data(10000:anc:end,198+3),'g-');
yyaxis right;
plot(tt,log_data.data(10000:anc:end,114),'y-');
legend('fk_r_x','Base','BaseXv');
subplot(2,3,4);
yyaxis left;
% plot(tt,log_data.data(10000:anc:end,97),'b-');
plot(tt,log_data.data(10000:anc:end,202),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,110),'r-');
legend('fk_l_x','Base');
yyaxis right;
plot(tt,log_data.data(10000:anc:end,114),'y-');
subplot(2,3,5);
yyaxis left;
% plot(tt,log_data.data(10000:anc:end,97),'b-');
plot(tt,log_data.data(10000:anc:end,202),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,110),'r-');
hold on;plot(tt,log_data.data(10000:anc:end,110) + log_data.data(10000:anc:end,198+6).*-log_data.data(10000:anc:end,98),'g-');
yyaxis right;
plot(tt,log_data.data(10000:anc:end,114),'y-');
legend('fk_l_x','Base','BaseQ3');
subplot(2,3,6);
yyaxis left;
% plot(tt,log_data.data(10000:anc:end,97),'b-');
plot(tt,log_data.data(10000:anc:end,202),'b-');
hold on;plot(tt,log_data.data(10000:anc:end,110),'r-');
hold on;plot(tt,log_data.data(10000:anc:end,110) + log_data.data(10000:anc:end,198+4),'g-');
yyaxis right;
plot(tt,log_data.data(10000:anc:end,114),'y-');
legend('fk_l_x','Base','BaseXv');

figure;
subplot(2,2,1);
plot(tt,log_data.data(10000:anc:end,274));
subplot(2,2,2);
plot(tt,log_data.data(10000:anc:end,275));
subplot(2,2,3);
plot(tt,log_data.data(10000:anc:end,276));
subplot(2,2,4);
plot(tt,log_data.data(10000:anc:end,277));

figure;
subplot(2,2,1);
plot(tt,log_data.data(10000:anc:end,271));
legend('voltage');
subplot(2,2,2);
plot(tt,log_data.data(10000:anc:end,269)./log_data.data(10000:anc:end,272));
legend('capacity');
%%
figure;
subplot(2,2,1);
yyaxis right;
plot(tt,sqrt(log_data.data(10000:anc:end,92).*log_data.data(10000:anc:end,92) + log_data.data(10000:anc:end,93).*log_data.data(10000:anc:end,93)),'-b');
hold on;
plot(tt,300*ones(length(tt),1),'-r');
% hold on;
% plot(tt,180/pi*(log_data.data(10000:anc:end,85))*100);
yyaxis left;
plot(tt,log_data.data(10000:anc:end,114),'m-');
subplot(2,2,2);
yyaxis right;
plot(tt,sqrt(log_data.data(10000:anc:end,102).*log_data.data(10000:anc:end,102) + log_data.data(10000:anc:end,103).*log_data.data(10000:anc:end,103)),'-b');
hold on;
plot(tt,150*ones(length(tt),1),'-r');
% hold on;
% plot(tt,180/pi*(log_data.data(10000:anc:end,85))*100);
yyaxis left;
plot(tt,log_data.data(10000:anc:end,114),'m-');

%%
figure;
subplot(2,2,1);
yyaxis right;
plot(tt, log_data.data(10000:anc:end,240),'b-')
yyaxis left;
plot(tt, log_data.data(10000:anc:end,114),'m-');
subplot(2,2,2);
yyaxis right;
plot(tt, log_data.data(10000:anc:end,241),'b-')
yyaxis left;
plot(tt, log_data.data(10000:anc:end,114),'m-');
%%
figure;









