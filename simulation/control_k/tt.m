% q_all = Data.qall.Data;
% dq_all = Data.dqall.Data;

% plot knee and toe

% knee_1 = q_all(13,1,:);
% knee_2 = q_all(20,1,:);
% knee_1 = reshape(knee_1, length(knee_1), 1);
% knee_2 = reshape(knee_2, length(knee_2), 1);
% knee_1_d = dq_all(13,1,:);
% knee_2_d = dq_all(20,1,:);
% knee_1_d = reshape(knee_1_d, length(knee_1), 1);
% knee_2_d = reshape(knee_2_d, length(knee_2), 1);
% plot(Data.qall.Time, knee_1, 'r', Data.qall.Time, knee_2, 'b', Data.qall.Time, knee_1_d, 'y', Data.qall.Time, knee_2_d, 'k');


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

joint_init_status = cassia_gait.LeftStance.HAlpha(5,:,1);

qall = zeros(20,1);

joint_init_status = reshape(joint_init_status, 10, 1);
joint_init_status_r = joint_init_status;

[joint_init_status_r(3), joint_init_status_r(4)] = Cassia_IK_LEG(joint_init_status(3), joint_init_status(4));
[joint_init_status_r(8), joint_init_status_r(9)] = Cassia_IK_LEG(joint_init_status(8), joint_init_status(9));


qall(7) = joint_init_status_r(1);
qall(8) = joint_init_status_r(2);
qall(9) = joint_init_status_r(3);
qall(10) = joint_init_status_r(4);
qall(12) = (0.527480387854734 - joint_init_status_r(4));
qall(13) = joint_init_status_r(5);

qall(14) = joint_init_status_r(6);
qall(15) = joint_init_status_r(7);
qall(16) = joint_init_status_r(8);
qall(17) = joint_init_status_r(9);
qall(19) = (0.527480387854734 - joint_init_status_r(9));
qall(20) = joint_init_status_r(10);

l_d = p_LeftToeBottom(qall);
r_d = p_RightToeBottom(qall);
%l_d = p_toe_joint_left(qall);
%r_d = p_toe_joint_right(qall);
com = pcom_casia_nnn(qall);