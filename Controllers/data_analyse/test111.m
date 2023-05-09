% v_rad = log_data.data(:,17);
% 
% velocity_filtered = filter(MyButterworth1,v_rad); %应该改成filtfilt
% figure;
% plot(log_data.data(:,63),v_rad,log_data.data(:,63),velocity_filtered);
% hold on;
% % legend('velocity_rads','velocity_filter');
% I = log_data.data(:,41);
% Tfs =log_data.data(:,55);
% 
% current_filtered = filter(MyButterworth1,I); %应该改成filtfilt
% 
% plot(log_data.data(:,63),I);
% hold on;
% % legend('current_rads','current_filter');
% len = length(v_rad);
% aa = zeros(len,1);
% bb = zeros(len,1);
% ff1 = zeros(len,1);
% ff2 = zeros(len,1);
% for i = 1:len
%      aa(i)=Tfs(i)/(37*(2.9/23));
%      bb(i)=GetCurrent(velocity_filtered(i),I(i),Tfs(i),3);
%      ff1(i)=GetFriction(velocity_filtered(i),I(i),3);
% %      ff2(i)= GetFriction(velocity_filtered(i),current_filtered(i),3);
% end
% % 
% % plot(log_data.data(:,63),aa,log_data.data(:,63),bb);
% % hold on;
% % legend('current_non_com','current_com');
% 
% plot(log_data.data(:,63),ff1,log_data.data(:,63),ff2);
% hold on;
% legend('velocity','velocity_filter','current_rads',...
% 'friction_non_filter');

v_rad = log_data.data(:,24);
velocity_filtered = filter(MyButterworth1,v_rad); %应该改成filtfilt
figure;
plot(log_data.data(:,63),v_rad,log_data.data(:,63),velocity_filtered);
hold on;
% legend('velocity_rads','velocity_filter');
I = log_data.data(:,46);
% Tfs =log_data.data(:,53);

% current_filtered = filter(MyButterworth1,I); %应该改成filtfilt

plot(log_data.data(:,63),I);
hold on;
% legend('current_rads','current_filter');
len = length(v_rad);
aa = zeros(len,1);
bb = zeros(len,1);
ff1 = zeros(len,1);
ff2 = zeros(len,1);
for i = 1:len
%      aa(i)=Tfs(i)/(50*(2.9/23));
%      bb(i)=GetCurrent(velocity_filtered(i),I(i),Tfs(i),1,3);
     ff1(i)=GetFriction(velocity_filtered(i),I(i),1,8);
%      ff2(i)= GetFriction(velocity_filtered(i),current_filtered(i),3);
end
% 
% plot(log_data.data(:,63),aa,log_data.data(:,63),bb);
% hold on;
% legend('current_non_com','current_com');

% plot(log_data.data(:,63),ff1);
% hold on;
% legend('velocity','velocity_filter','current',...
% 'friction');
figure;
plot(log_data.data(:,63),ff1);
