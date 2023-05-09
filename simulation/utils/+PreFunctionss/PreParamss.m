sampleTime = 1/2000;
motorVelocities(1) = 0;
motorVelocities(2) = 0;
motorVelocities(3) = 0;
motorVelocities(4) = 0;
motorVelocities(5) = 0;
motorVelocities(6) = 0;
motorVelocities(7) = 0;
motorVelocities(8) = 0;
motorVelocities(9) = 0;
motorVelocities(10) = 0;
% first is right
motorPositions(1) = -0.0045;
motorPositions(2) = 0;
motorPositions(3) = 0.6804;
motorPositions(4) = -1.9205;
motorPositions(5) = -1.2079;
motorPositions(6) = 0.0045;
motorPositions(7) = 0;
motorPositions(8) = 0.6804;
motorPositions(9) = -1.9205;
motorPositions(10) = -1.2079;
% motorPositions(1) = 0;
% motorPositions(2) = 0;
% motorPositions(3) = 0;
% motorPositions(4) = 0;
% motorPositions(5) = 0;
% motorPositions(6) = 0;
% motorPositions(7) = 0;
% motorPositions(8) = 0;
% motorPositions(9) = 0;
% motorPositions(10) = 0;
pelvisAngularVelocity = [0;0;0];
pelvisPosition = [0;0;0.71];
pelvisRotation = [1,0,0;0,1,0;0,0,1];
pelvisVelocity = [0;0;0];

% PD gain on Joints (walk)
c_Kp_pitch = 100;
c_Kd_pitch = 20;
% c_Kp_roll = 100;
% c_Kd_roll = 20;
c_Kp_roll = 100;
c_Kd_roll = 20;
c_Kp_yaw = 200;
c_Kd_yaw = 4;

c_Kp_abduction = 400;
%c_Kp_rotation = 200;
c_Kp_rotation = 400;
c_Kp_thigh = 500;
%c_Kp_knee = 550;
c_Kp_knee = 500;
c_Kp_toe = 10;

c_Kd_abduction = 10;
%c_Kd_rotation = 4;
c_Kd_rotation = 10;
c_Kd_thigh = 15;
%c_Kd_knee = 30;
c_Kd_knee = 15;
c_Kd_toe = 2;

% PD gain on Joints (stand)
c_Kp_abduction_stand = 400;
c_Kp_thigh_stand = 200;
c_Kp_knee_stand = 550;
%c_Kp_knee_stand = 500;
c_Kp_rotation_stand = 200;
c_Kp_toe_stand = 600;

c_Kd_abduction_stand = 4;
c_Kd_thigh_stand = 10;
%c_Kd_knee_stand = 20;
c_Kd_knee_stand = 50;
c_Kd_rotation_stand = 4;
%c_Kd_toe_stand = 80;
c_Kd_toe_stand = 80;

c_Kp_lateral_stand = 1;
%c_Kp_lateral_stand = 1;
c_Kd_lateral_stand = 0.01;
%c_Kd_lateral_stand = 0.5;

% its may useless blz we is absoulute encoder
c_joint_filter_chocie = 1;


% filter parameter for absolute encoder
sample_time = 1/2000;

lpf_damping = sqrt(2)/2; % Butterworth filter damping
fcut_velocity_joint = 100*(2*pi); % Cutoff frequency for velocities
B1_lpf_velocity_joint = -2*exp(-lpf_damping*fcut_velocity_joint*sample_time)*cos(fcut_velocity_joint*sample_time*sqrt(1-lpf_damping^2));
B2_lpf_velocity_joint = exp(-2*lpf_damping*fcut_velocity_joint*sample_time);
A_lpf_velocity_joint = 1 + B1_lpf_velocity_joint + B2_lpf_velocity_joint;

% filters
c_fil_para_x = 0.002;
c_fil_para_y = 0.002;
c_fil_para_2 = 0.02;
c_fil_para_3 = 0.02;
c_fil_para_4 = 0.001;
c_fil_para_5 = 0.02;

% spring
c_stance_thre_ub = 200;
c_stance_thre_lb = 100;


c_shift_time = 0.5;
c_shift_distance = 0.02;
%c_shift_distance = 0.075;

c_standing_switch_time = 0.4;

c_lateral_velocity_weight = 1;
c_init_lateral_velocity = 0.1;

c_force_step_end_s = 1.1;

c_Kfs_p = 0.6;
c_Kfs_d = 0.15;
c_Kfl_d = 0.8;
c_Kfl_p = 0.6;
%c_Kfl_p = 0.2;

c_abduction_inward_gain = 1;
c_toe_tilt_angle = 0.3;

% Switch from walk to stand
c_final_sw_abduction = 0.15;
c_final_st_abduction = 0.05;
c_pre_final_sw_abduction = -0.01;

% gravity compensation
c_u_abduction_swing_cp = 14;
%c_u_abduction_swing_cp = 20;
c_u_abduction_cp = 40;
%c_u_abduction_cp = 45;
c_u_thigh_cp = 15;
%c_u_knee_cp = 120;
c_u_knee_cp = 100;

