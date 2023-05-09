close all;
[~,num] = size(log_data.data);%86;
anc = 50;
figure;
subplot(3,5,1);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,1));
hold on;plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,73));legend('right roll P','target');
subplot(3,5,2);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,2));
hold on;plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,74));legend('right yaw P','target');
subplot(3,5,3);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,3));
hold on;plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,75));legend('right pitch P','target');
subplot(3,5,4);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,4));
hold on;plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,76));legend('right knee P','target');
subplot(3,5,5);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,5));legend('right ShinJoint P');
subplot(3,5,6);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,6));legend('right TarsusJoint P');
subplot(3,5,7);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,7));
hold on;plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,77));legend('right foot P','target');
subplot(3,5,8);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,8));
hold on;plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,78));legend('left roll P','target');
subplot(3,5,9);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,9));
hold on;plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,79));legend('left yaw P','target');
subplot(3,5,10);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,10));
hold on;plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,80));legend('left pitch P','target');
subplot(3,5,11);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,11));
hold on;plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,81));legend('left knee P','target');
subplot(3,5,12);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,12));legend('left ShinJoint P');
subplot(3,5,13);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,13));legend('left TarsusJoint P');
subplot(3,5,14);
plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,14));
hold on;plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,82));legend('left foot P','target');
% % q4R=log_data.data(60*2000,4)-log_data.data(7*2000,4);
% % q6R=log_data.data(60*2000,6)-log_data.data(7*2000,6);
% % R=q6R/q4R
% % q4L=log_data.data(60*2000,11)-log_data.data(7*2000,11);
% % q6L=log_data.data(60*2000,13)-log_data.data(7*2000,13);
% % L=q6L/q4L
% figure;
% subplot(3,5,1);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,1));
% subplot(3,5,2);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,2));
% subplot(3,5,3);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,3));
% subplot(3,5,4);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,4));
% subplot(3,5,5);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,7));
% legend('right position(rad)');
% 
% 
% subplot(3,5,6);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,15));
% subplot(3,5,7);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,16));
% subplot(3,5,8);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,17));
% subplot(3,5,9);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,18));
% subplot(3,5,10);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,21));
% legend('right velocity(rad/s)');
% 
% 
% subplot(3,5,11);
% plot(log_data.data(10000:anc:end,num),Current2Torque(log_data.data(10000:anc:end,29),1),log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,53));
% subplot(3,5,12);
% plot(log_data.data(10000:anc:end,num),Current2Torque(log_data.data(10000:anc:end,30),2),log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,54));
% subplot(3,5,13);
% plot(log_data.data(10000:anc:end,num),Current2Torque(log_data.data(10000:anc:end,31),3),log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,55));
% subplot(3,5,14);
% plot(log_data.data(10000:anc:end,num),Current2Torque(log_data.data(10000:anc:end,32),4),log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,56));
% subplot(3,5,15);
% plot(log_data.data(10000:anc:end,num),Current2Torque(log_data.data(10000:anc:end,33),5),log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,57));
% legend('right friction compensation added torque(NM)','right demand torque(NM)');
% 
% figure;
% subplot(3,5,1);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,29),log_data.data(10000:anc:end,num),Torque2Current(log_data.data(10000:anc:end,53),1));
% subplot(3,5,2);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,30),log_data.data(10000:anc:end,num),Torque2Current(log_data.data(10000:anc:end,54),2));
% subplot(3,5,3);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,31),log_data.data(10000:anc:end,num),Torque2Current(log_data.data(10000:anc:end,55),3));
% subplot(3,5,4);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,32),log_data.data(10000:anc:end,num),Torque2Current(log_data.data(10000:anc:end,56),4));
% subplot(3,5,5);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,33),log_data.data(10000:anc:end,num),Torque2Current(log_data.data(10000:anc:end,57),5));
% legend('right out current','right target current');
% 
% 
% 
% % subplot(3,5,6);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,63));
% % subplot(3,5,7);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,64));
% % subplot(3,5,8);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,65));
% % subplot(3,5,9);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,66));
% % subplot(3,5,10);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,67));
% % legend('right f-mode');
% 
% 
% 
% figure;
% subplot(3,5,1);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,8));
% subplot(3,5,2);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,9));
% subplot(3,5,3);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,10));
% subplot(3,5,4);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,11));
% subplot(3,5,5);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,14));
% legend('left position(rad)');
% 
% 
% subplot(3,5,6);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,22));
% subplot(3,5,7);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,23));
% subplot(3,5,8);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,24));
% subplot(3,5,9);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,25));
% subplot(3,5,10);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,28));
% legend('left velocity(rad/s)');
% 
% 
% subplot(3,5,11);
% plot(log_data.data(10000:anc:end,num),Current2Torque(log_data.data(10000:anc:end,34),6),log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,58));
% subplot(3,5,12);
% plot(log_data.data(10000:anc:end,num),Current2Torque(log_data.data(10000:anc:end,35),7),log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,59));
% subplot(3,5,13);
% plot(log_data.data(10000:anc:end,num),Current2Torque(log_data.data(10000:anc:end,36),8),log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,60));
% subplot(3,5,14);
% plot(log_data.data(10000:anc:end,num),Current2Torque(log_data.data(10000:anc:end,37),9),log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,61));
% subplot(3,5,15);
% plot(log_data.data(10000:anc:end,num),Current2Torque(log_data.data(10000:anc:end,38),10),log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,62));
% legend('left friction compensation added torque(NM)','left demand torque(NM)');
% figure;
% subplot(3,5,1);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,34),log_data.data(10000:anc:end,num),Torque2Current(log_data.data(10000:anc:end,58),6));
% subplot(3,5,2);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,35),log_data.data(10000:anc:end,num),Torque2Current(log_data.data(10000:anc:end,59),7));
% subplot(3,5,3);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,36),log_data.data(10000:anc:end,num),Torque2Current(log_data.data(10000:anc:end,60),8));
% subplot(3,5,4);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,37),log_data.data(10000:anc:end,num),Torque2Current(log_data.data(10000:anc:end,61),9));
% subplot(3,5,5);
% plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,38),log_data.data(10000:anc:end,num),Torque2Current(log_data.data(10000:anc:end,62),10));
% legend('left out current(A)','left target current(A)');
% 
% total_r =  abs(log_data.data(10000:anc:end,29))+abs(log_data.data(10000:anc:end,30))+abs(log_data.data(10000:anc:end,31))+abs(log_data.data(10000:anc:end,32))+abs(log_data.data(10000:anc:end,33));
% total_l =  abs(log_data.data(10000:anc:end,34))+abs(log_data.data(10000:anc:end,35))+abs(log_data.data(10000:anc:end,36))+abs(log_data.data(10000:anc:end,37))+abs(log_data.data(10000:anc:end,38));
% total = total_l+total_r;
% figure;
% subplot(1,3,1);plot(log_data.data(10000:anc:end,num),total_r); legend('total_l');
% subplot(1,3,2);plot(log_data.data(10000:anc:end,num),total_l); legend('total_r');
% subplot(1,3,3);plot(log_data.data(10000:anc:end,num),total); legend('total');
% % subplot(3,5,6);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,68));
% % subplot(3,5,7);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,69));
% % subplot(3,5,8);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,70));
% % subplot(3,5,9);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,71));
% % subplot(3,5,10);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,72));
% % legend('left f_mode');
% % 
% % figure;
% % subplot(2,2,1);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,83)*180/pi);
% % legend('roll');
% % subplot(2,2,2);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,84)*180/pi);
% % legend('pitch');
% % subplot(2,2,3);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,85)*180/pi);
% % legend('yaw');
% % 
% % figure;
% % subplot(2,2,1);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,83));
% % legend('roll');
% % subplot(2,2,2);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,84));
% % legend('pitch');
% % subplot(2,2,3);
% % plot(log_data.data(10000:anc:end,num),log_data.data(10000:anc:end,85));
% % legend('yaw');
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






