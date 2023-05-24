     classdef FootEndTrajectory < matlab.System & matlab.system.mixin.Propagates & matlab.system.mixin.SampleTime
    % casia cassie
    %
    % This template includes the minimum set of functions required
    % to define a System object with discrete state.

    % Public, tunable properties
    % position_up_limit; position_low_limit;motor_tested_position;start_position_limit : It has to be signed plus or minus
    % test_direction = int32(1);   +1 -1

    properties

    end

    properties(DiscreteState)

    end

    % Pre-computed constants
    properties(Access = private)
        %right hip roll yaw pitch knee foot
        actuator_begin = zeros(10,1);
        actuator_inc = zeros(10,1);
        op_cnt = 0;    
        state_index_next = int32(0);
        state_index= int32(0);
        is_sto = 0;        
        is_op = 0;                      
        target_position = zeros(10,1);       
        actor_dst_zero = zeros(10,1);

        motor_dir =zeros(10,1);
        motor_position = zeros(10,1);
        motor_velocity = zeros(10,1);
        motor_real_current = zeros(10,1);
        motor_rated_current = zeros(10,1);
        motor_position_pas = zeros(4,1);
        motor_velocity_pas = zeros(4,1);
        motor_voltage = zeros(10,1);
        motor_stateCode = zeros(10,1);
        motor_statusWord = zeros(10,1);
        ErrorCode = zeros(10,1);        

        R_Imu_Iw= zeros(3,3);   
        R_robot_w =zeros(3,3);
        eulZYX_org = zeros(1,3);
        eulZYX_single = zeros(1,3);  
        eulZYX_single_pre = zeros(1,3);
        eulZYX_multi = zeros(1,3);
        eulZYX = zeros(1,3);
        eulZYX_status_word = 0;

        yaw_N = 0;


        IK_ini = zeros(1,6);
        IK_dst = zeros(1,6);        
        squat_num = 0.5;
        march_num = 0.5;
        squat_tgt = zeros(1,6);  
        Amp_z_base = zeros(2,2);%行：1：right，2：left；列1:stand_leg_z 2:wave_leg_z   
        Amp_z_rota = zeros(2,1);%1:right   2:left  
        Amp_x_base = 0;
        IK_dst_z = zeros(2,1); %1:right
                                %2:left
        IK_dst_x = zeros(2,1); %1:right
                                %2:left
        first_wave_leg = 0;
        march_phase = 0;
        IK_limit_low = zeros(1,6);
        IK_limit_up = zeros(1,6);
        %----
        Ts = 1/2000;
        squat_cnt_max = 0;
        march_total_t = 0;
        IK_tgt_inc = zeros(1,6);
        coeff = zeros(4,2);
        state_march_plan = -1;
        state_march_real = 0;
        P_wpre = zeros(1,3);%-----------------------------
        v_pre = zeros(2,3);%-------------------------------
        v_LPF_pre = zeros(2,3);
        v_est = zeros(3,1); %
        p_est = zeros(3,1);
        p_est0 = zeros(3,1);
        imu_yaw0 = 0;
        imu_org = zeros(10,1);
        s_total = 0.0;
        s_mod = 0.0;
        s_mod_two = 0.0;
        cut_phase = 1.0;
        assign_flag = 0;
        x_filt = zeros(3,1);
        x_filt_Est = zeros(16,1);
        P_filt_Est = zeros(15,15);
        vCOMV2_pre = zeros(3,6);
        x_filt_pre = zeros(3,2);
        XOld = zeros(16,1);
        POld = zeros(15,15);
        acc = zeros(3,1);
        w = zeros(3,1);
        Roff = zeros(3,3);
        pCoM = zeros(3,1);
        vCoM_v2 = zeros(3,1);
        pL_w = zeros(3,1);
        pR_w = zeros(3,1);
        t0 = 0;
        t1 = 0;
        t2 = zeros(2,1);%1:right  2:left
        stance_leg = -1;
        march_first_time = 0;
        s = 0;
        s_pre = 0;
        s_rl = zeros(2,1);
        pid_Ena_pre = 0;
        stride = 0;

        k_x = 0;
        reset_num = -1;
        IK_tgt = zeros(6,1);
        leg_stat = zeros(2,1);
        step_cnt = 0;
        flag_stop = 0;
        flag_last_step = 0;
        pos_rota = zeros(3,1);
        flag_march = 1;
        walk_p0_w = zeros(3,1);
        walk_p0 = zeros(3,1);
        stride_tgt = 0;
        yaw_minw = 0;
        yaw_pre = zeros(2,1);
        t_pid_Ena = 0;
        flag_pid_Ena = 0;
        flag_pid_Ena_pre = 0;
        walk_xzdir_w = zeros(3,2);
        Amp_x_rota = 0;

        op_enable = 0;
        pid_enable = 0;      %pid enable
        start_march = 0;      %start march
        forward = 0;      %forward
        turn = 0;      %turn left
        move = 0;      %move right                
        ES = 0;      %ES
        reset_position = 0;      %reset
        start_squat = 0;
        start_march_pre = 0;
        reset_pre = 0;
        turn_pre = 0;
        start_squat_pre = 0;

        reset_num_tgt = 0;
        march_num_tgt = 0;
        squat_num_tgt = 0;

        battery = zeros(6,1);
        flag_battery = 0;

        IK_ry = zeros(2,2);
        t0_step = 0;
        flag_1step_op = 0;
    end

    methods(Access = protected)
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
%             for i = 1:10
%                 obj.inter_array(i) =  func.TrajectoryGenerator(5, 10000);
%             end
              obj.is_op = 0;
              
              obj.motor_rated_current(1) = 65;
              obj.motor_rated_current(2) = 11.31;
              obj.motor_rated_current(3) = 65;
              obj.motor_rated_current(4) = 67;
              obj.motor_rated_current(5) = 7.07;
              obj.motor_rated_current(6) = 65;
              obj.motor_rated_current(7) = 11.31;
              obj.motor_rated_current(8) = 65;
              obj.motor_rated_current(9) = 67;
              obj.motor_rated_current(10) = 7.07;

              obj.motor_dir(1) = 1;
              obj.motor_dir(2) = -1;
              obj.motor_dir(3) = 1;
              obj.motor_dir(4) = -1;
              obj.motor_dir(5) = 1;
              obj.motor_dir(6) = -1;
              obj.motor_dir(7) = -1;
              obj.motor_dir(8) = -1;
              obj.motor_dir(9) = -1;
              obj.motor_dir(10) = 1;

              obj.IK_limit_low(1) = -0.25;
              obj.IK_limit_low(2) = -0.90;
              obj.IK_limit_low(4) = -0.25;
              obj.IK_limit_low(5) = -0.90;
              obj.IK_limit_up(1) = 0.2;
              obj.IK_limit_up(2) = -0.6;
              obj.IK_limit_up(4) = 0.2;             
              obj.IK_limit_up(5) = -0.6;
              
              obj.IK_tgt_inc(1) = 0.02*obj.Ts; %0.02m/s
              obj.IK_tgt_inc(2) = 0.02*obj.Ts; %0.02m/s
              obj.IK_tgt_inc(3) = 0.035*obj.Ts; %2°/s
              obj.IK_tgt_inc(4) = 0.02*obj.Ts; %0.02m/s
              obj.IK_tgt_inc(5) = 0.02*obj.Ts; %0.02m/s
              obj.IK_tgt_inc(6) = 0.035*obj.Ts; %2°/s                            
        end

        function [TraOutput,eulZYX,IK_dst,march_temp,yaw0,eulZYX_single,pos_rota,t_pid_Ena,flag_pid_Ena,controller,flag_battery] = stepImpl(obj,cassie_data,IK_tgt,squat,march,op_mode,FK_r_l,is_sto,pid_out,actor_dst_rlt,flag_stop,flag_p0,flag_fly,t)
            % Implement algorithm. Calculate y as a function of input u and
            % discrete states.
            % should in one file
            %----------remote control------------------------------
            if abs(cassie_data.pelvis.remote.fail_safe) < 0.1  && abs(cassie_data.pelvis.remote.frame_lost) < 0.1
                if cassie_data.pelvis.remote.op > 800
                    obj.op_enable = 1;      %op
                end                    
                if cassie_data.pelvis.remote.pid > 1400
                    obj.pid_enable = 1;      %pid enable
                else
                    obj.pid_enable = 0;      %pid disable                 
                end
                if cassie_data.pelvis.remote.march > 1400 && (abs(flag_fly - 1) < 0.1|| (t-obj.t_pid_Ena) > 15) %abs(obj.flag_pid_Ena - 1) < 0.1)
                    obj.start_march = 1;      %start march
                elseif cassie_data.pelvis.remote.march < 500
                    obj.start_march = 0;      %stop march
                end
                if cassie_data.pelvis.remote.forward > 1400
                    obj.forward = 1;      %forward
                elseif cassie_data.pelvis.remote.forward < 500
                    obj.forward = -1;      %backward
                else
                    obj.forward = 0;      %no
                end                
                if cassie_data.pelvis.remote.turn > 1400
                    obj.turn = 1;      %turn right               
                elseif cassie_data.pelvis.remote.turn < 500
                    obj.turn = -1;      %turn left
                else
                    obj.turn = 0;      %no      
                end  
                if cassie_data.pelvis.remote.move > 1400
                    obj.move = 1;      %move right                
                elseif cassie_data.pelvis.remote.move < 500
                    obj.move = -1;      %move left
                else
                    obj.move = 0;      %no          
                end            
                if cassie_data.pelvis.remote.ES > 1400
                    obj.ES = 1;      %ES
                else
                    obj.ES = 0; 
                end       
                if cassie_data.pelvis.remote.reset_position > 1400 %&& abs(obj.reset_position) < 0.1
                    obj.reset_position = 1;      %reset
                else
                    obj.reset_position = 0; 
                end
                if cassie_data.pelvis.remote.rise > 1400 
                    obj.start_squat = 1;      %start squat
                elseif cassie_data.pelvis.remote.march < 500
                    obj.start_squat = 0;      %stop squat
                end
            end
            %battery status
            obj.battery(1) = cassie_data.pelvis.battery.current; 
            obj.battery(2) = cassie_data.pelvis.battery.current_capacity;
            obj.battery(3) = cassie_data.pelvis.battery.protect_status;
            obj.battery(4) = cassie_data.pelvis.battery.voltage;
            obj.battery(5) = cassie_data.pelvis.battery.battery_capacity;
            obj.battery(6) = cassie_data.pelvis.battery.empty_;            
            
            if obj.battery(2)/obj.battery(5) > 0.7  %check the capacity of the battery before op
                obj.flag_battery = 1;                     % 1: op
            end
            %etherCat, sto, remote_op, battery capacity : op
            if (cassie_data.pelvis.targetPc.etherCatStatus(2) == 8) && (cassie_data.pelvis.targetPc.etherCatStatus(1) == 0 && is_sto < 0.5 && t > 10 && abs(obj.op_enable - 1) < 0.1)%  && abs(obj.flag_battery - 1) < 0.1              
                obj.is_op = 1;
                % march, reset, squat again
                if abs(obj.start_march - 1) < 0.1 && abs(obj.start_march_pre) < 0.1
                    obj.march_num_tgt = obj.march_num_tgt + 1;
                end
                if abs(obj.reset_position - 1) < 0.1 && abs(obj.reset_pre) < 0.1
                    obj.reset_num_tgt = obj.reset_num_tgt + 1;
                end   
                if abs(obj.start_squat - 1) < 0.1 && abs(obj.start_squat_pre) < 0.1
                    obj.squat_num_tgt = obj.squat_num_tgt + 1;
                end 

                obj.reset_pre = obj.reset_position;
                obj.start_squat_pre = obj.start_squat;
                %imu
                R_Iw_w = [1 0 0;0 -1 0;0 0 -1];%Iw:world of IMU, w:pelvis of robot
                R_robot_Imu = [ -1 0 0; 0 1 0; 0 0 -1];%[0 -1 0; -1 0 0; 0 0 -1];%[0 0 -1;0 -1 0;-1 0 0];%robot:
                obj.R_Imu_Iw= quat2rotm([cassie_data.pelvis.imu.q0 cassie_data.pelvis.imu.q1 cassie_data.pelvis.imu.q2 cassie_data.pelvis.imu.q3]);   
                obj.R_robot_w =R_Iw_w*obj.R_Imu_Iw*R_robot_Imu;
                obj.eulZYX_org = rotm2eul(obj.R_robot_w,'ZYX');  %1:y 2:p 3:r
                % single yaw 
                % remove singular points of IMU 
                if  obj.state_index_next == 0 
                    obj.eulZYX_single = obj.eulZYX_org;
                elseif  ~((abs(obj.eulZYX_org(1)) < 1e-10)||(abs(obj.eulZYX_org(1)-(-pi)) < 1e-10)||(abs(obj.eulZYX_org(1)-pi) < 1e-10)||...
                        (abs(obj.eulZYX_org(2)) < 1e-10)||(abs(obj.eulZYX_org(2) - pi/2) < 1e-10)||(abs(obj.eulZYX_org(2) + pi/2) < 1e-10)||...
                        (abs(obj.eulZYX_org(3)) < 1e-10)||(abs(obj.eulZYX_org(3) - (-pi)) < 1e-10)||(abs(obj.eulZYX_org(3) - (pi)) < 1e-10))
                    obj.eulZYX_single =  obj.eulZYX_org;
                end
                % multi yaw
                % yaw filter
                if abs(obj.eulZYX_single(1) - obj.eulZYX_single_pre(1)) > pi && obj.eulZYX_single(1) - obj.eulZYX_single_pre(1) < 0
                    obj.yaw_N = obj.yaw_N + 1;
                elseif  abs(obj.eulZYX_single(1) - obj.eulZYX_single_pre(1)) > pi && obj.eulZYX_single(1) - obj.eulZYX_single_pre(1) > 0
                    obj.yaw_N = obj.yaw_N - 1;                    
                end
                obj.eulZYX_multi(1) = obj.eulZYX_single(1) + obj.yaw_N*2*pi;
                obj.eulZYX_single_pre = obj.eulZYX_single;                
                fre_yaw = 50;
                [LPF_OUT,obj.yaw_pre] = LPF(obj.eulZYX_multi(1),obj.Ts,fre_yaw,obj.yaw_pre); 
                % IMU result
                obj.eulZYX(1) = LPF_OUT;
                obj.eulZYX(2) = obj.eulZYX_single(2) + deg2rad(0.3);
                obj.eulZYX(3) = obj.eulZYX_single(3) + deg2rad(0.27);     
                %other IMU data: acc, w, q
                if abs(cassie_data.pelvis.imu.acc_x - obj.acc(1)) < 1e3 && abs(cassie_data.pelvis.imu.acc_y - obj.acc(2)) < 1e3 && abs(cassie_data.pelvis.imu.acc_z - obj.acc(3)) < 1e3
                    obj.acc = [cassie_data.pelvis.imu.acc_x;    cassie_data.pelvis.imu.acc_y;   cassie_data.pelvis.imu.acc_z];
                end
                if abs(cassie_data.pelvis.imu.gyr_x - obj.w(1)) < 1e3 && abs(cassie_data.pelvis.imu.gyr_y - obj.w(2)) < 1e3 && abs(cassie_data.pelvis.imu.gyr_z - obj.w(3)) < 1e3
                    obj.w = [cassie_data.pelvis.imu.gyr_x;    cassie_data.pelvis.imu.gyr_y;   cassie_data.pelvis.imu.gyr_z];
                end                
                obj.imu_org = [obj.acc;
                                       obj.w;                
                                       cassie_data.pelvis.imu.q0;  cassie_data.pelvis.imu.q1;  cassie_data.pelvis.imu.q2;  cassie_data.pelvis.imu.q3];
                obj.eulZYX_status_word = cassie_data.pelvis.imu.status_word;                                 
                
                % pid enable
                if abs(obj.pid_enable - 1)<0.1    %Enable
                    if abs(obj.pid_Ena_pre) <0.1 
                        obj.t_pid_Ena = t;
                    end
                    if (t-obj.t_pid_Ena) > 15         %wait 15 second !!! 
                        if abs(obj.start_march - 1) < 0.1 && abs(obj.start_march_pre) < 0.1
                        	obj.flag_pid_Ena = 1;
                        end
                    end
                elseif abs(obj.pid_enable) < 0.1  %Disable
                    obj.flag_pid_Ena = 0; 
                end                               
              
                %state estimation
                if abs(obj.flag_pid_Ena) < 0.5         %initialize
                    %%% ini for FK_est %%%
                    obj.Roff=R3Dz(-obj.eulZYX(1));%yaw
                    R=obj.Roff*R3Dz(obj.eulZYX(1))*R3Dy(obj.eulZYX(2))*R3Dx(obj.eulZYX(3));
                    PDOff_L=[-0.096;0.1395;0];
                    PDOff_R=[-0.096;-0.1395;0];
                    PDr = FK_r_l(8:10,1);
                    PDl = FK_r_l(8:10,2);
                    obj.vCOMV2_pre(:,3)=diag([1,1,0])*(PDl+PDOff_L);%pL_w
                    obj.vCOMV2_pre(:,4)=diag([1,1,0])*(PDr+PDOff_R);%pR_w
                    pCoM_L=-R*(PDl+PDOff_L)+obj.vCOMV2_pre(:,3);%pCoM_L
                    pCoM_R=-R*(PDr+PDOff_R)+obj.vCOMV2_pre(:,4);%pCoM_R
                    obj.vCOMV2_pre(:,1)=(pCoM_L+pCoM_R)/2;%pCoM
                    obj.vCOMV2_pre(:,2)=[0;0;0];%vCoM_v2

                    %%% ini for kalman filt %%%
                    obj.x_filt_pre=zeros(3,2);
                    
                    prior_base_pose_std = 0.1*ones(6,1);
                    prior_base_velocity_std = 0.1*ones(3,1);
                    prior_gyro_bias_std = 0.1*ones(3,1);
                    prior_accel_bias_std = 0.1*ones(3,1);

                    obj.POld= blkdiag(diag(prior_base_pose_std(1:3).^2), ...
                                  diag(prior_base_velocity_std.^2), ...
                                  diag(prior_base_pose_std(4:6).^2), ...
                                  diag(prior_gyro_bias_std.^2),...
                                  diag(prior_accel_bias_std.^2)); % Prior State Covariance Matrix

                    obj.POld = obj.POld/100;

                    obj.XOld=zeros(16,1);
                    obj.XOld(1:4)=eul2quat([0,obj.eulZYX(2),obj.eulZYX(3)],'ZYX');
                    obj.XOld(8:10)=obj.vCOMV2_pre(:,1);
                    obj.XOld(11:13)=[0;0;0];                    
                end            
                [obj.x_filt,obj.pCoM,obj.x_filt_Est,obj.P_filt_Est,obj.vCoM_v2,obj.pL_w,obj.pR_w,obj.vCOMV2_pre,obj.x_filt_pre,obj.XOld,obj.POld]...
                    = vCOMv2_cal(obj.eulZYX(3),obj.eulZYX(2),obj.eulZYX(1),FK_r_l,obj.vCOMV2_pre,obj.x_filt_pre,obj.XOld,obj.POld,obj.acc,obj.w,obj.Roff);   
%                 obj.v_est = obj.x_filt';
%                 obj.v_est = obj.x_filt_Est(5:7); 
%                 obj.p_est = obj.x_filt_Est(8:10);
%                 v_LPF_in = (R3Dz(obj.eulZYX(1)))'*(obj.Roff)'*obj.x_filt_Est(5:7);
%                 fre_v = 5;
%                 [v_LPF_out,obj.v_LPF_pre] = LPF(v_LPF_in',obj.Ts,fre_v,obj.v_LPF_pre);
%                 obj.v_est = [v_LPF_out(1);v_LPF_in(2);v_LPF_in(3)];
                obj.v_est = (R3Dz(obj.eulZYX(1)))' * (obj.Roff)' * obj.x_filt_Est(5:7); 
                obj.p_est = (R3Dz(obj.eulZYX(1)))' * (obj.Roff)' * obj.x_filt_Est(8:10); 
                % yaw ref
                if (abs(obj.flag_pid_Ena_pre) <0.5  && abs(obj.flag_pid_Ena - 1)<0.5) ||... % addition 1 : pid enable
                    ((abs(obj.turn_pre - 1) < 0.1 || abs(obj.turn_pre + 1) < 0.1) && abs(obj.turn) < 0.1)           %addition 2 : end turn         
                    obj.p_est0 = obj.p_est;
                    if (abs(obj.turn_pre - 1) < 0.1 || abs(obj.turn_pre + 1) < 0.1) && abs(obj.turn) < 0.1                                           
                        obj.imu_yaw0 = obj.eulZYX(1)+deg2rad(15);
                    else
                    	obj.imu_yaw0 = obj.eulZYX(1);
                    end
                end
                obj.turn_pre = obj.turn;
                obj.pid_Ena_pre = obj.pid_enable;
                obj.flag_pid_Ena_pre = obj.flag_pid_Ena;
                obj.start_march_pre = obj.start_march; 
                
                % receive motor data
                obj.motor_position(1) = obj.motor_dir(1)*cassie_data.rightLeg.hipRollDrive.position;   
                obj.motor_position(2) = obj.motor_dir(2)*cassie_data.rightLeg.hipYawDrive.position;
                obj.motor_position(3) = obj.motor_dir(3)*cassie_data.rightLeg.hipPitchDrive.position;
                obj.motor_position(4) = obj.motor_dir(4)*cassie_data.rightLeg.kneeDrive.position;
                obj.motor_position(5) = obj.motor_dir(5)*cassie_data.rightLeg.footDrive.position;
                obj.motor_position(6) = obj.motor_dir(6)*cassie_data.leftLeg.hipRollDrive.position;
                obj.motor_position(7) = obj.motor_dir(7)*cassie_data.leftLeg.hipYawDrive.position;
                obj.motor_position(8) = obj.motor_dir(8)*cassie_data.leftLeg.hipPitchDrive.position;
                obj.motor_position(9) = obj.motor_dir(9)*cassie_data.leftLeg.kneeDrive.position;
                obj.motor_position(10) = obj.motor_dir(10)*cassie_data.leftLeg.footDrive.position;
                if abs(cassie_data.rightLeg.shinJoint.position - obj.motor_position_pas(1)) < 1           
                    obj.motor_position_pas(1) = cassie_data.rightLeg.shinJoint.position;
                end
                obj.motor_position_pas(2)  = cassie_data.rightLeg.tarsusJoint.position;
                obj.motor_position_pas(3) = cassie_data.leftLeg.shinJoint.position;
                obj.motor_position_pas(4)  = cassie_data.leftLeg.tarsusJoint.position;
                
                obj.motor_velocity(1) = obj.motor_dir(1)*cassie_data.rightLeg.hipRollDrive.velocity;
                obj.motor_velocity(2) = obj.motor_dir(2)*cassie_data.rightLeg.hipYawDrive.velocity;
                obj.motor_velocity(3) = obj.motor_dir(3)*cassie_data.rightLeg.hipPitchDrive.velocity;
                obj.motor_velocity(4) = obj.motor_dir(4)*cassie_data.rightLeg.kneeDrive.velocity;
                obj.motor_velocity(5) = obj.motor_dir(5)*cassie_data.rightLeg.footDrive.velocity;
                obj.motor_velocity(6) = obj.motor_dir(6)*cassie_data.leftLeg.hipRollDrive.velocity;
                obj.motor_velocity(7) = obj.motor_dir(7)*cassie_data.leftLeg.hipYawDrive.velocity;
                obj.motor_velocity(8) = obj.motor_dir(8)*cassie_data.leftLeg.hipPitchDrive.velocity;
                obj.motor_velocity(9) = obj.motor_dir(9)*cassie_data.leftLeg.kneeDrive.velocity;
                obj.motor_velocity(10) = obj.motor_dir(10)*cassie_data.leftLeg.footDrive.velocity;
                obj.motor_velocity_pas(1) = cassie_data.rightLeg.shinJoint.velocity;
                obj.motor_velocity_pas(2) = cassie_data.rightLeg.tarsusJoint.velocity;
                obj.motor_velocity_pas(3) = cassie_data.leftLeg.shinJoint.velocity;
                obj.motor_velocity_pas(4) = cassie_data.leftLeg.tarsusJoint.velocity;
                
                obj.motor_real_current(1) = obj.motor_dir(1)*cassie_data.rightLeg.hipRollDrive.torque*obj.motor_rated_current(1);
                obj.motor_real_current(2) = obj.motor_dir(2)*cassie_data.rightLeg.hipYawDrive.torque*obj.motor_rated_current(2);
                obj.motor_real_current(3) = obj.motor_dir(3)*cassie_data.rightLeg.hipPitchDrive.torque*obj.motor_rated_current(3);
                obj.motor_real_current(4) = obj.motor_dir(4)*cassie_data.rightLeg.kneeDrive.torque*obj.motor_rated_current(4);
                obj.motor_real_current(5) = obj.motor_dir(5)*cassie_data.rightLeg.footDrive.torque*obj.motor_rated_current(5);
                obj.motor_real_current(6) = obj.motor_dir(6)*cassie_data.leftLeg.hipRollDrive.torque*obj.motor_rated_current(6);
                obj.motor_real_current(7) = obj.motor_dir(7)*cassie_data.leftLeg.hipYawDrive.torque*obj.motor_rated_current(7);
                obj.motor_real_current(8) = obj.motor_dir(8)*cassie_data.leftLeg.hipPitchDrive.torque*obj.motor_rated_current(8);
                obj.motor_real_current(9) = obj.motor_dir(9)*cassie_data.leftLeg.kneeDrive.torque*obj.motor_rated_current(9);
                obj.motor_real_current(10) = obj.motor_dir(10)*cassie_data.leftLeg.footDrive.torque*obj.motor_rated_current(10);                  
                
                obj.motor_voltage(1) = cassie_data.rightLeg.hipRollDrive.dcLinkVoltage;
                obj.motor_voltage(2) = cassie_data.rightLeg.hipYawDrive.dcLinkVoltage;
                obj.motor_voltage(3) = cassie_data.rightLeg.hipPitchDrive.dcLinkVoltage;
                obj.motor_voltage(4) = cassie_data.rightLeg.kneeDrive.dcLinkVoltage;
                obj.motor_voltage(5) = cassie_data.rightLeg.footDrive.dcLinkVoltage;
                obj.motor_voltage(6) = cassie_data.leftLeg.hipRollDrive.dcLinkVoltage;
                obj.motor_voltage(7) = cassie_data.leftLeg.hipYawDrive.dcLinkVoltage;
                obj.motor_voltage(8) = cassie_data.leftLeg.hipPitchDrive.dcLinkVoltage;
                obj.motor_voltage(9) = cassie_data.leftLeg.kneeDrive.dcLinkVoltage;
                obj.motor_voltage(10) = cassie_data.leftLeg.footDrive.dcLinkVoltage;
                
                obj.motor_stateCode(1) = cassie_data.rightLeg.hipRollDrive.stateCode;   
                obj.motor_stateCode(2) = cassie_data.rightLeg.hipYawDrive.stateCode;
                obj.motor_stateCode(3) = cassie_data.rightLeg.hipPitchDrive.stateCode;
                obj.motor_stateCode(4) = cassie_data.rightLeg.kneeDrive.stateCode;
                obj.motor_stateCode(5) = cassie_data.rightLeg.footDrive.stateCode;
                obj.motor_stateCode(6) = cassie_data.leftLeg.hipRollDrive.stateCode;
                obj.motor_stateCode(7) = cassie_data.leftLeg.hipYawDrive.stateCode;
                obj.motor_stateCode(8) = cassie_data.leftLeg.hipPitchDrive.stateCode;
                obj.motor_stateCode(9) = cassie_data.leftLeg.kneeDrive.stateCode;
                obj.motor_stateCode(10) = cassie_data.leftLeg.footDrive.stateCode;
                
                obj.motor_statusWord(1) = cassie_data.rightLeg.hipRollDrive.statusWord;   
                obj.motor_statusWord(2) = cassie_data.rightLeg.hipYawDrive.statusWord;
                obj.motor_statusWord(3) = cassie_data.rightLeg.hipPitchDrive.statusWord;
                obj.motor_statusWord(4) = cassie_data.rightLeg.kneeDrive.statusWord;
                obj.motor_statusWord(5) = cassie_data.rightLeg.footDrive.statusWord;
                obj.motor_statusWord(6) = cassie_data.leftLeg.hipRollDrive.statusWord;
                obj.motor_statusWord(7) = cassie_data.leftLeg.hipYawDrive.statusWord;
                obj.motor_statusWord(8) = cassie_data.leftLeg.hipPitchDrive.statusWord;
                obj.motor_statusWord(9) = cassie_data.leftLeg.kneeDrive.statusWord;
                obj.motor_statusWord(10) = cassie_data.leftLeg.footDrive.statusWord;
                
                obj.ErrorCode(1) = cassie_data.rightLeg.ErrorCode(1);   
                obj.ErrorCode(2) = cassie_data.rightLeg.ErrorCode(2);
                obj.ErrorCode(3) = cassie_data.rightLeg.ErrorCode(3);
                obj.ErrorCode(4) = cassie_data.rightLeg.ErrorCode(4);
                obj.ErrorCode(5) = cassie_data.rightLeg.ErrorCode(5);
                obj.ErrorCode(6) = cassie_data.leftLeg.ErrorCode(1);
                obj.ErrorCode(7) = cassie_data.leftLeg.ErrorCode(2);
                obj.ErrorCode(8) = cassie_data.leftLeg.ErrorCode(3);
                obj.ErrorCode(9) = cassie_data.leftLeg.ErrorCode(4);
                obj.ErrorCode(10) = cassie_data.leftLeg.ErrorCode(5);        
                
                %% 
                %get the current and zero position
                if obj.state_index_next == int32(0)  
                    obj.state_index = int32(0);
                    for i=1:10
                        obj.target_position(i) = 0.0;
                        obj.actuator_begin(i) = obj.motor_position(i);
                        obj.actor_dst_zero(i) = obj.motor_position(i);
                        obj.actuator_inc(i) = (obj.target_position(i)-obj.actuator_begin(i))/20000;
                    end 
                    obj.state_index_next = int32(1);
                    obj.op_cnt = 0;
                % to zero
                % get the target position
                elseif obj.state_index_next == int32(1)     
                    obj.state_index = int32(1);
                    if obj.op_cnt > 20000.5          %reach zero 
                        obj.IK_ini(1) = FK_r_l(1,1);obj.IK_ini(2) = FK_r_l(2,1);obj.IK_ini(3) = FK_r_l(3,1); %FK_r_l size:7*2 IK_pre:size:6*1
                        obj.IK_ini(4) = FK_r_l(1,2);obj.IK_ini(5) = FK_r_l(2,2);obj.IK_ini(6) = FK_r_l(3,2);
                        if abs(flag_p0) < 0.1                     
                            obj.state_index_next = int32(2);
                            obj.op_cnt = 0;  
                        end
                    else
                        for i = 1:10
                            obj.actor_dst_zero(i) = obj.actuator_begin(i)+obj.actuator_inc(i)*obj.op_cnt;
                        end
                        obj.op_cnt = obj.op_cnt + 1;                        
                    end
                % to the target position
                % get the parameter of next step (squat, march, walk)
                elseif obj.state_index_next == int32(2)   
                    obj.state_index = int32(2);
                    %reset
                    if obj.reset_num < obj.reset_num_tgt
                        obj.reset_num = obj.reset_num + 1;
                        for i = 1:6
                            obj.IK_tgt(i) = IK_tgt(i);
                        end
                        obj.flag_last_step = 0;  
                        obj.flag_pid_Ena = 0;
                    end
                    %to IK target position
                    for i = 1:6
                        obj.IK_dst(i) = Ramp(obj.IK_tgt(i), obj.IK_ini(i), obj.IK_tgt_inc(i));
                        obj.IK_ini(i) = obj.IK_dst(i);
                    end            
                    obj.op_cnt = obj.op_cnt + 1;  
                    % get the parameter of next step (squat, march, walk)
                    if obj.op_cnt > 15*2000 && obj.squat_num < obj.squat_num_tgt && (abs(op_mode - 0) < 0.1)% wait 15s before squat 
                        obj.state_index_next = int32(3);
                        obj.op_cnt = 0;
                        obj.squat_cnt_max = squat(7)*2000;  
                        obj.squat_num = obj.squat_num + 1;
                        for i = 1:6
                            obj.squat_tgt(i) = Limit(obj.IK_ini(i) + squat(i), obj.IK_limit_low(i), obj.IK_limit_up(i));
                        end
                        obj.squat_tgt(3) = 0.0;
                        obj.squat_tgt(6) = 0.0;
                    elseif obj.op_cnt >2*2000 && obj.march_num < obj.march_num_tgt && (abs(op_mode - 1) < 0.1 || abs(op_mode - 3) < 0.1) % wait 2s before march or walk
                        obj.state_index_next = int32(4);
                        obj.op_cnt = 0;
                        obj.march_num = obj.march_num + 1;  
                         for i = 1:2        % 1: right, 2: left
                             for j = 1:2    % 1:stand_leg 2:wave_leg
                                obj.Amp_z_base(i,j) = Limit_delta(march((i-1)*2+j), obj.IK_ini(2+(i-1)*3), obj.IK_limit_low(2+(i-1)*3), obj.IK_limit_up(2+(i-1)*3));
                             end
                         end
                        obj.t0_step = t;
                        obj.flag_1step_op = 1;
                        obj.march_first_time = 1;
                        obj.state_march_plan = -1;
                        obj.state_march_real = 0;
                        %judge the first sw leg
                        if abs(march(5) - 1) < 0.1 
                            obj.stance_leg = -1; % stance_leg = -1, left stance
                            obj.leg_stat(1,1) = 0;%right sw
                            obj.leg_stat(2,1) = 1;  %left st  
                        else
                            obj.stance_leg = 1; % right stance
                            obj.leg_stat(1,1) = 1;%right st
                            obj.leg_stat(2,1) = 0; %left sw
                        end                  
                        %march interop phase
                        LL_des = 0;
                        Step_height = 1;
                        obj.march_phase = Limit(march(8), 0.2, 0.8);
                        obj.coeff = Get_traj_coeff(Step_height,LL_des,obj.march_phase);
                    end
                % squat
                elseif obj.state_index_next == int32(3)
                    obj.state_index = int32(3);
                    %add here  
                    for i = 1:6
                        obj.IK_dst(i) = (obj.IK_ini(i)+obj.squat_tgt(i))/2 + (obj.IK_ini(i)-obj.squat_tgt(i))/2 * cos(obj.op_cnt*pi/(obj.squat_cnt_max/2));%squat interop
                    end                        
                    obj.op_cnt = obj.op_cnt + 1;                                                                    
                    if obj.op_cnt > obj.squat_cnt_max
                        obj.state_index_next = int32(2);
                        obj.op_cnt = 0;
                        for i = 1:6
                            obj.IK_ini(i) = obj.IK_dst(i);
                        end
                    end 
                % walk  
                elseif obj.state_index_next == int32(4)
                    obj.state_index = int32(4);  
                    %before 1step
                    if abs(t - obj.t0_step) < 2*march(6)
                        if abs(obj.stance_leg - 1) < 0.1
                            obj.IK_ry(:,1) = march(14)*sin((t - obj.t0_step)/2/march(6)*pi);%right st
                            obj.IK_ry(:,2) = 0;
                        else
                            obj.IK_ry(:,1) = -1*march(14)*sin((t - obj.t0_step)/2/march(6)*pi);%left st
                            obj.IK_ry(:,2) = 0;
                        end
                        if abs(t - obj.t0_step) > march(6)
                            obj.flag_1step_op = 0;                            
                        end
                        obj.IK_ry(:,2) = 0;
                    else
                        obj.IK_ry = zeros(2,2);
                    end
                    %start march
                    if abs(obj.flag_1step_op) < 0.1
                        if obj.march_first_time 
                            obj.t0 = t;
                            obj.t1 = t;
                            if abs(march(5) - 1) < 0.5%right first sw
                                obj.t2(2) = t - march(7);
                            elseif abs(march(5) - 2) < 0.5%left first sw
                                obj.t2(1) = t - march(7);
                            end
                            obj.march_first_time = 0;
                            obj.step_cnt = 1;
                        end
                        % change leg
                        % time collection
                        % s generation
                        if t - obj.t1 > (march(6)+march(7))
                            obj.stance_leg = - obj.stance_leg;
                            obj.step_cnt =  obj.step_cnt + 1;
                            obj.t1 = t;
                        end
                        obj.s_pre = obj.s;
                        obj.s = (t-obj.t1 )/march(6);            
                        for i = 1:2  %1:right 2:left                         
                            if abs(obj.leg_stat(i)-1) < 0.1     %stand
                                if  obj.s - obj.s_pre < 0 && t - obj.t2(i) > (march(6) + 4*obj.Ts)%stand -> swing
                                    obj.leg_stat(i) = 0;
                                    obj.s_rl(i) = 0;
                                else
                                    obj.s_rl(i) = (t-obj.t2(i))/(march(6)+2*march(7));
                                end
                            else                                         %swing
                                if t - obj.t1 > march(6)         %swing -> stand
                                    obj.t2(i) = t;
                                    obj.leg_stat(i) = 1;
                                    obj.s_rl(i) = 0;
                                else
                                    obj.s_rl(i) = obj.s;
                                end
                            end
                        end                         

                        % x stride order
                        if abs(obj.forward - 1) < 0.1
                            obj.stride_tgt = march(13)*(march(6)+march(7));%forward
                        elseif abs(obj.forward + 1) < 0.1
                            obj.stride_tgt = -1*march(13)*(march(6)+march(7))*0.5;%backward
                        else
                            obj.stride_tgt = 0;%-1*0.1*(march(6)+march(7));%static - 0.1*(march(4)+march(6));
                        end
                        % x stride Ramp
                        time_stride = 1.5;%s
                        inc_stride = march(13)*(march(6)+march(7))/time_stride*obj.Ts;  
                        obj.stride = Ramp(obj.stride_tgt, obj.stride, inc_stride);

                        % add xp_pid after x stride (Ramp) reach 0 
                        % xp_pid ref change
                        if abs(obj.stride)>1e-5 %walk
                            obj.Amp_x_base = obj.stride;
                            obj.flag_march = 0;
                        else                                                        %march
                            if abs(obj.flag_march) < 0.1
                                obj.walk_p0_w = [obj.x_filt_Est(8);0;0];%world
                            end
                            obj.Amp_x_base = obj.stride + pid_out(4,11);
                            obj.flag_march = 1;
                        end

                        % x stride limit                        
                        for i = [1,4]
                            obj.Amp_x_base = Limit_delta(obj.Amp_x_base, obj.IK_ini(i), obj.IK_limit_low(i), obj.IK_limit_up(i));                             
                        end

                        %Turn: yaw_pid ref calculation
                        if abs(obj.turn - 1) < 0.1 
                            inc_yaw = 0;%-90/180*pi/15*obj.Ts; 
                            obj.Amp_z_rota= [march(12);0];
                        elseif abs(obj.turn + 1) < 0.1 
                            inc_yaw = 0;%90/180*pi/15*obj.Ts;
                            obj.Amp_z_rota = [0;march(11)];    
                        else
                            inc_yaw = 0;
                            obj.Amp_z_rota = 0;                                  
                        end                        

                        obj.imu_yaw0 = obj.imu_yaw0 + inc_yaw;    
                        obj.walk_p0 = (R3Dz(obj.imu_yaw0))'*(obj.Roff)'*obj.walk_p0_w; %xp_pid ref after walk
                        obj.walk_p0(2) = 0;                          
                        %Turn: delta x 
                        wide_yaw = 0.26;
                        Amp_x_rota_tgt = 0*inc_yaw/obj.Ts*(march(6)+march(7))*wide_yaw/2; 
                        time_x_rota = 0.5;%s
                        inc_x_rota = abs(Amp_x_rota_tgt/time_x_rota*obj.Ts);
                        obj.Amp_x_rota = Ramp(Amp_x_rota_tgt, obj.Amp_x_rota, inc_x_rota);
                        %Turn: ???
                        h_cen = 0.9;
                        g = 9.8;
                        v_rota = [obj.v_est(1);obj.v_est(2);0];
                        w_rota = [0;0;inc_yaw/obj.Ts];
                        obj.pos_rota = 1/2*sqrt(h_cen/g)*cross(v_rota,w_rota);  

                        % x z direction (walk)
                        deadzone_ry =  deg2rad(0.5);
                        for i = 1:2 
                            roll_deta = dead_zone(obj.motor_position(1 + (i-1)*5), deadzone_ry);
                            yaw_deta = dead_zone(-actor_dst_rlt(2 + (i-1)*5), deadzone_ry);
                            obj.walk_xzdir_w(:,i) = R3Dx(roll_deta)*R3Dz(yaw_deta)*[0 -1 0]';
                        end                                                 

                        % x z calculation 
                        for i = 1:2                                   % 1:right st 2:left st
                            if abs(obj.leg_stat(i)-1) < 0.1     % stand
                                Index_z_base = 1;
                                x_dir = 1;
                            else                                         % swing
                                Index_z_base = 2;
                                x_dir = -1;
                                obj.Amp_z_rota(i) = 0;
                                obj.Amp_x_rota = 0;
                            end
                            if obj.s < obj.march_phase
                                obj.IK_dst_z(i) = (obj.Amp_z_base(i,Index_z_base) + obj.Amp_z_rota(i))*(obj.coeff(1,1) + obj.coeff(2,1)*obj.s + obj.coeff(3,1)*obj.s^2 + obj.coeff(4,1)*obj.s^3);
                            elseif  obj.s < 1
                                obj.IK_dst_z(i) = (obj.Amp_z_base(i,Index_z_base) + obj.Amp_z_rota(i))*(obj.coeff(1,2)+ obj.coeff(2,2)*(obj.s-obj.march_phase) + obj.coeff(3,2)*(obj.s-obj.march_phase)^2 + obj.coeff(4,2)*(obj.s-obj.march_phase)^3);
                            else
                                obj.IK_dst_z(i) = 0.0; % two leg stand 
                            end
                            obj.IK_dst_x(i) = (x_dir*obj.Amp_x_base + (1.5-i)*2*obj.Amp_x_rota)*0.5*cos(pi*obj.s_rl(i));%1:stand leg
                        end

                        %踏步行走状态切换
                        if abs(obj.stance_leg-(-1))<0.1 %left stance
                            if t - obj.t1 < march(6)
                                obj.state_march_plan = 1;  
                            else
                                obj.state_march_plan = 3;  
                            end
                        end
                        if abs(obj.stance_leg-(1))<0.1 %right stance
                            if t - obj.t1 < march(6)
                                obj.state_march_plan = 2;
                            else
                                obj.state_march_plan = 4; 
                            end
                        end 

                        %stand judge
%                         if FK_r_l(7,1) <100 && FK_r_l(7,2) <100  %
%                             obj.state_march_plan = -1;
%                         end
                        if obj.s < 0.1 
                            obj.assign_flag = 1;
                        end
                        if abs(obj.assign_flag - 1) < 0.1
                            obj.state_march_real = obj.state_march_plan;
                        end
                        if FK_r_l(7,1) > 200 && (abs(obj.state_march_plan - 1)<0.1 || abs(obj.state_march_plan - 3)<0.1 ) && obj.s > 0.6
                            obj.state_march_real = 3;
                            obj.assign_flag = 0;
                        end
                        if FK_r_l(7,2) > 200 && (abs(obj.state_march_plan - 2)<0.1 || abs(obj.state_march_plan - 4)<0.1 ) && obj.s > 0.6
                            obj.state_march_real = 4;
                            obj.assign_flag = 0;
                        end
                        obj.IK_dst(1) = obj.IK_ini(1) + obj.IK_dst_x(1);
                        obj.IK_dst(2) = obj.IK_ini(2) + obj.IK_dst_z(1);
                        obj.IK_dst(4) = obj.IK_ini(4) + obj.IK_dst_x(2);
                        obj.IK_dst(5) = obj.IK_ini(5) + obj.IK_dst_z(2);
                        obj.IK_dst(3) = obj.IK_ini(3);
                        obj.IK_dst(6) = obj.IK_ini(6);
                        %踏步控制停止
                        if (abs(obj.start_march) < 0.1 || abs(flag_stop-1) < 0.1)&& obj.flag_stop == 0 
                            obj.flag_stop = 1;
                            obj.march_total_t = (march(6)+march(7))*obj.step_cnt;                        
                        elseif (abs(obj.start_march - 1) < 0.1 && abs(flag_stop) < 0.1) && obj.flag_stop == 0
                            obj.march_total_t = (march(6)+march(7))*march(10);
                        else
                            obj.march_total_t = obj.march_total_t;
                        end
                        %踏步停止后站立
                        if (t - obj.t0) > obj.march_total_t
                            obj.state_index_next = int32(2);


                            obj.stride = 0;
                            obj.Amp_x_base = 0;
                            obj.flag_stop = 0;
                            for i = 1:6
                                obj.IK_ini(i) = obj.IK_dst(i);
                                obj.IK_tgt(i) = obj.IK_dst(i);
                            end
                            obj.state_march_plan = 5;
                            obj.state_march_real = 5;
                        end
                    end 
                end
            end  
%             %------------------待修改！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！
%             if (abs(obj.state_march_real - 1)<0.1 || abs(obj.state_march_real - 3)<0.1  )
%                 obj.v_est = [0.0,-0.3,0.0];
%             elseif (abs(obj.state_march_real - 2)<0.1 || abs(obj.state_march_real - 4)<0.1  )
%                 obj.v_est = [0.0,0.3,0.0];
%             else
%                 obj.v_est = [0.0,0.0,0.0];
%             end
            %%
            %1：obj.state_index is_sto obj.is_op
            %2：obj.state_index is_sto obj.is_op 
            %3：obj.state_index is_sto obj.is_op  obj.pre_state state_code   
            TraOutput.motor_dir = obj.motor_dir;
            TraOutput.motor_position = obj.motor_position;
            TraOutput.motor_position_pas = obj.motor_position_pas;
            TraOutput.motor_velocity = obj.motor_velocity;
            TraOutput.motor_velocity_pas = obj.motor_velocity_pas;
            TraOutput.motor_real_current = obj.motor_real_current;
            TraOutput.motor_rated_current = obj.motor_rated_current;
            TraOutput.motor_voltage = obj.motor_voltage;
            TraOutput.actor_dst_zero = obj.actor_dst_zero;
            TraOutput.IK_dst = obj.IK_dst';
            TraOutput.eulZYX = obj.eulZYX';
            TraOutput.state_index = int32(obj.state_index);
            TraOutput.etherCatStatus = [int32(cassie_data.pelvis.targetPc.etherCatStatus(1));int32(cassie_data.pelvis.targetPc.etherCatStatus(2))];
            TraOutput.is_op = obj.is_op;
            TraOutput.state_march_plan = obj.state_march_plan;       
            TraOutput.state_march_real = obj.state_march_real;   
            TraOutput.v_est = obj.v_est;
            TraOutput.p_est = obj.p_est;
            TraOutput.imu_org = [obj.imu_org;obj.pCoM;obj.vCoM_v2;obj.x_filt_Est(5:7);obj.x_filt_Est(8:10)];
            TraOutput.s = obj.s;
            TraOutput.march_first_time = obj.march_first_time;
            TraOutput.imu_yaw0 = obj.imu_yaw0;
            TraOutput.s_rl = obj.s_rl;
            TraOutput.yaw_est = obj.x_filt_Est(1:4);
            TraOutput.walk_xv_tgt = obj.stride_tgt/(march(6)+march(7));
            TraOutput.walk_xv_dst = obj.stride/(march(6)+march(7));            
            TraOutput.joystick = zeros(11,1);%joystick;%(2:11);
            TraOutput.motor_stateCode = obj.motor_stateCode;  
            TraOutput.pos_rota = obj.pos_rota;
            TraOutput.walk_p0 = obj.walk_p0;
            TraOutput.flag_march = obj.flag_march;
            TraOutput.eulZYX_multi = obj.eulZYX_multi';
            TraOutput.walk_xzdir_w = obj.walk_xzdir_w;
            TraOutput.FK_r_l = FK_r_l ;
            TraOutput.motor_statusWord = obj.motor_statusWord; 
            TraOutput.flag_last_step = obj.flag_last_step;
            TraOutput.ErrorCode = obj.ErrorCode;
            TraOutput.imu_status_word = obj.eulZYX_status_word;
            
%             TraOutput.Enable_ctl.op = obj.op_enable;
%             TraOutput.Enable_ctl.pid = obj.pid_enable;
%             TraOutput.Enable_ctl.march = obj.start_march;
%             TraOutput.Enable_ctl.forward = obj.forward;
%             TraOutput.Enable_ctl.turn = obj.turn;
%             TraOutput.Enable_ctl.move = obj.move;
%             TraOutput.Enable_ctl.ES = obj.ES;
%             TraOutput.Enable_ctl.rise =  obj.start_squat;           
%             TraOutput.Enable_ctl.reset = obj.reset_position;
%             TraOutput.Enable_ctl.fail_safe = cassie_data.pelvis.remote.fail_safe;
%             TraOutput.Enable_ctl.frame_lost = cassie_data.pelvis.remote.frame_lost;
            TraOutput.con_remote = [obj.op_enable;obj.pid_enable;obj.start_march;obj.forward;obj.turn;obj.move;obj.ES;obj.start_squat;cassie_data.pelvis.remote.fail_safe;cassie_data.pelvis.remote.frame_lost;];
            TraOutput.march_num_tgt = obj.march_num_tgt;
            TraOutput.reset_num_tgt = obj.reset_num_tgt;  
            TraOutput.battery = obj.battery;
            TraOutput.IK_ry = obj.IK_ry;              
            TraOutput.step_cnt = obj.step_cnt;  
            eulZYX = obj.eulZYX';
            IK_dst = obj.IK_dst';
            march_temp = [obj.Amp_x_base; 0.0; obj.Amp_x_rota];
            yaw0 = obj.imu_yaw0;
            eulZYX_single = obj.eulZYX_single';
            pos_rota = obj.pos_rota;
            t_pid_Ena = obj.t_pid_Ena;
            flag_pid_Ena = obj.flag_pid_Ena;
            controller = [cassie_data.pelvis.remote.op;              cassie_data.pelvis.remote.pid;                      cassie_data.pelvis.remote.march; ...
                                cassie_data.pelvis.remote.forward;      cassie_data.pelvis.remote.turn;                    cassie_data.pelvis.remote.move; ...
                                cassie_data.pelvis.remote.ES;              cassie_data.pelvis.remote.rise;      cassie_data.pelvis.remote.fail_safe; ...
                                cassie_data.pelvis.remote.frame_lost];
            flag_battery = obj.flag_battery;
        end

        function resetImpl(obj)
            % Initialize / reset discrete-state properties
        end
        
        
        function [name_1,name_2,name_3,name_4,name_5,name_6,name_7,name_8,name_9,name_10,name_11] = getOutputNamesImpl(~)
            %GETOUTPUTNAMESIMPL Return output port names for System block
            name_1 = 'TrajectotyOutput';
            name_2 = 'eulZYX';
            name_3 = 'IK_dst';
            name_4 = 'march_temp';
            name_5 = 'yaw0';
            name_6 = 'eulZYX_single';
            name_7 = 'pos_rota';
            name_8 = 't_pid_Ena';
            name_9 = 'flag_pid_Ena';
            name_10 = 'controller'; 
            name_11 = 'flag_battery'; 
        end % getOutputNamesImpl
        % PROPAGATES CLASS METHODS ============================================
        function [out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11] = getOutputSizeImpl(~)
            %GETOUTPUTSIZEIMPL Get sizes of output ports.          
            out_1 = [1, 1];
            out_2 = [3, 1];
            out_3 = [6, 1];
            out_4 = [3, 1];
            out_5 = [1, 1];
            out_6 = [3, 1];
            out_7 = [3, 1];
            out_8 = [1, 1];
            out_9 = [1, 1];
            out_10 = [10, 1];
            out_11 = [1, 1];
        end % getOutputSizeImpl
        
        function [out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11] = getOutputDataTypeImpl(~)
            %GETOUTPUTDATATYPEIMPL Get data types of output ports.           
            out_1 = 'TrajectoryBus';
            out_2 = 'double';
            out_3 = 'double';
            out_4 = 'double';
            out_5 = 'double';
            out_6 = 'double';
            out_7 = 'double';
            out_8 = 'double';
            out_9 = 'double';
            out_10 = 'double';
            out_11 = 'double';
        end % getOutputDataTypeImpl
        
        function [out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11] = isOutputComplexImpl(~) 
            %ISOUTPUTCOMPLEXIMPL Complexity of output ports.         
            out_1 = false;
            out_2 = false;
            out_3 = false;
            out_4 = false;
            out_5 = false;
            out_6 = false;
            out_7 = false;
            out_8 = false;
            out_9 = false;
            out_10 = false;
            out_11 = false;
        end % isOutputComplexImpl
        
        function [out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11] = isOutputFixedSizeImpl(~)
            %ISOUTPUTFIXEDSIZEIMPL Fixed-size or variable-size output ports.
            out_1 = true;
            out_2 = true;
            out_3 = true;
            out_4 = true;
            out_5 = true;
            out_6 = true;
            out_7 = true;
            out_8 = true;
            out_9 = true;
            out_10 = true;
            out_11 = true;
        end % isOutputFixedSizeImpl
    end
     end
