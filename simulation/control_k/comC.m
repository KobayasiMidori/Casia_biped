% ss = Data.com_pos_x_fil.Data;
% ss1 = Data.r_foot_p.Data(1,1,:);
% ss2 = Data.l_foot_p.Data(1,1,:);
% ss = reshape(ss, 1, length(ss));
% ss1 = reshape(ss1, 1, length(ss1));
% ss2 = reshape(ss2, 1, length(ss2));
% ss3 = (ss1+ss2)./2;
% plot(Data.qall.Time, ss, Data.qall.Time, ss3);


% ss = Data.qall.Data;
% r_knee = ss(12,1,:);
% l_knee = ss(19,1,:);
% ss = reshape(r_knee, 1, length(ss));
% ss1 = reshape(l_knee, 1, length(ss));
% plot(Data.qall.Time, ss, Data.qall.Time, ss1);


% ss = Data.com_pos_y_fil.Data;
% ss = reshape(ss, 1, length(ss));
% plot(Data.qall.Time, ss);

% ss = Data.qall.Data;
% r_knee = ss(7,1,:);
% l_knee = ss(14,1,:);
% ss = reshape(r_knee, 1, length(ss));
% ss1 = reshape(l_knee, 1, length(ss));
% plot(Data.qall.Time, ss, Data.qall.Time, ss1);

% ss = Data.qall.Data;
% r_knee = ss(13,1,:);
% l_knee = ss(20,1,:);
% ss = reshape(r_knee, 1, length(ss));
% ss1 = reshape(l_knee, 1, length(ss));
% plot(Data.qall.Time, ss, Data.qall.Time, ss1);
% 
% ss = Data.u.Data;
% r_knee = ss(4,1,:);
% l_knee = ss(9,1,:);
% ss = reshape(r_knee, 1, length(ss));
% ss1 = reshape(l_knee, 1, length(ss));
% plot(Data.qall.Time, ss, 'r', Data.qall.Time, ss1, 'b');

% ss = Data.qall.Data;
% r_knee = ss(6,1,:);
% ss = reshape(r_knee, 1, length(ss));
% plot(Data.qall.Time, ss);

% ss = Data.LL_des_fil.Data;
% ss = reshape(ss, 1, length(ss));
% plot(Data.qall.Time, ss);

% ss = Data.LL0_R.Data;
% ss = reshape(ss, 1, length(ss));
% ss1 = Data.LL0_L.Data;
% ss1 = reshape(ss1, 1, length(ss1));
% ll_f = Data.d_torso_angle.Data;
% ss2 = reshape(ll_f(1,1,:), 1, length(ss1));
% plot(Data.qall.Time, ss, 'r', Data.qall.Time, ss1, 'b', Data.qall.Time, ss2, 'k' );

% ss = Data.d_orient.Data;
% ss = reshape(ss, 1, length(ss));
% plot(Data.qall.Time, ss);

% ss = Data.qsR.Data(1,1,:);
% ss = reshape(ss, 1, length(ss));
% ss1 = Data.qsL.Data(1,1,:);
% ss1 = reshape(ss1, 1, length(ss1));
% plot(Data.qall.Time, ss, 'r', Data.qall.Time, ss1, 'b');

% ss = Data.y1_joint.Data;
% ss = reshape(ss, 1, length(ss));
% ss1 = Data.y2_joint.Data;
% ss1 = reshape(ss1, 1, length(ss1));
% ss2 = Data.y3_joint.Data;
% ss2 = reshape(ss2, 1, length(ss2));
% ss3 = Data.y4_joint.Data;
% ss3 = reshape(ss3, 1, length(ss3));
% plot(Data.qall.Time, ss, 'r', Data.qall.Time, ss1, 'b',Data.qall.Time, ss2, 'y',Data.qall.Time, ss3, 'k');

% ss = Data.y5_joint.Data;
% ss = reshape(ss, 1, length(ss));
% ss1 = Data.y6_joint.Data;
% ss1 = reshape(ss1, 1, length(ss1));
% ss2 = Data.y7_joint.Data;
% ss2 = reshape(ss2, 1, length(ss2));
% ss3 = Data.y8_joint.Data;
% ss3 = reshape(ss3, 1, length(ss3));
% plot(Data.qall.Time, ss, 'r', Data.qall.Time, ss1, 'b',Data.qall.Time, ss2, 'y',Data.qall.Time, ss3, 'k');

% ll_f = Data.dd_torso_angle.Data;
% ss2 = reshape(ll_f(1,1,:), 1, length(ss1));
% ss3 = zeros(size(ss2));
% for i=2:length(ss2)
%     ss3(i) = 0.03*ss2(i)+0.97*ss3(i-1);
% end
% plot(Data.qall.Time, ss2, 'r', Data.qall.Time, ss3, 'b');


% ll_f = Data.d_torso_angle.Data;
% ss2 = reshape(ll_f(1,1,:), 1, length(ss1));
% ss3 = zeros(size(ss2));
% for i=2:length(ss2)
%     ss3(i) = 0.01*ss2(i)+0.99*ss3(i-1);
% end
% plot(Data.qall.Time, ss2, 'r', Data.qall.Time, ss3, 'b');
% 
% ss1 = Data.s_LR.Data;
% ss2 = reshape(ss1(1,1,:), 1, length(ss1));
% ss3 = reshape(ss1(2,1,:), 1, length(ss2));
% ss4 = Data.computer_time.Data;
% ss4 = reshape(ss4(1,1,:), 1, length(ss4));
% plot(Data.qall.Time, ss3, 'r', Data.qall.Time, ss4, 'b');


% qsl = Data.qsL.Data;
% qsr = Data.qsR.Data;
% 
% l_k = qsl(1,1,:);
% l_k = reshape(l_k, length(l_k), 1);
% l_h = qsl(2,1,:);
% l_h = reshape(l_h, length(l_k), 1);
% r_k = qsr(1,1,:);
% r_k = reshape(r_k, length(l_k), 1);
% r_h = qsr(2,1,:);
% r_h = reshape(r_h, length(l_k), 1);
% plot(Data.qall.Time, l_k, 'r', Data.qall.Time, l_h, 'b', Data.qall.Time, r_k, 'y', Data.qall.Time, r_h, 'k');

% ss = Data.qall.Data;
% r_knee = ss(11,1,:);
% l_knee = ss(18,1,:);
% ss = reshape(r_knee, 1, length(ss));
% ss1 = reshape(l_knee, 1, length(ss));
% plot(Data.qall.Time, ss, Data.qall.Time, ss1);

% ss = Data.qall.Data;
% r_knee = ss(10,1,:);
% l_knee = ss(12,1,:);
% knee_joint = ss(11,1,:);
% ss = reshape(r_knee, 1, length(ss));
% ss1 = reshape(l_knee, 1, length(ss));
% knee_joint = reshape(knee_joint , 1, length(ss));
% ss2 = zeros(size(ss1));
% for i=1:length(ss2)
%     ss2(i) = ss(i) + knee_joint(i) + ss1(i) - 0.527480387854734; 
% end
% plot(Data.qall.Time, ss, 'r', Data.qall.Time, ss1, 'b', Data.qall.Time, ss2, 'k', Data.qall.Time, knee_joint, 'y');

ss = Data.torso_vx_b_fil.Data;
ss1 = Data.task.Data;
ss = reshape(ss, 1, length(ss));
ss1 = reshape(ss1, 1, length(ss1));
plot(Data.qall.Time, ss, Data.qall.Time, ss1);

% ss = Data.hd.Data;
% ss1 = ss(8,1, :);
% ss1 = reshape(ss1, length(ss1), 1);
% ss2 = ss(9,1,:);
% ss2 = reshape(ss2,length(ss2), 1);
% plot(Data.hd.Time, ss2);
% 
% ss = Data.torso_vy_b_fil.Data;
% ss1 = Data.task.Data;
% ss = reshape(ss, 1, length(ss));
% ss1 = reshape(ss1, 1, length(ss1));
% plot(Data.qall.Time, ss, Data.qall.Time, ss1);

% ss = Data.qall.Data;
% l_pitch = ss(16,1,:);
% l_knee = ss(17,1,:);
% l_pitch = reshape(l_pitch, 1, length(ss));
% l_knee = reshape(l_knee, 1, length(ss));
% ll_a = zeros(1, length(ss));
% for i=1:length(ss)
%     [~, ll_a(i)] = Cassia_FK_LEG(l_pitch(i), l_knee(i));
% end
% plot(Data.qall.Time, ll_a);
