classdef ControllerS < matlab.System & matlab.system.mixin.Propagates & matlab.system.mixin.SampleTime
    % controller class for simulation
    %
    % This template includes the minimum set of functions required
    % to define a System object with discrete state.

    % Public, tunable properties
    properties
        Kp_toe_stand;
        Kd_toe_stand;
        Kp_lateral_stand;
        Kd_lateral_stand;
        Kp_abduction_stand;
        Kd_abduction_stand;
        Kp_thigh_stand;
        Kd_thigh_stand;
        Kp_knee_stand;
        Kd_knee_stand;
        Kp_rotation_stand;
        Kd_rotation_stand;
        
        
        
        joint_filter_choice;
        
        fil_para_x;
        fil_para_y;
        
        fil_para_2;
        fil_para_3;
        fil_para_4;
        fil_para_5;
        
        stance_thre_ub;
        stance_thre_lb;
        
        Kp_pitch;
        Kd_pitch;
        Kp_roll;
        Kd_roll;
        Kp_yaw;
        Kd_yaw;
        
        Kp_abduction;
        Kp_rotation;
        Kp_thigh;
        Kp_knee;
        Kp_toe;
        
        Kd_abduction;
        Kd_rotation;
        Kd_thigh;
        Kd_knee;
        Kd_toe;
        
        shift_time;
        shift_distance;
        standing_switch_time;
        
        lateral_velocity_weight;
        init_lateral_velocity;
        
        force_step_end_s
        
        Kfs_p;
        Kfl_p;
        Kfs_d;
        Kfl_d;
        
        abduction_inward_gain;
        toe_tilt_angle;
        
        final_sw_abduction;
        final_st_abduction;
        pre_final_sw_abduction;
        
        u_abduction_cp;
        u_abduction_swing_cp;
        u_thigh_cp;
        u_knee_cp;
    end
    
    properties (Access = private, Constant)
        TorqueLimits = repmat([112.5;112.5;195.2;195.2;45],[2,1]);
        ActuatorLimits = [-0.2618, 0.3927;    -0.3927, 0.3927;    -0.8727, 1.3963;    -2.8623, -0.7330;   -2.4435, -0.5236; ...
            -0.3927, 0.2618;    -0.3927, 0.3927;    -0.8727, 1.3963;    -2.8623, -0.7330;   -2.4435, -0.5236];
        Ks1 = 1800;
        Ks2 = 1600;
    end

    % Pre-computed constants
    properties(Access = private)
        Kp = zeros(10,1);
        Kd = zeros(10,1);
        stanceLeg = 1;
        begin = 0;
        Switch = 0; % if switching stance leg
        walking_ini = 0;
        step_end = 0;
        task = 2; % 0 is do nothing; 1 is walking; 2 is standing up; 3 is test
        task_prev = 0;
        task_next = 0;
        t0 = 0; % the time when starting a step
        t_prev = 0;
        t1 = 0;
        s1 = 0; % transition time for stand to walk
        t2 = 0;
        s2 = 0; % transition time for walk to stand
        u_prev = zeros(10,1); % u in previous iteration
        u_last = zeros(10,1);% u in last step 
        s_prev = 0;
        s_unsat_prev = 0;
        dqy_b_start = 0;
        gaitparams = struct( 'HAlpha',zeros(10,6),'ct',0);
        
        foot_placement = 1;
        pitch_torso_control = 1;
        roll_torso_control = 1;
        stance_passive = 1;
        knee_com = 1;
        abduction_com = 1;
        thigh_compensation = 1;
        abduction_swing_com = 0;
        reduce_impact = 1;
        keep_direction = 1;
        
        to_turn = 0;
        to_turn_prev = 1;
        tg_yaw = 0;
        
        tg_velocity_x = 0;
        
        uHip_gravity_2 = 1.2; % for swing leg
        dqx_b_fil = 0;
        dqy_b_fil = 0;
        dqz_b_fil = 0;
        dqx_fil = 0;
        dqy_fil = 0;
        dqz_fil = 0;
        com_vel_x_fil = 0;
        com_vel_y_fil = 0;
        com_vel_z_fil = 0;
        com_pos_x_fil = 0;
        com_pos_y_fil = 0;
        com_pos_z_fil = 0;
        
        
        pitch_des_fil = 0;
        tg_velocity_x_fil = 0;
        lateral_move_fil = 0;
        
        LL_des_fil = 0.7;
        roll_des_fil = 0;
        LL_des = 0.7;
        dLL_des_fil = 0;
        P_feedback_toe_fil = 0;
        
        hd = zeros(10,1);
        dhd = zeros(10,1);
        hd_joint = zeros(10,1);
        dhd_joint = zeros(10,1);
        h0 = zeros(10,1);
        dh0 = zeros(10,1);
        h0_joint = zeros(10,1);
        dh0_joint = zeros(10,1);
        y = zeros(10,1);
        dy = zeros(10,1);
        y_joint = zeros(10,1);
        dy_joint = zeros(10,1);
        
        hd_prev = zeros(10,1);
        dhd_prev = zeros(10,1);
        h0_prev = zeros(10,1);
        dh0_prev = zeros(10,1);
        y_prev = zeros(10,1);
        dy_prev = zeros(10,1);
        hd_joint_prev = zeros(10,1);
        dhd_joint_prev = zeros(10,1);
        h0_joint_prev = zeros(10,1);
        dh0_joint_prev = zeros(10,1);
        y_joint_prev = zeros(10,1);
        dy_joint_prev = zeros(10,1);

        hd_last = zeros(10,1);
        dhd_last = zeros(10,1);
        
        v_final = zeros(2,1);
        v_final_avgy = 0;
        tp_last = 0; % how long does last step take
        
        sagittal_move = 0;
        lateral_move = 0;
        rotation_move = 0;
        
        to_stand_step_count = 0;
    end
    
    properties (Access = protected)
        sagittal_offset = - 0.01;
        %sagittal_offset = -0.014;
        lateral_offset = 0;
        turning_offset = 0;
        %stand_offset = -0.014;
        stand_offset = 0.01;

        Toe_thigh_offset = 1.0996;
        safe_TorqueLimits = repmat([125;125;166;166;80],[2,1]);
        
        standing_abduction_offset_L = 0.06;
        standing_abduction_offset_R = -0.06;
        
        bezier_degree = 5;
    end

    methods(Access = protected)
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
        end

        function [cassie_input, cassie_data_log] = stepImpl(obj, t, cassie_data, encoder_fil, GaitLibrary)
            % Implement algorithm. Calculate y as a function of input u and
            % discrete states.
            cassie_input =  PreFunctionss.ConstructDataS;
            cassie_data_log = PreFunctionss.Construct_Data_S;
            RadioButton = Tool.RadioChannelToButton(cassie_data.pelvis.RC);
            u = zeros(10,1);
            
            obj.Kp = repmat([obj.Kp_abduction;obj.Kp_rotation;obj.Kp_thigh;obj.Kp_knee; obj.Kp_toe],[2,1]);
            obj.Kd = repmat([obj.Kd_abduction;obj.Kd_rotation;obj.Kd_thigh;obj.Kd_knee; obj.Kd_toe],[2,1]);   
            if t > 0.1
                obj.begin = 1;
            end
            
            % Receive command signal from RC radio
            if RadioButton.LVA < 0 % To prevent walking backward too fast
                p = 0.5;
            else
                p = 1;
            end
            obj.tg_velocity_x = p* RadioButton.LVA;
            obj.tg_velocity_x_fil = Tool.first_order_filter(obj.tg_velocity_x_fil, obj.tg_velocity_x, 0.0003);
            obj.lateral_move = 0.015*RadioButton.LHA;
            obj.lateral_move_fil = Tool.first_order_filter(obj.lateral_move_fil, obj.lateral_move, 0.0003);
            
            % RHA in walking mode is yaw , in standing up mode is roll
            obj.rotation_move = -0.2*RadioButton.RHA;
            if abs(RadioButton.RHA)<0.1
                obj.to_turn = -1;
            else
                obj.to_turn = 1;
            end
            
            % RadioButton.LSA should big than -0.7
            obj.LL_des = 0.68+RadioButton.LSA*0.2;
            obj.LL_des_fil = Tool.first_order_filter(obj.LL_des_fil, obj.LL_des, obj.fil_para_4);
            
            pitch_des = median([RadioButton.RVA,-0.5,0.5]);
            obj.pitch_des_fil = Tool.first_order_filter(obj.pitch_des_fil, pitch_des, 0.0005);
            
            roll_des = RadioButton.RHA*0.1;
            obj.roll_des_fil = Tool.first_order_filter(obj.roll_des_fil, roll_des, 0.0003); 
            
            
            if RadioButton.SBA == 1
                obj.task_next = 1;
            else
                obj.task_next = 2;
            end
            
            if obj.task_next == 2
                obj.t1 = 0;
                obj.s1 = 0;
            end
            
            if obj.task_next ==1 && obj.s1 > 1
                obj.task = obj.task_next;
                obj.P_feedback_toe_fil = 0;
            end
            
            if obj.task_next == 2 && obj.step_end
                obj.task =2;
                obj.step_end = 0;
                obj.t2 = 0; 
                obj.u_last = obj.u_prev;
            end
            
            % main
            if t > 0.1 && obj.begin == 1
                
                [qyaw, qpitch, qroll, dqyaw, dqpitch, dqroll] = IMU_to_Euler_v2(cassie_data.pelvis.IMU.orientation, cassie_data.pelvis.IMU.angularVelocity);
                
                q_abduction_R = cassie_data.rightLeg.hipRollDrive.position;
                q_rotation_R = cassie_data.rightLeg.hipYawDrive.position;
                q_thigh_R = cassie_data.rightLeg.hipPitchDrive.position;
                q_thigh_knee_R = cassie_data.rightLeg.kneeDrive.position;
                q_knee_shin_R = cassie_data.rightLeg.shinJoint.position;
                q_shin_tarsus_R =  cassie_data.rightLeg.tarsusJoint.position;
                q_toe_R = cassie_data.rightLeg.footDrive.position;
                
                q_abduction_L = cassie_data.leftLeg.hipRollDrive.position;
                q_rotation_L = cassie_data.leftLeg.hipYawDrive.position;
                q_thigh_L = cassie_data.leftLeg.hipPitchDrive.position;
                q_thigh_knee_L = cassie_data.leftLeg.kneeDrive.position;
                q_knee_shin_L = cassie_data.leftLeg.shinJoint.position;
                q_shin_tarsus_L =  cassie_data.leftLeg.tarsusJoint.position;
                q_toe_L = cassie_data.leftLeg.footDrive.position;
                
%                 qaL = [q_abduction_L, q_rotation_L, q_thigh_L, q_thigh_knee_L, q_toe_L];
%                 qjL = [q_knee_shin_L, q_shin_tarsus_L];
%                 
%                 qaR = [q_abduction_R, q_rotation_R, q_thigh_R, q_thigh_knee_R, q_toe_R];
%                 qjR = [q_knee_shin_R, q_shin_tarsus_R];
                
                %qsL = getSpringDeflectionAngle(qaL(4),qjL(1),qjL(2));
                %qsR = getSpringDeflectionAngle(qaR(4),qjR(1),qjR(2));
                qsL = zeros(2,1);
                qsL(1) = q_knee_shin_L;
                qsL(2) = q_knee_shin_L + q_shin_tarsus_L + q_thigh_knee_L - 0.527480387854734;
                qsR = zeros(2,1);
                qsR(1) = q_knee_shin_R;
                qsR(2) = q_knee_shin_R + q_shin_tarsus_R + q_thigh_knee_R - 0.527480387854734;
                
                dq_abduction_R = cassie_data.rightLeg.hipRollDrive.velocity;
                dq_rotation_R = cassie_data.rightLeg.hipYawDrive.velocity;
                dq_thigh_R = cassie_data.rightLeg.hipPitchDrive.velocity;
                dq_thigh_knee_R = cassie_data.rightLeg.kneeDrive.velocity;
                dq_knee_shin_R = cassie_data.rightLeg.shinJoint.velocity;
                dq_shin_tarsus_R =  cassie_data.rightLeg.tarsusJoint.velocity;
                dq_toe_R = cassie_data.rightLeg.footDrive.velocity;
                
                dq_abduction_L = cassie_data.leftLeg.hipRollDrive.velocity;
                dq_rotation_L = cassie_data.leftLeg.hipYawDrive.velocity;
                dq_thigh_L = cassie_data.leftLeg.hipPitchDrive.velocity;
                dq_thigh_knee_L = cassie_data.leftLeg.kneeDrive.velocity;
                dq_knee_shin_L = cassie_data.leftLeg.shinJoint.velocity;
                dq_shin_tarsus_L =  cassie_data.leftLeg.tarsusJoint.velocity;
                dq_toe_L = cassie_data.leftLeg.footDrive.velocity;
                
                qall = [  0;  0;              0;              qyaw;           qpitch;              qroll;
                    q_abduction_R;	q_rotation_R;	q_thigh_R;      q_thigh_knee_R;     q_knee_shin_R;      q_shin_tarsus_R;    q_toe_R;
                    q_abduction_L;	q_rotation_L;	q_thigh_L;      q_thigh_knee_L;     q_knee_shin_L;      q_shin_tarsus_L;    q_toe_L];
                
                dqall = [ 0;  0;              0;              dqyaw;         dqpitch;            dqroll;
                    dq_abduction_R;	dq_rotation_R;	dq_thigh_R;     dq_thigh_knee_R;    dq_knee_shin_R;     dq_shin_tarsus_R;   dq_toe_R;
                    dq_abduction_L;	dq_rotation_L;	dq_thigh_L;     dq_thigh_knee_L;    dq_knee_shin_L;     dq_shin_tarsus_L;   dq_toe_L];
                
                
                obj.h0_joint=[q_abduction_R;	q_rotation_R;	q_thigh_R;   q_thigh_knee_R;   q_toe_R;
                                q_abduction_L;	q_rotation_L;	q_thigh_L;   q_thigh_knee_L;   q_toe_L];
                obj.dh0_joint = [dq_abduction_R;	dq_rotation_R;	dq_thigh_R;     dq_thigh_knee_R;    dq_toe_R
                                 dq_abduction_L;	dq_rotation_L;	dq_thigh_L;     dq_thigh_knee_L;    dq_toe_L];
                if obj.joint_filter_choice == 1 
                    obj.dh0_joint([3,4,5,8,9,10]) = encoder_fil([3,4,7, 10, 11, 14]);
                end
                [ obj.h0, obj.dh0] = get_FK(obj, obj.h0_joint,obj.dh0_joint);
                
                
                % todo: implement
                
                
                if obj.task == 2
                    s_L = 1;
                    s_R = 1;
                    s_LR = [1; 1];
                    %fake
                    GRF_L = [200, 200];
                    GRF_R = [200, 200];
                else
                    [ GRF_L, GRF_R ] = get_GRF(obj,qall,qsR,qsL,0);
                    GRF_v = [GRF_L(2) GRF_R(2)];
                    [ s_L, s_R ] = obj.get_s_LR(GRF_v);
                    s_LR = [s_L; s_R];
                end
                
                if obj.stanceLeg == 1
                    swing_grf = GRF_L(2);
                    stance_grf = GRF_R(2);
                else
                    swing_grf = GRF_R(2);
                    stance_grf = GRF_L(2);
                end
                
                % if not walking in previous moment, reset the current hd
                % to smooth the torque
                if obj.task == 1 && obj.task_prev~=1
                    obj.walking_ini = 0;
                    obj.hd_joint =obj.h0_joint + obj.u_prev./obj.Kp;
                    obj.dhd_joint = obj.dh0_joint;
                    [obj.hd, obj.dhd] = get_FK(obj, obj.hd_joint, obj.dhd_joint);
                end
                
                % its 
                 % If Cassie is standing or turning, swing leg is NOT commanded to maintain the direction of the robot.
                if (obj.to_turn ~=1 && obj.to_turn_prev == 1) || obj.task == 2
                    obj.tg_yaw = qyaw;
                end
                
                
                % what happens when a step end and a new step begin.
                if (obj.s_prev >=0.5 && swing_grf >obj.stance_thre_ub) || (obj.walking_ini == 0 && obj.task == 1 )|| (obj.s_unsat_prev > obj.force_step_end_s && obj.task == 1)
                    
                    % for test only 
                    cassie_data_log.computer_time = 1;
                    
                    obj.stanceLeg = -obj.stanceLeg;
                    if obj.walking_ini == 0
                        obj.stanceLeg = -1; % At the beginning of a step. stanceLeg is always left leg
                    end
                    
                    obj.tp_last = t - obj.t0;
                    obj.t0 = t;
                    obj.t_prev = obj.t0;
                    obj.s_prev = 0;
                    obj.s_unsat_prev = 0;
                    obj.Switch = 1;
                    obj.walking_ini = 1;
                    obj.u_last = obj.u_prev; % u_prev is the torque command in previous iteration, u_last is the torque command at the end of last step
                    
                    % save the velocity data at the end of a step.
                    obj.v_final = [obj.dqx_b_fil; obj.dqy_b_fil];
                    
                    % low pass filter
                    obj.v_final_avgy = (obj.lateral_velocity_weight*obj.dqy_b_fil+(1-obj.lateral_velocity_weight)*obj.dqy_b_start);
                    obj.dqy_b_start = obj.dqy_b_fil;

                    % hybrid invariant
                    obj.hd_last = obj.hd; % save the desired output at the end of a step. It is used to reset the first 2 bezier coefficient in next step to smooth the torque.
                    obj.dhd_last = obj.dhd;
                        
                    %we will check it in future
%                     % if command to stand, decide if should stand ( stand if the last step is left stance and the command is not made during this step or the previous step) 
%                     if obj.task_next == 2 && obj.stanceLeg == 1 && obj.to_stand_step_count >= 1.99
%                         obj.step_end = 1; 
%                     end
%                     % count the steps after command to stand
%                     if obj.task_next == 2 && obj.task ~= 2
%                         obj.to_stand_step_count = obj.to_stand_step_count + 1;
%                     end
%                     if obj.step_end == 1
%                         obj.to_stand_step_count = 0;
%                     end      
                end
                
                obj.gaitparams = ControlPolicy( obj, GaitLibrary, obj.dqx_b_fil );
                s_unsat = obj.s_unsat_prev + (t - obj.t_prev)*obj.gaitparams.ct;
                s = min(s_unsat,1.05);
                
                
                % Generate some bezier curve that can be used later.
                sf_b = [0,0,ones(1,20)];
                s_fast = Tool.bezier(sf_b,s);
                ds_fast = Tool.dbezier(sf_b,s)*obj.gaitparams.ct;             
                sl_b = [0,0,ones(1,4)];
                s_slow = Tool.bezier(sl_b,s);
                ds_slow = Tool.dbezier(sl_b,s)*obj.gaitparams.ct;
                sendl_b = [ones(1,4),0,0];
                send_slow = Tool.bezier(sendl_b,s);
                dsend_slow = Tool.dbezier(sendl_b,s)*obj.gaitparams.ct;
                sendf_b = [ones(1,20),0,0];
                send_fast = Tool.bezier(sendf_b,s);
                dsend_fast = Tool.dbezier(sendf_b,s)*obj.gaitparams.ct;
                
                
                if obj.stanceLeg == 1 % right stanceleg
                    
                    st_abduction = 1;
                    st_rotation = 2;
                    st_thigh = 3;
                    st_knee = 4;
                    st_toe = 5;
                    
                    sw_abduction = 6;
                    sw_rotation = 7;
                    sw_thigh = 8;
                    sw_knee = 9;
                    sw_toe = 10;
                    
                    GRF_st_index = 2;
                    GRF_sw_index = 1;
                    st_index = 2;
                    sw_index = 1;
                    abduction_direction = -1; % when the hip abduct outside, the sign is negative
                    
                    st_LA = st_thigh;
                    st_LL = st_knee;
                    sw_LA = sw_thigh;
                    sw_LL = sw_knee;
                else
                    st_abduction = 6;
                    st_rotation = 7;
                    st_thigh = 8;
                    st_knee = 9;
                    st_toe = 10;
                    
                    sw_abduction = 1;
                    sw_rotation = 2;
                    sw_thigh = 3;
                    sw_knee = 4;
                    sw_toe =5;
                    
                    GRF_st_index = 1;
                    GRF_sw_index = 2;
                    st_index = 1;
                    sw_index = 2;
                    
                    abduction_direction = 1; % when the hip abduct outside, the sign is position
                    st_LA = st_thigh;
                    st_LL = st_knee;
                    sw_LA = sw_thigh;
                    sw_LL = sw_knee;
                end
                
                
                [dqx,dqy,dqz] = get_velocity_v3(obj,qall,dqall); % v1 toe joint; v2 toe bottom; v3 toe back; v4 toe front
                % if the stance leg is off ground, set the velocity be 0 and let the velocity filter do the work
                dqx = s_LR(st_index)*dqx;
                dqy = s_LR(st_index)*dqy;
                dqz = s_LR(st_index)*dqz;
                
                % rotate the velocity to the torso frame ( YAW only!!!)
                Rz = Tool.Angles.Rz(qyaw);
                dq_b = Rz'*[dqx;dqy;dqz];
                dqx_b = dq_b(1);
                dqy_b = dq_b(2);
                dqz_b = dq_b(3);
                
                
                dqall_g = [ dqx;  dqy;              dqz;              dqyaw;         dqpitch;            dqroll;
                            dq_abduction_R;	dq_rotation_R;	dq_thigh_R;  dq_thigh_knee_R; dq_knee_shin_R;  dq_shin_tarsus_R; dq_toe_R;
                            dq_abduction_L;	dq_rotation_L;	dq_thigh_L;  dq_thigh_knee_L; dq_knee_shin_L;  dq_shin_tarsus_L; dq_toe_L];
                
                % These foot velocitiy and position has the assumption that torso xyz is
                % fixed at [0;0;0](but torso velocity is not 0). foot position is the toe joint position. IN THE BODY FRAME!
                [l_foot_v, r_foot_v] = get_feet_velocity(qall,dqall_g);
                [l_foot_p, r_foot_p] = get_feet_position(qall,dqall_g);
                r_foot_v = Rz'*r_foot_v;
                l_foot_v = Rz'*l_foot_v;
                r_foot_p = Rz'*r_foot_p;
                l_foot_p = Rz'*l_foot_p;
                foot_px = [l_foot_p(1); r_foot_p(1)];
                foot_py = [l_foot_p(2);r_foot_p(2)];
                foot_pz = [l_foot_p(3); r_foot_p(3)];
                
                % position and velocity of COM has the assumption that
                % torso position is at origion but velocity is not 0.
                com_pos = pcom_casia_nnn(qall);
                com_pos = com_pos';
                com_vel = vcom_casia_nnn(qall,dqall_g);
                com_pos = Rz'*com_pos;
                com_vel = Rz'*com_vel;
                
                
                
                % filter the velocity
                obj.dqx_fil = Tool.first_order_filter(obj.dqx_fil,dqx,obj.fil_para_x);
                obj.dqy_fil = Tool.first_order_filter(obj.dqy_fil,dqy,obj.fil_para_y);
                obj.dqz_fil = Tool.first_order_filter(obj.dqz_fil,dqz,obj.fil_para_x);
                obj.dqx_b_fil = Tool.first_order_filter(obj.dqx_b_fil,dqx_b,obj.fil_para_x);
                obj.dqy_b_fil = Tool.first_order_filter(obj.dqy_b_fil,dqy_b,obj.fil_para_y);
                obj.dqz_b_fil = Tool.first_order_filter(obj.dqz_b_fil,dqz_b,obj.fil_para_x);
                obj.com_vel_x_fil = Tool.first_order_filter(obj.com_vel_x_fil,com_vel(1),obj.fil_para_2);
                obj.com_vel_y_fil = Tool.first_order_filter(obj.com_vel_y_fil,com_vel(2),obj.fil_para_2);
                obj.com_vel_z_fil = Tool.first_order_filter(obj.com_vel_z_fil,com_vel(3),obj.fil_para_2);
                obj.com_pos_x_fil = Tool.first_order_filter(obj.com_pos_x_fil,com_pos(1),obj.fil_para_3);
                obj.com_pos_y_fil = Tool.first_order_filter(obj.com_pos_y_fil,com_pos(2),obj.fil_para_3);
                obj.com_pos_z_fil = Tool.first_order_filter(obj.com_pos_z_fil,com_pos(3),obj.fil_para_3);
                
                if obj.task == 1 % walking
                    % Compute desired outputs ( here the outputs dose not
                    % include torso orientation. the outputs will be
                    % modified later
                    obj.hd = Tool.bezier(obj.gaitparams.HAlpha,s);
                    obj.dhd = Tool.dbezier(obj.gaitparams.HAlpha,s)*obj.gaitparams.ct;
                    
                    
                    % swing leg foot placement
                    if obj.foot_placement ==1
                        % foot placement in saggital plane + add pitch angle in outputs 
                        obj.hd(sw_LA) = obj.hd(sw_LA)   + (obj.Kfs_p*(obj.dqx_b_fil-obj.tg_velocity_x_fil) + obj.sagittal_offset + obj.Kfs_d*(obj.dqx_b_fil - obj.v_final(1)))*s_slow  + qpitch*s_slow;
                        obj.dhd(sw_LA) = obj.dhd(sw_LA) + (obj.Kfs_p*(obj.dqx_b_fil-obj.tg_velocity_x_fil) + obj.sagittal_offset + obj.Kfs_d*(obj.dqx_b_fil - obj.v_final(1)))*ds_slow + qpitch*ds_slow + dqpitch*s_slow;
                        
                        % foot placement in frontal plane + add roll angle in outputs 
                        dqy_b_avg_1 = (obj.lateral_velocity_weight*obj.dqy_b_fil+(1-obj.lateral_velocity_weight)*obj.dqy_b_start);
                        lateral_ftpl = (obj.Kfl_p*dqy_b_avg_1 + obj.Kfl_d*(dqy_b_avg_1 - obj.v_final_avgy) + abduction_direction*obj.init_lateral_velocity*median([0,1,obj.dqx_b_fil]))*min(1.5*s,1);
                        if sign(lateral_ftpl) == abduction_direction
                            p = 1;
                        else
                            p = obj.abduction_inward_gain;
                        end              
                        obj.hd(sw_abduction) = obj.hd(sw_abduction) +   p * lateral_ftpl * s_slow  + (obj.lateral_offset + obj.lateral_move)*s_slow  - qroll*s_slow ;
                        obj.dhd(sw_abduction) = obj.dhd(sw_abduction) + p * lateral_ftpl * ds_slow + (obj.lateral_offset + obj.lateral_move)*ds_slow - qroll*ds_slow - dqroll*s_slow;
                        
                        % use hip yaw motor on swing leg to maintain the direction ( or not). 
                        if obj.to_turn ~=1 && obj.keep_direction
                            direction_keep_term = median([-0.2,0.2,Tool.wrap2Pi(obj.tg_yaw - qyaw)]);
                            obj.hd(sw_rotation) = obj.hd(sw_rotation) - (direction_keep_term+ obj.turning_offset)*s_slow;
                            obj.dhd(sw_rotation) = obj.dhd(sw_rotation) - (direction_keep_term + obj.turning_offset)*ds_slow;                            
                        else
                            obj.hd(sw_rotation) = obj.hd(sw_rotation) - (obj.rotation_move + obj.turning_offset)*s_slow;
                            obj.dhd(sw_rotation) = obj.dhd(sw_rotation) - (obj.rotation_move + obj.turning_offset)*ds_slow;
                        end

                    end
                    % prevent sw abduction from hitting AR's safety bound
                    obj.hd(sw_abduction) = median([obj.ActuatorLimits(sw_abduction,1) + 0.1,obj.hd(sw_abduction),obj.ActuatorLimits(sw_abduction,2) - 0.1]);
                        
                    % flat the toe ( tilt a little bit)
                    %obj.hd(sw_toe) = - obj.h0_joint(sw_thigh) - deg2rad(30) -deg2rad(50); % 13 is the angle between tarsus and thihg, 50 is the angle of transforming frame on foot.
                    obj.hd(sw_toe) = - obj.h0_joint(sw_thigh) - 0.527480387854734;
                    obj.hd(sw_toe) = obj.hd(sw_toe) + obj.toe_tilt_angle*s_fast;
                    obj.dhd(sw_toe) = 0;
                    obj.hd(st_toe) = obj.h0(st_toe);
                    obj.dhd(st_toe) = obj.dh0(st_toe);
                    

                    % Preparation for standing
%                     if obj.stanceLeg == -1 && obj.to_stand_step_count >=1.99
%                         obj.hd(sw_abduction) = obj.hd(sw_abduction) - abduction_direction * obj.final_sw_abduction * s_slow;
%                         obj.dhd(sw_abduction) = obj.dhd(sw_abduction) - abduction_direction * obj.final_sw_abduction * ds_slow;
%                         obj.hd(st_abduction) = obj.hd(st_abduction) + abduction_direction * obj.final_st_abduction * s_slow;
%                         obj.dhd(st_abduction) = obj.dhd(st_abduction) + abduction_direction * obj.final_st_abduction * ds_slow;
%                     end
%                     if obj.stanceLeg == 1 && obj.to_stand_step_count >=0.99
%                         obj.hd(sw_abduction) = obj.hd(sw_abduction) - abduction_direction * obj.pre_final_sw_abduction * s_slow;
%                         obj.dhd(sw_abduction) = obj.dhd(sw_abduction) - abduction_direction * obj.pre_final_sw_abduction * ds_slow;
%                     end
                    
                    % compute torque 
                    obj.y = obj.h0 - obj.hd;
                    obj.dy = obj.dh0 -obj.dhd;
                    
                    [ obj.hd_joint, obj.dhd_joint] = get_IK(obj,obj.hd,obj.dhd);
                    [ obj.h0_joint, obj.dh0_joint] = get_IK(obj,obj.h0,obj.dh0);
                    
                    % make the stance leg passive
                    if obj.stance_passive == 1
                        obj.hd_joint(st_LA) = obj.h0_joint(st_LA);
                        obj.dhd_joint(st_LA) = 0;
                    end
                    % Save it for resetting bezier ( for the passive stance Leg)
                    [ obj.hd, obj.dhd] = get_FK(obj, obj.hd_joint,obj.dhd_joint);
                    
                    obj.y_joint= obj.h0_joint - obj.hd_joint;
                    obj.dy_joint = obj.dh0_joint - obj.dhd_joint;
                    u = - obj.Kp.*obj.y_joint - obj.Kd.*obj.dy_joint; %not final torque, some compensation for gravity will be added, the torque on stance hip roll and stance hip pitch will be replaced.
                    
                    % Torso Control
                    u_torso_pitch = - obj.Kp_pitch * qpitch - obj.Kd_pitch * dqpitch;
                    u_torso_roll = obj.Kp_roll * qroll + obj.Kd_roll * dqroll;
                    if obj.pitch_torso_control == 1
%                         u(3) = (1 - s_L)*u(3) + s_L*u_torso_pitch;
%                         u(8) = (1 - s_R)*u(8) + s_R*u_torso_pitch;
                        u(3) = (1 - s_R)*u(3) + s_R*u_torso_pitch;
                        u(8) = (1 - s_L)*u(8) + s_L*u_torso_pitch;
                    end
                    if obj.roll_torso_control == 1
%                         u(1) = (1 - s_L)*u(1) + s_L*u_torso_roll;
%                         u(6) = (1 - s_R)*u(6) + s_R*u_torso_roll;
                        u(1) = (1 - s_R)*u(1) + s_R*u_torso_roll;
                        u(6) = (1 - s_L)*u(6) + s_L*u_torso_roll;
                    end
                    
                    % abduction compensation
                    if obj.abduction_com == 1
                        u(st_abduction) = u(st_abduction) + abduction_direction*obj.u_abduction_cp*s_fast;
                        u(sw_abduction) = u(sw_abduction) - abduction_direction*obj.u_abduction_cp*(1-s_fast);
                    end
                    if obj.abduction_swing_com == 1
                        u(st_abduction) = u(st_abduction) + abduction_direction*obj.u_abduction_swing_cp*(1-s_fast);
                        u(sw_abduction) = u(sw_abduction) - abduction_direction*obj.u_abduction_swing_cp*s_fast;
                    end
                    u(sw_abduction) = u(sw_abduction) - abduction_direction*obj.uHip_gravity_2*s_fast;
                    % knee compensation
                    if obj.knee_com == 1
                        u(st_knee) = u(st_knee) + (obj.u_knee_cp)*s_fast*cos(obj.h0(st_thigh));
                        u(sw_knee) = u(sw_knee) + (obj.u_knee_cp)*(1-s_fast);
                    end
                    % thigh_compensation
                    if obj.thigh_compensation == 1
                        u(st_thigh) = u(st_thigh) + obj.u_thigh_cp*s_fast;
                        u(sw_thigh) = u(sw_thigh) + obj.u_thigh_cp*(1-s_fast);
                    end
                    
                    % Construct Data
                    cassie_data_log.hd = obj.hd; 
                    cassie_data_log.dhd = obj.dhd;
                    cassie_data_log.hd_joint = obj.hd_joint;
                    cassie_data_log.dhd_joint = obj.dhd_joint;
                    cassie_data_log.y_joint = obj.y_joint ;
                    cassie_data_log.dy_joint   = obj.dy_joint ;

                end
                
                left_tune = 0;
                right_tune = 0;
                
                if obj.task == 2
                    
                    if obj.task_next == 1
                        obj.t1 = (obj.t1 + (t - obj.t_prev));
                        obj.s1 = obj.t1/obj.shift_time;
                        lateral_shift = obj.shift_distance * obj.s1;
                    else
                        lateral_shift = 0;
                    end
                    
                    left_tune = -max([s_L; s_R]) * (obj.Kp_lateral_stand*(qroll - obj.roll_des_fil - (-lateral_shift))  + obj.Kd_lateral_stand*dqroll);
                    right_tune = max([s_L; s_R]) * (obj.Kp_lateral_stand*(qroll - obj.roll_des_fil - (-lateral_shift)) + obj.Kd_lateral_stand*dqroll);
                    [qthigh_d_L, qknee_d_L ] = ik_v2(obj, obj.pitch_des_fil, min(obj.LL_des_fil+left_tune, 0.9));
                    [qthigh_d_R, qknee_d_R ] = ik_v2(obj, obj.pitch_des_fil, min(obj.LL_des_fil+right_tune, 0.9));
                    [dqthigh_d_L, dqknee_d_L] = ik_v_v2(obj, obj.pitch_des_fil, min(obj.LL_des_fil+left_tune, 0.9), 0, 0);
                    [dqthigh_d_R, dqknee_d_R] = ik_v_v2(obj, obj.pitch_des_fil, min(obj.LL_des_fil+right_tune, 0.9), 0, 0);
                    y_thigh = [obj.h0_joint(3)-qthigh_d_R; obj.h0_joint(8)-qthigh_d_L];
                    dy_thigh = [obj.dh0_joint(3)-dqthigh_d_R; obj.dh0_joint(8)-dqthigh_d_L];
                    y_knee = [obj.h0_joint(4)-qknee_d_R; obj.h0_joint(9)-qknee_d_L];
                    dy_knee = [obj.dh0_joint(4)-dqknee_d_R; obj.dh0_joint(9)-dqknee_d_L];
                    
                    % calculate the torque ( except toe).
                    u([1,6]) = - (obj.Kp_abduction_stand*[obj.h0_joint(1)-obj.standing_abduction_offset_R; obj.h0_joint(6) - (obj.standing_abduction_offset_L)] + obj.Kd_abduction_stand*[obj.dh0_joint(1); obj.dh0_joint(6)]);
                    u([2,7]) = - (obj.Kp_rotation_stand*[obj.h0_joint(2);obj.h0_joint(7)] + obj.Kd_rotation_stand*[obj.dh0_joint(2);obj.dh0_joint(7)]);
                    u([3,8]) = - (obj.Kp_thigh_stand.*y_thigh + obj.Kd_thigh_stand.*dy_thigh);
                    u([4,9]) = - (obj.Kp_knee_stand*y_knee + obj.Kd_knee_stand*dy_knee);
                    
                    % calculate the toe torque
                    P_feedback_toe = ( com_pos(1) - obj.stand_offset- (r_foot_p(1)+l_foot_p(1))/2);
                    obj.P_feedback_toe_fil = Tool.first_order_filter(obj.P_feedback_toe_fil,P_feedback_toe,obj.fil_para_3);
                    u_toe = - (obj.Kp_toe_stand*obj.P_feedback_toe_fil + obj.Kd_toe_stand*( obj.com_vel_x_fil - 0));
                    u([5,10]) = min(s_L,s_R)*u_toe;
                    u([5,10]) = Tool.clamp(u([5,10]),-15, 15);
                    
                    cassie_data_log.y1_joint = obj.h0_joint(5);
                    cassie_data_log.y2_joint = obj.h0_joint(10);
                    cassie_data_log.y3_joint = obj.dh0_joint(5);
                    cassie_data_log.y4_joint = obj.dh0_joint(10);
                    cassie_data_log.y5_joint = obj.h0_joint(4);
                    cassie_data_log.y6_joint = obj.h0_joint(9);
                    cassie_data_log.y7_joint = obj.dh0_joint(4);
                    cassie_data_log.y8_joint = obj.dh0_joint(9);
                    cassie_data_log.left_tune = left_tune;
                    cassie_data_log.right_tune = right_tune;
                end
                
                obj.t_prev = t;
                obj.s_prev = s;
                obj.s_unsat_prev = s_unsat;
                obj.task_prev = obj.task;
                obj.u_prev = u;
                obj.hd_prev = obj.hd;
                obj.dhd_prev = obj.dhd;
                obj.h0_prev = obj.h0;
                obj.dh0_prev = obj.dh0;
                obj.y_prev = obj.y;
                obj.dy_prev = obj.dy;
                obj.hd_joint_prev = obj.hd_joint;
                obj.dhd_joint_prev = obj.dhd_joint;
                obj.h0_joint_prev = obj.h0_joint;
                obj.dh0_joint_prev = obj.dh0_joint;
                obj.y_joint_prev = obj.y_joint;
                obj.dy_joint_prev = obj.dy_joint;
                obj.to_turn_prev = obj.to_turn;
                
                u = Tool.vector_saturate(u, obj.safe_TorqueLimits, -obj.safe_TorqueLimits);
                
                cassie_input.rightLeg.hipRollDrive.torque = u(1);
                cassie_input.rightLeg.hipYawDrive.torque = u(2);
                cassie_input.rightLeg.hipPitchDrive.torque = u(3);
                cassie_input.rightLeg.kneeDrive.torque = u(4);
                cassie_input.rightLeg.footDrive.torque = u(5);
                cassie_input.leftLeg.hipRollDrive.torque = u(6);
                cassie_input.leftLeg.hipYawDrive.torque = u(7);
                cassie_input.leftLeg.hipPitchDrive.torque = u(8);
                cassie_input.leftLeg.kneeDrive.torque = u(9);
                cassie_input.leftLeg.footDrive.torque = u(10);
                
                cassie_data_log.u = u;
                cassie_data_log.h0 = obj.h0;
                cassie_data_log.dh0 = obj.dh0;
                cassie_data_log.h0_joint = obj.h0_joint;
                cassie_data_log.dh0_joint = obj.dh0_joint;
                cassie_data_log.qall = qall;
                cassie_data_log.dqall = dqall;
                cassie_data_log.com_pos = com_pos;
                cassie_data_log.com_pos_x_fil = obj.com_pos_x_fil;
                cassie_data_log.com_pos_y_fil = obj.com_pos_y_fil;
                cassie_data_log.com_pos_z_fil = obj.com_pos_z_fil;
                cassie_data_log.r_foot_p = r_foot_p;
                cassie_data_log.l_foot_p = l_foot_p;
                cassie_data_log.LL_des_fil = obj.LL_des_fil;
                cassie_data_log.d_orient = obj.roll_des_fil;
                cassie_data_log.LL0_R = right_tune;
                cassie_data_log.LL0_L = left_tune;
                cassie_data_log.qsR = qsR;
                cassie_data_log.qsL = qsL;
                cassie_data_log.d_torso_angle = [qroll; qpitch;qyaw];
                cassie_data_log.dd_torso_angle = [dqroll; dqpitch;dqyaw];
                cassie_data_log.s_LR = s_LR;
                
                cassie_data_log.torso_vx = dqx;
                cassie_data_log.torso_vy = dqy;
                cassie_data_log.torso_vz = dqz;
                cassie_data_log.torso_vx_b = dqx_b;
                cassie_data_log.torso_vy_b = dqy_b;
                cassie_data_log.torso_vz_b = dqz_b;
                cassie_data_log.torso_vx_fil = obj.dqx_fil;
                cassie_data_log.torso_vy_fil = obj.dqy_fil;
                cassie_data_log.torso_vz_fil = obj.dqz_fil;
                cassie_data_log.torso_vx_b_fil = obj.dqx_b_fil;
                cassie_data_log.torso_vy_b_fil = obj.dqy_b_fil;
                cassie_data_log.torso_vz_b_fil = obj.dqz_b_fil;
                cassie_data_log.com_vel_x_fil = obj.com_vel_x_fil;
                cassie_data_log.com_vel_y_fil = obj.com_vel_y_fil;
                cassie_data_log.com_vel_z_fil = obj.com_vel_z_fil;
                cassie_data_log.com_pos_fil = [obj.com_vel_x_fil;obj.com_vel_y_fil;obj.com_vel_z_fil];
                cassie_data_log.tg_velocity_x = obj.tg_velocity_x;
                cassie_data_log.task = obj.task;
                cassie_data_log.s = s;
                cassie_data_log.s_sw = obj.s1;
            end
            
            
            
        end

        function resetImpl(obj)
            % Initialize / reset discrete-state properties
        end
        
        function [dqx,dqy,dqz] = get_velocity_v3(obj,q,dq)
            if obj.stanceLeg == 1
                J = Jp_RightToeBack(q);
                range = 7:13;
            else
                range = 14:20;
                J = Jp_LeftToeBack(q);
            end
            v_torso = (-J(:,1:3)^-1)*(J(:,4:6)*dq(4:6)+J(:,range)*dq(range));
            dqx = v_torso(1);
            dqy = v_torso(2);
            dqz = v_torso(3);
        end
        
        function [ hd_output, dhd_output] = get_FK(obj, hd_joint,dhd_joint)
            [ hd_output, dhd_output] = get_FK_v1(obj, hd_joint,dhd_joint);
        end
        
        function [ hd_output, dhd_output] = get_FK_v1(obj, hd_joint,dhd_joint)
            hd_output = hd_joint;
            dhd_output = dhd_joint;
            [hd_output(3), hd_output(4)] = Cassia_FK_LEG(hd_joint(3), hd_joint(4));
            [hd_output(8), hd_output(9)] = Cassia_FK_LEG(hd_joint(8), hd_joint(9));
            [dhd_output(3), dhd_output(4)] = Cassia_FK_V_LEG(hd_joint(3), hd_joint(4), dhd_joint(3), dhd_joint(4));
            [dhd_output(8), dhd_output(9)] = Cassia_FK_V_LEG(hd_joint(8), hd_joint(9), dhd_joint(8), dhd_joint(9));
        end
        
        
        function [q_pitch, q_knee] = ik_v2(obj, la, ll)
            [q_pitch, q_knee] = Cassia_IK_LEG(la, ll);
        end
        
        function [dq_pitch, dq_knee] = ik_v_v2(obj, la, ll, dla, dll)
            [dq_pitch, dq_knee] = Cassia_IK_V_LEG(la, ll, dla, dll);
        end
        
        function [ GRF_L, GRF_R  ] = get_GRF(obj,qall,qsR,qsL,u)
            qall(4) = 0;
            JR = Jp_toe_joint_right(qall);
            JL = Jp_toe_joint_left(qall);
            [Fs1R, Fs2R, Fs1L, Fs2L] = get_spring_force(obj,qsR,qsL);
%             JR_s = JR([1,3],[18,19]);
%             JL_s = JL([1,3],[11,12]);
            JR_s = JR([1,3],[11,12]);
            JL_s = JL([1,3],[18,19]);
            GRF_R = (-JR_s')^-1*[Fs1R+Fs2R; Fs2R];
            GRF_L = (-JL_s')^-1*[Fs1L+Fs2L; Fs2L];
        end
        
        function [Fs1R, Fs2R, Fs1L, Fs2L] = get_spring_force(obj,qsR,qsL)
            Fs1R =- obj.Ks1 * qsR(1);
            Fs2R =- obj.Ks2 * qsR(2);
            Fs1L =- obj.Ks1 * qsL(1);
            Fs2L =- obj.Ks2 * qsL(2);
        end
        
        function [s_L, s_R] = get_s_LR(obj, GRF_v)
            s_L = (GRF_v(1)-obj.stance_thre_lb)/(obj.stance_thre_ub-obj.stance_thre_lb);
            s_R = (GRF_v(2)-obj.stance_thre_lb)/(obj.stance_thre_ub-obj.stance_thre_lb);
            s_L = median([0,1,s_L]);
            s_R = median([0,1,s_R]);
        end
        
        function qs = getSpringDeflectionAngle(obj, knee_motor, knee_joint,ankle_joint)
            qs = zeros(2,1);
            qs(1) = knee_joint;
            qs(2) = knee_motor + knee_joint + ankle_joint - 0.527480387854734;
        end
        
        function gaitparams = ControlPolicy( obj,GaitLibrary, phi)
            % Saturate interpolation value
            phi = clamp(phi, GaitLibrary.Velocity(1,1), GaitLibrary.Velocity(1,end));
            % Interpolate gaits
            HAlpha_R = interp1(GaitLibrary.Velocity(1,:),GaitLibrary.RightStance.HAlpha, phi);
            HAlpha_L = interp1(GaitLibrary.Velocity(1,:),GaitLibrary.LeftStance.HAlpha, phi);
            ct_R = interp1(GaitLibrary.Velocity(1,:), GaitLibrary.ct, phi);
            ct_L = interp1(GaitLibrary.Velocity(1,:), GaitLibrary.ct, phi);
            if obj.stanceLeg == 1
                gaitparams.HAlpha = reshape(HAlpha_R,10,6);
                gaitparams.HAlpha(:,1) = obj.hd_last;
                gaitparams.HAlpha(:,2) = obj.hd_last + obj.dhd_last/ct_R/obj.bezier_degree;
                gaitparams.ct = ct_R;
            else
                gaitparams.HAlpha = reshape(HAlpha_L,10,6);
                gaitparams.HAlpha(:,1) = obj.hd_last;
                gaitparams.HAlpha(:,2) = obj.hd_last + obj.dhd_last/ct_L/obj.bezier_degree;
                gaitparams.ct = ct_L;
            end
        end
        
        function [ hd_joint, dhd_joint] = get_IK(obj, hd_output,dhd_output)
            [ hd_joint, dhd_joint] = get_IK_v1(obj, hd_output,dhd_output);
        end
        
        function [ hd_joint, dhd_joint] = get_IK_v1(obj, hd_output,dhd_output)
            hd_joint = hd_output;
            dhd_joint = dhd_output;
            hd_output(4) = min(hd_output(4),1.02);
            hd_output(9) = min(hd_output(9),1.02);
            [hd_joint(3), hd_joint(4)] = Cassia_IK_LEG(hd_output(3), hd_output(4));
            [hd_joint(8), hd_joint(9)] = Cassia_IK_LEG(hd_output(8), hd_output(9));
            [dhd_joint(3), dhd_joint(4)] = Cassia_IK_V_LEG(hd_output(3), hd_output(4), dhd_output(3), dhd_output(4));
            [dhd_joint(8), dhd_joint(9)] = Cassia_IK_V_LEG(hd_output(8), hd_output(9), dhd_output(8), dhd_output(9));
        end

        
        function [name_1, name_2] = getOutputNamesImpl(~)
            %GETOUTPUTNAMESIMPL Return output port names for System block
            name_1 = 'CasiaBBRInputs';
            name_2 = 'log';
        end % getOutputNamesImpl
        % PROPAGATES CLASS METHODS ============================================
        function [out, out2] = getOutputSizeImpl(~)
            %GETOUTPUTSIZEIMPL Get sizes of output ports.
            out = [1, 1];
            out2 = [1, 1];
        end % getOutputSizeImpl
        
        function [out, out2] = getOutputDataTypeImpl(~)
            %GETOUTPUTDATATYPEIMPL Get data types of output ports.
            out = 'CassieInBus';
            out2 = 'cassieDataBus';
        end % getOutputDataTypeImpl
        
        function [out, out2] = isOutputComplexImpl(~) 
            %ISOUTPUTCOMPLEXIMPL Complexity of output ports.
            out = false;
            out2 = false;
        end % isOutputComplexImpl
        
        function [out, out2] = isOutputFixedSizeImpl(~)
            %ISOUTPUTFIXEDSIZEIMPL Fixed-size or variable-size output ports.
            out = true;
            out2 = true;
        end % isOutputFixedSizeImpl
    end
end
