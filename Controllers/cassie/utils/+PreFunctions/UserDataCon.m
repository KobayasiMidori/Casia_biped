function data_input = UserDataCon()
data_input.position = zeros(14, 1);    %to be saved
data_input.velocity = zeros(14, 1);
data_input.torque = zeros(10, 1);
data_input.actTorque = zeros(10, 1);
data_input.state = zeros(5, 1);
data_input.tau = zeros(10,1);
data_input.f_mode = zeros(10,1);
data_input.motor_dst_rlt = zeros(10,1);
data_input.imu = zeros(3,1);
data_input.fk_r = zeros(10,1);
data_input.fk_l = zeros(10,1);
data_input.IK_dst = zeros(6,1); 
data_input.state_march_plan = zeros(1,1);
data_input.state_march_real = zeros(1,1);
data_input.v_est = zeros(3,1);
data_input.p_est = zeros(3,1);
data_input.pid = zeros(20,1); 
data_input.imu_org = zeros(22,1);
data_input.s = zeros(1,1);
data_input.force = zeros(6,1);
data_input.imu_yaw0 = zeros(1,1);
data_input.s_rl = zeros(2,1);
data_input.yaw_est = zeros(4,1);
data_input.motor_stateCode = zeros(10,1);
data_input.walk_p0 = zeros(3,1);
data_input.eulZYX_multi = zeros(3,1);
data_input.walk_xzdir_wr = zeros(3,1);
data_input.walk_xzdir_wl = zeros(3,1);
data_input.IK_target = zeros(10,1);
data_input.p_pid = zeros(6,1);
data_input.motor_statusWord = zeros(10,1);
data_input.voltage = zeros(10,1);
data_input.temp = zeros(10,1);
data_input.ErrorCode = zeros(10,1);
data_input.imu_status_word = 0;
data_input.walk_xv_tgt = 0;
data_input.walk_xv_dst = 0;
data_input.con_remote = zeros(10,1);
data_input.battery = zeros(6,1);
data_input.IK_ry = zeros(4,1);
end