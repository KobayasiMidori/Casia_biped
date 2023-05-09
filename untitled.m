%%
%x轨迹
% march_x_ref_pre = 0;
% time_inc = 1;%s
% time_step = 0.4;
% time_st = 0.1;
% step_num = 20;
% time_switch = 3;
% step = 0;
% num = int32(0.4*step_num*2000 + 1);
% s = 0;%zeros(num,1);
% IK_dst_x = zeros(num,2);
% march = zeros(num,1);
% num_switch = int32(time_switch*2000);
% march(1:num_switch,1) = 1*ones(num_switch,1);
% march(num_switch+1:num,1) = 2*ones(num - num_switch,1);
% march_ctl_st_x = 0;
% for i = 1:num
%     s = s + 1/(time_step*2000);
%     if s > 1
%        s = 0;
%        step = step+1;
%     end
%     march_x_ref = march(i);
%     if abs(march_x_ref_pre - march_x_ref) > 1e-5
%         inc_x = (march_x_ref - march_x_ref_pre)/time_inc/2000;
%         if abs(march_ctl_st_x - march_x_ref) < abs(inc_x)
%             march_ctl_st_x = march_x_ref;
%             march_x_ref_pre = march_x_ref;            
%         else
%             march_ctl_st_x = march_ctl_st_x + inc_x;
%         end
%     end
% %     if s > 1
% %         IK_dst_x(i,:) = zeros(1,2); % two leg stand 
% %      else
%         IK_dst_x(i,1) = march_ctl_st_x*0.5*cos(pi*s);%1:stand leg
%         IK_dst_x(i,2) = -1*march_ctl_st_x*0.5*cos(pi*s);%2:wave leg  
% %     end
% end 
% t = 1/2000:1/2000:double(num)/2000;
% plot(t,IK_dst_x(:,1),t,IK_dst_x(:,2),t,march);    
% legend('stand','wave','march');

%%
% %修正轨迹不同的s
% close all;
% march_first_time = 1;
% time_step = 0.4;
% time_st = 0.1;
% step_num = 20;
% time_switch = 3;
% march = [-0.5,0.7,2,0.4,0.4,0.1,21,0,1];
% march_ctl(1) = march(1);
% march_ctl(2) = march(2);
% num = int32((march(4)+march(6))*step_num*2000 + 1);
% s = zeros(1,num);
% s_sw2st = zeros(2,num);
% t0 = 0;
% t_cut0 = 0;
% t_sw2st0 = zeros(2,1);%1:right  2:left 
% flag_sw2st = zeros(2,num);
% march_ctl_st_x = march(9);
% IK_dst_x = zeros(2,num);
% IK_dst_z = zeros(2,num);
% if abs(march(3) - 1) < 0.1 
%     stance_leg = -1; % stance_leg = -1, left stance
%     flag_sw2st(1,1) = 0;%right sw
%     flag_sw2st(2,1) = 1;  %left st      
% else
%     stance_leg = 1; % right stance
%     flag_sw2st(1,1) = 1;%right st
%     flag_sw2st(2,1) = 0; %left sw
% end 
% LL_des = 0;
% Step_height = 1;
% if march(5) < 0.2
%     march_phase = 0.2;
% elseif march(5) >0.8
%     march_phase = 0.8;
% else
%     march_phase = march(5);
% end                            
% coeff = Get_traj_coeff(Step_height,LL_des,march_phase);
% for i = 1:num
%     t = (double(i-1))/2000;
%     if march_first_time 
%         t0 = t;
%         t_cut0 = t;
%         if abs(march(3) - 1) < 0.5%right first sw
%             t_sw2st0(2) = t-march(6);
% 
%         elseif abs(march(3) - 2) < 0.5%left first sw
%             t_sw2st0(1) = t-march(6);
% 
%         end
%         march_first_time = 0;
%     end
%     if t - t_cut0 > (march(4)+march(6))
%         stance_leg = - stance_leg;
%         t_cut0 = t;
%     end
%     s(i) = (t-t_cut0)/march(4);
%     for j = 1:2
%         if abs(flag_sw2st(j,i)-1) < 0.5%right stand
%             if  t - t_sw2st0(j) > (march(4)+2*march(6))
%                 flag_sw2st(j,i) = 0;
%                 s_sw2st(j,i) = 0;            
%             else
%                 s_sw2st(j,i) = (t-t_sw2st0(j))/(march(4)+2*march(6));
%             end
%         else
%             if t - t_cut0 > march(4) 
%                 t_sw2st0(j) = t;
%                 flag_sw2st(j,i) = 1;
%                 s_sw2st(j,i) = 0;%(t-t_sw2st0(j))/(march(4)+2*march(6));
%             else
%                 s_sw2st(j,i) = s(i);            
%             end
%         end
%     end
%     for j = 1:2
%          if abs(flag_sw2st(j,i)-1) < 0.5%right st
%             %right st
%             march_ctl_Index = 1;
%             st_x_dir = 1;
%          else%right sw
%              %right sw
%             march_ctl_Index = 2;
%             st_x_dir = -1;                        
%          end
%          if s(i) < march_phase
%             IK_dst_z(j,i) = march_ctl(march_ctl_Index)*(coeff(1,1) + coeff(2,1)*s(i) + coeff(3,1)*s(i)^2 + coeff(4,1)*s(i)^3);
%         elseif  s(i) < 1
%             IK_dst_z(j,i) = march_ctl(march_ctl_Index)*(coeff(1,2)+ coeff(2,2)*(s(i)-march_phase) + coeff(3,2)*(s(i)-march_phase)^2 + coeff(4,2)*(s(i)-march_phase)^3);
%         else
%             IK_dst_z(j,i) = 0.0; % two leg stand 
%         end
%         IK_dst_x(j,i) = st_x_dir*march_ctl_st_x*0.5*cos(pi*s_sw2st(j,i));%2:wave leg  
%     end
%     
%      if i<num
%         flag_sw2st(1,i+1) = flag_sw2st(1,i);%right sw
%         flag_sw2st(2,i+1) = flag_sw2st(2,i);  %left st
%      end
% end
% tt = 1/2000:1/2000:double(num)/2000;
% figure;
% plot(tt, s(1,:),tt, s_sw2st(1,:));
% legend('s','s_r');
% figure;
% plot(tt, s(1,:),tt, s_sw2st(1,:),tt, IK_dst_x(1,:),tt,IK_dst_z(1,:));
% legend('s_r');
% figure;
% plot(tt, s(1,:),tt, s_sw2st(2,:),tt, IK_dst_x(2,:),tt,IK_dst_z(2,:));
% legend('s_l');
%%
% %yaw低通滤波
% yaw = 180/pi*(log_data.data(10000:anc:end,86));
% Ts = 1/2000;
% fre = 0.5;
% % time_start = 0;
% % num_start = time_start/Ts;
% % time_end = 11;
% % num_end = time_end
% % num = int32((time_end - time_start)*2000)+1;
% num = length(yaw);
% LpfOut = zeros(num,1);
% LpfOutPre = zeros(2,1);
% for i = 1:num
%     LPF_IN = yaw(i);
%     [LpfOut(i), LpfOutPre]= LPF(LPF_IN,Ts,fre,LpfOutPre); 
% end
% t = log_data.data(10000:anc:end,190);
% plot(t,LpfOut,'r',t,yaw,'b');
%%
% roll = 0.1;
% yaw = 0.15;
% a_roll = [1 0 0]';
% a_yaw = Rodrigues(a_roll,roll)*[0 0 1]';
% a_pit = Rodrigues(a_yaw,yaw)*Rodrigues(a_roll,roll)*[0 -1 0]';
% 
% a_pit_3D = R3Dx(roll)*R3Dz(yaw)*[0 -1 0]';
%%
% %贝塞尔
% ss = 0:1/1000:1;
% pitch = log_data.data(10000:anc:end,85);
% sl_c = [0 0 1 1 1 1];
% out = zeros(1001,1);
% for i = 1:1001
%     out(i) = bezier(sl_c,ss(i));
% end
% figure;
% plot(ss,out);
%%
% anc = 1;
% left_1 = mean(log_data.data(43560:anc:53440,12));
% left_2 = mean(log_data.data(43560:anc:53440,13));
%%
%电机输出扭矩
I_real_ori = log_data.data(:,39:48);
T_ref_ori = log_data.data(:,54:63);
n = log_data.data(:, [15:18, 21:25, 28]);
Ts = 1/2000;
time_start = 96;%130;%
% num_start = time_start/Ts;
time_end = 116;%150;%
% num_end = time_end;
num = int32((time_end - time_start)/Ts)+1;
Index =  int32(time_start/Ts : time_end/Ts);
km = [2.9/23, 0.106, 2.9/23, 2.9/23, 0.0955,...
          2.9/23, 0.106, 2.9/23, 2.9/23, 0.0955];
ratio = [33, 50, 37, 37, 50, ...
            33, 50, 37, 37, 50] ;
T_real = zeros(num,10);
T_ref = zeros(num,10); 
T_f = zeros(num,10); 
n_ref = zeros(num,10); 
t = time_start : Ts : time_end;
for j = 1:10
    for i = 1: num
        T_real(i , j) = km(j) * I_real_ori(Index(i) , j) * ratio(j) * 0.7;
        T_ref(i , j) = T_ref_ori(Index(i) , j) * 0.7;  
        n_ref(i , j) = n(Index(i) , j)/2/pi*60;
    end
end
figure;
for j = 1:10
    subplot(3,5,j);
    plot(t, T_real(: , j), 'b');
    hold on;
    plot(t, T_ref(: , j), 'r');
    grid on;
end

figure;
for j = 1:10
    subplot(3,5,j);
    plot(t, n_ref(: , j), 'b');
    grid on;
end

%%
%功率计算
close all;
load('C:\Users\Robot\Desktop\casia_cassie\DataRec\2022_12_30T00_30_10.mat');%march_200_2021_11_11T15_15_33.mat');%
[num,time] = size(log_data.data);
Vdc = 48;
Km_TQ =2.9/23;   %0.1261
Km_Kermogen_7615 = 0.106;
Km_Kermogen_6013 = 0.0955;
R_TQ =0.08;   %0.1261
R_Kermogen_7615 = 0.372;
R_Kermogen_6013 = 0.695;
N_RV_33 = 33;
N_RV_37 = 37;
N_Harmonic = 50;
I = log_data.data(:,39:48);
n = log_data.data(:,[15:18,21:25,28]);
km = [Km_TQ ,Km_Kermogen_7615, Km_TQ, Km_TQ, Km_Kermogen_6013,...
          Km_TQ, Km_Kermogen_7615, Km_TQ, Km_TQ, Km_Kermogen_6013];
N = [N_RV_33, N_Harmonic, N_RV_37, N_RV_37, N_Harmonic,...
        N_RV_33, N_Harmonic, N_RV_37, N_RV_37, N_Harmonic];
Res = [R_TQ, R_Kermogen_7615, R_TQ, R_TQ, R_Kermogen_6013,...
       R_TQ, R_Kermogen_7615, R_TQ, R_TQ, R_Kermogen_6013];
P = zeros(num,10);
P_n = zeros(num,10);
P_cu = zeros(num,10);
P_fe = zeros(num,10);
P_dc = zeros(num,1);
Te_m = zeros(num,10);
Te_j = zeros(num,10);
% I_dc = zeros(num,1);
Te_j_p_avg = zeros(1,10);
Te_j_n_avg = zeros(1,10);
Te_j_p_max = zeros(1,10);
Te_j_n_max = zeros(1,10);
aa = [1, 1, 4.65, 4.65, 4.65, ...
         1, 1, 4.65, 4.65, 4.65];
for i = 1:10
    for j = 1:num
        Te = I(j,i)*km(1,i);
        n_motor = n(j,i)*N(1,i)*aa(1,i);
        P_n(j,i) = Te * n_motor;
        P_cu(j,i) = Res(1,i)*(I(j,i)/sqrt(2))^2*3;
%         P_fe(j,i) = ;
        P(j,i) = P_n(j,i) + P_cu(j,i);
        Te_m(j,i) = Te;
        Te_j(j,i) = Te*N(1,i);
    end
    P_dc = P_dc + P(:,i); 
end
I_dc = P_dc/Vdc;
tt = log_data.data(:,time);
figure;
plot(tt,I_dc);
grid on;
I_avg = mean(I_dc(160000:176000));
name={'rollRight','yawRight','pitchRight','kneeRight','footRight','rollLeft','yawLeft','pitchLeft','kneeLeft','footLeft'};
figure;
plot(tt, P_dc, 'b');
figure;
for j = 1:10
    subplot(3,5,j);
    plot(tt, P(: , j), 'b');
    hold on;
    plot(tt, P_n(: , j), 'r');
     hold on;
    plot(tt, P_cu(: , j), 'g');   
    grid on;
end

save('Probot.mat', 'P','P_dc','tt');






    