close all;
% figure;
% sl_b = [ones(1,7),zeros(1,5)];
% for i = 1:1:100
%     s = i*0.01;
%     s_slow = bezier(sl_b,s);
%     buff(i) = s_slow;
% end
% s= 0.01:0.01:1;
% plot(s,buff)


% figure;
% [leght,num] = size(log_data.data);%86;
% plot(log_data.data(10000:end,num),log_data.data(10000:end,114)); 
% legend('pd_sw');
% figure;
% plot(log_data.data(10000:end,num),log_data.data(10000:end,113)); 
% legend('pd_st');
% figure;
% plot(log_data.data(10000:end,num),log_data.data(10000:end,112)); 
% legend('on_march_real');

on_march_real_last = 0;
on_march_real = 0;


% t 65.78s ~66.18s
% right_roll£ºlog_data.data(10000:end,74) ÔÚ 65.78s ¿ªÊ¼×· log_data.data(10000:end,114) 
tLine=log_data.data(:,end);
startT=65.779;
endT=66.179;
tmp=find(tLine>=startT);
startN=tmp(1);
tmp=find(tLine>=endT);
endN=tmp(1);

tLineNow=tLine(startN:endN);
roll_joint=log_data.data(startN:endN,74);
PD_out=log_data.data(startN:endN,114);

% figure();
% subplot(2,1,1)
% plot(tLineNow,roll_joint);
% ylabel('roll_joint');
% subplot(2,1,2)
% plot(tLineNow,PD_out);
% ylabel('PD_out');
figure()
[num,~] = size(roll_joint);
for i = 1:num
    sl_b = [roll_joint(1),roll_joint(1),PD_out(i)+0.5/180*pi,PD_out(i)+0.5/180*pi];
    s = i/num;
    s_slow = bezier(sl_b,s);
    buff(i) = s_slow;
end
plot(tLineNow,buff) ;  
hold on
plot(tLineNow,roll_joint);
hold on
plot(tLineNow,PD_out);
legend('b','roll_joint','PD_out');
    



