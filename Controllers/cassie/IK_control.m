      classdef IK_control< matlab.System & matlab.system.mixin.Propagates & matlab.system.mixin.SampleTime
    % casia cassie
    %
    % This template includes the minimum set of functions required
    % to define a System object with discrete state.

    % Public, tunable properties
    % position_up_limit; position_low_limit;motor_tested_position;start_position_limit : It has to be signed plus or minus
    % test_direction = int32(1);   +1 -1

    properties
        right_hip_roll_p = 400;
        right_hip_yaw_p = 500;
        right_hip_pitch_p = 700;
        right_knee_p = 800;
        right_foot_p = 200;
        left_hip_roll_p = 400;
        left_hip_yaw_p = 500;
        left_hip_pitch_p = 700;
        left_knee_p = 800;
        left_foot_p = 200;
        right_hip_roll_d = 7;
        right_hip_yaw_d = 2;       
        right_hip_pitch_d = 6;      
        right_knee_d = 8;       
        right_foot_d = 3;
        left_hip_roll_d = 7;        
        left_hip_yaw_d = 2;        
        left_hip_pitch_d = 6;        
        left_knee_d = 8;        
        left_foot_d = 3;    
    end

    properties(Nontunable)
        Property
        Property2
        Property3
    end

    properties(DiscreteState)
        
    end

    % Pre-computed constants
    properties(Access = private)
        %right hip roll yaw pitch knee foot
        actor_dst_rlt = zeros(10,1);
        actor_dst_rlt_pre = zeros(10,1);
        actor_dst_rlt_vel = zeros(10,1);
        flag_actor_vel_cal = zeros(10,1);
        xr_dst = 0;
        zr_dst = 0;
        pr_dst = 0;
        xl_dst = 0;
        zl_dst = 0;
        pl_dst = 0;        
        out_current_cal = zeros(10,1)
        motor_p_gain = zeros(1, 10);
        motor_d_gain = zeros(1, 10);
        state_march_real_pre = -1;
        IK1 = 0;
        IK6 = 0;
        IK1_0 = 0;
        IK6_0 = 0;
        IK1_pre = 0;
        IK6_pre = 0;
        IK1_OFF = 0;%deg2rad(1.7);
        IK6_OFF = 0;%deg2rad(-2);
        
        IK2 = 0;
        IK7 = 0;
        IK2_0 = 0;
        IK7_0 = 0;
        IK2_pre = 0;
        IK7_pre = 0;
        IK2_OFF = 0;
        IK7_OFF = 0;

        q3 = 0;
        q8 = 0;
        q3_0 = 0;
        q8_0 = 0;
        q3_pre = 0;
        q8_pre = 0;
        q3_OFF = 0;
        q8_OFF = 0;
        
        x_r = 0;
        x_l = 0;
        x_r_0 = 0;
        x_l_0 = 0;
        x_r_pre = 0; %抬脚再归零时候用到
        x_l_pre = 0;
        x_r_OFF = 0;
        x_l_OFF = 0;

        p_r = 0;
        p_l = 0;
        p_r_0 = 0;
        p_l_0 = 0;
        p_r_pre = 0; 
        p_l_pre = 0;
        p_r_OFF = 0; 
        p_l_OFF = 0;
        
        z_r = 0;
        z_l = 0;
        z_r_0 = 0;
        z_l_0 = 0;
        z_r_pre = 0; 
        z_l_pre = 0;
        z_r_OFF = 0;%-0.002;%-0.001; 
        z_l_OFF = 0;
        
        IK_slop = deg2rad(8); %rad/s 
        Ts = 1/2000;

        ss = 0;
        get_ready_all = 1;
        get_ready_1 = 0;
        get_ready_6 = 0;
        get_ready_2 = 0;
        get_ready_7 = 0;
        get_ready_x_r = 0;
        get_ready_x_l = 0;
        get_ready_z_r = 0;
        get_ready_z_l = 0;
        get_ready_p_r = 0;
        get_ready_p_l = 0;
        get_ready_q3 = 0;
        get_ready_q8 = 0;
        reset_num = 0.5;    
        yaw_num_inc = 0;
        inc_yaw = 0;
        k_dcpl = 0;
        delta_xr = 0;
        delta_xl = 0;
        delta_p = 0;
        delta_yr = 0;
        delta_yl = 0;
        delta_zr = 0;
        delta_zl = 0;
        delta_yw_move = 0;
        delta_yt_move = 0;        
        delta_yr_turn = 0;
        delta_yl_turn = 0;
        delta_xr_turn = 0;
        delta_xl_turn = 0;
        delta_zr_turn = 0;
        delta_zl_turn = 0;
        delta_zr_IK1 = 0;        
        delta_zl_IK6 = 0;
        delta_yaw = 0;                             
        t_q3_p = 0.1;%s 
         
        IK_limit_low = zeros(1,6);
        IK_limit_up = zeros(1,6); 
        
        tmp = 0;
        
        IK1_tgt = 0;
        IK6_tgt = 0;
        
    end

    methods(Access = protected)
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants         
              obj.IK_limit_low(1) = -0.2;
              obj.IK_limit_low(2) = -0.90;
              obj.IK_limit_low(4) = -0.2;
              obj.IK_limit_low(5) = -0.90;
              obj.IK_limit_up(1) = 0.2;
              obj.IK_limit_up(2) = -0.6;
              obj.IK_limit_up(4) = 0.2;             
              obj.IK_limit_up(5) = -0.6;
        end

        function [IkOut,actor_dst_rlt,out_tmp] = stepImpl(obj,TraData,pid_out,foot_pitch_step,roll_step,k_tgt, q3_dst)
            % Implement algorithm. Calculate y as a function of input u and
            % discrete states.
            % should in one file          
            
            obj.motor_p_gain(1) = obj.right_hip_roll_p;
            obj.motor_p_gain(2) = obj.right_hip_yaw_p;
            obj.motor_p_gain(3) = obj.right_hip_pitch_p;
            obj.motor_p_gain(4) = obj.right_knee_p;
            obj.motor_p_gain(5) = obj.right_foot_p;
            obj.motor_p_gain(6) = obj.left_hip_roll_p;
            obj.motor_p_gain(7) = obj.left_hip_yaw_p;
            obj.motor_p_gain(8) = obj.left_hip_pitch_p;
            obj.motor_p_gain(9) = obj.left_knee_p;
            obj.motor_p_gain(10) = obj.left_foot_p;
            obj.motor_d_gain(1) = obj.right_hip_roll_d;
            obj.motor_d_gain(2) = obj.right_hip_yaw_d;
            obj.motor_d_gain(3) = obj.right_hip_pitch_d;
            obj.motor_d_gain(4) = obj.right_knee_d;
            obj.motor_d_gain(5) = obj.right_foot_d;
            obj.motor_d_gain(6) = obj.left_hip_roll_d;
            obj.motor_d_gain(7) = obj.left_hip_yaw_d;
            obj.motor_d_gain(8) = obj.left_hip_pitch_d;
            obj.motor_d_gain(9) = obj.left_knee_d;
            obj.motor_d_gain(10) = obj.left_foot_d;
            if (TraData.is_op >0.5 )        
                if (TraData.state_index == int32(0) || TraData.state_index == int32(1))
                    for i = 1:10
                        obj.actor_dst_rlt(i) = TraData.actor_dst_zero(i);
                    end
                else
                    if TraData.state_index ~= int32(2)
                        foot_pitch_step = 0;
                        roll_step = 0;
                    end
                    if TraData.s > 1  
                        obj.ss = 1;
                    elseif TraData.s < 0
                        obj.ss = 0;
                    else
                        obj.ss = TraData.s;
                    end
                    
                    % reset
                    if obj.reset_num < TraData.reset_num_tgt
                        obj.reset_num = obj.reset_num + 1;
                        obj.get_ready_all = 1;
                    end
                    if obj.get_ready_all  && (TraData.state_march_real < 0.999 || TraData.state_march_real > 4.999 )                          
                        IK_delta_pre = [obj.IK1_pre; obj.IK2_pre; obj.x_r_pre; obj.z_r_pre; obj.p_r_pre; obj.q3_pre; ...
                                        obj.IK6_pre; obj.IK7_pre; obj.x_l_pre; obj.z_l_pre;  obj.p_l_pre; obj.q8_pre];
                        IK_delta_OFF =[obj.IK1_OFF; obj.IK2_OFF; obj.x_r_OFF; obj.z_r_OFF; obj.p_r_OFF; obj.q3_OFF; ...
                                       obj.IK6_OFF; obj.IK7_OFF; obj.x_l_OFF;  obj.z_l_OFF; obj.p_l_OFF;  obj.q8_OFF];                   
                        [IK_delta, get_ready_IK_out, obj.get_ready_all] = reset_IK(IK_delta_pre, IK_delta_OFF, obj.IK_slop, obj.Ts);
                        obj.IK1 = IK_delta(1); obj.IK2 = IK_delta(2); obj.x_r = IK_delta(3); obj.z_r = IK_delta(4); obj.p_r = IK_delta(5); obj.q3 = IK_delta(6); 
                        obj.IK6 = IK_delta(7); obj.IK7 = IK_delta(8); obj.x_l = IK_delta(9); obj.z_l = IK_delta(10); obj.p_l = IK_delta(11); obj.q8 = IK_delta(12); 
                        obj.get_ready_1 = get_ready_IK_out(1); obj.get_ready_2 = get_ready_IK_out(2); obj.get_ready_x_r = get_ready_IK_out(3); obj.get_ready_z_r = get_ready_IK_out(4); obj.get_ready_p_r = get_ready_IK_out(5); obj.get_ready_q3 = get_ready_IK_out(6);
                        obj.get_ready_6 = get_ready_IK_out(7); obj.get_ready_7 = get_ready_IK_out(8); obj.get_ready_x_l = get_ready_IK_out(9); obj.get_ready_z_l = get_ready_IK_out(10); obj.get_ready_p_l = get_ready_IK_out(11); obj.get_ready_q8 = get_ready_IK_out(12);

                        obj.IK1_0 = obj.IK1;
                        obj.IK6_0 = obj.IK6;
                        obj.IK2_0 = obj.IK2;
                        obj.IK7_0 = obj.IK7;
                        obj.x_r_0 = obj.x_r;
                        obj.x_l_0 = obj.x_l;
                        obj.z_r_0 = obj.z_r;
                        obj.z_l_0 = obj.z_l;  
                        obj.p_r_0 = obj.p_r;
                        obj.p_l_0 = obj.p_l;                        
                        obj.q3_0 = obj.q3;
                        obj.q8_0 = obj.q8;
                    end  
                    % cut 0 
                    if (abs(obj.state_march_real_pre - 1) < 0.1  && abs(TraData.state_march_real - 3) < 0.1) ||...
                            (abs(obj.state_march_real_pre - 2) < 0.1 && abs(TraData.state_march_real - 4) < 0.1)
                        obj.IK1_0 = obj.IK1;
                        obj.IK6_0 = obj.IK6;
                        obj.IK2_0 = obj.IK2;
                        obj.IK7_0 = obj.IK7;                       
                        obj.x_r_0 = obj.x_r;
                        obj.x_l_0 = obj.x_l;  
                        obj.q3_0 = obj.q3;
                        obj.q8_0 = obj.q8;  
                    end
                    
                    z_2stand_st = 0;%0.001;
                    z_2stand_sw = 0;%-0.001;
                    
                    if (abs(obj.state_march_real_pre - 3) < 0.1  && abs(TraData.state_march_real - 2) < 0.1) ||...
                            (abs(obj.state_march_real_pre - 2) < 0.1  && abs(TraData.state_march_real - 4) < 0.1) 
                        obj.p_l_0 = obj.p_l;
                        if (abs(obj.state_march_real_pre - 3) < 0.1  && abs(TraData.state_march_real - 2) < 0.1)
                            obj.z_l_0 = obj.z_l;
                        else
                            obj.z_l_0 = obj.z_l + z_2stand_sw;
                        end
                    elseif (abs(obj.state_march_real_pre - 4) < 0.1  && abs(TraData.state_march_real - 1) < 0.1) ||...
                            (abs(obj.state_march_real_pre - 1) < 0.1  && abs(TraData.state_march_real - 3) < 0.1) 
                        obj.p_r_0 = obj.p_r;
                        if (abs(obj.state_march_real_pre - 4) < 0.1  && abs(TraData.state_march_real - 1) < 0.1)
                            obj.z_r_0 = obj.z_r;
                        else
                            obj.z_r_0 = obj.z_r + z_2stand_sw;
                        end
                    elseif (abs(obj.state_march_real_pre - 3) < 0.1  && abs(TraData.state_march_real - 5) < 0.1) ||...
                            (abs(obj.state_march_real_pre - 4) < 0.1  && abs(TraData.state_march_real - 5) < 0.1) 
                        obj.z_r_0 = obj.z_r;
                        obj.z_l_0 = obj.z_l;
                    end
                    if (abs(obj.state_march_real_pre - 3) < 0.1  && abs(TraData.state_march_real - 2) < 0.1) ||...
                            (abs(obj.state_march_real_pre - 4) < 0.1  && abs(TraData.state_march_real - 1) < 0.1)     
                        obj.k_dcpl = 0;
                    end
                    
                    %---------------------walk-----------------------------
                    if abs(TraData.con_remote(4) - 1) < 0.5  %forward
                        delta_xr_tgt = TraData.walk_xv_dst*0.0066 + 0.016 + 0.025;
                        delta_xl_tgt = TraData.walk_xv_dst*0.0066 + 0.016 + 0.025;
                    elseif abs(TraData.con_remote(4) + 1) < 0.5 %backward
                        delta_xr_tgt = 0.021+0.025;
                        delta_xl_tgt = 0.021+0.025;                        
                    else
                        delta_xr_tgt = 0.016+0.025-0.017;
                        delta_xl_tgt = 0.016+0.025-0.017;                         
                    end

                    if abs(TraData.con_remote(4) - 1) < 0.5  %forward
                        delta_p_tgt = deg2rad(-0.3); 
                    elseif abs(TraData.con_remote(4) + 1) < 0.5 %backward
                        delta_p_tgt = deg2rad(-0.3);                         
                    else
                        delta_p_tgt = deg2rad(-0.3);                          
                    end                             

                    if abs(TraData.con_remote(4) - 1) < 0.5  %forward
                        delta_yr_tgt  = -1.4/180*pi; 
                        delta_yl_tgt = 2.1/180*pi; 
                    elseif abs(TraData.con_remote(4) + 1) < 0.5 %backward
                        delta_yr_tgt = -1.1/180*pi;
                        delta_yl_tgt = 2.1/180*pi;                         
                    else
%                         if TraData.step_cnt < 5 || TraData.step_cnt > 15 
                            delta_yr_tgt = -2.7/180*pi;%-1.1/180*pi;
                            delta_yl_tgt = 2.6/180*pi;%1.8 /180*pi;                                
%                         else
%                             delta_yr_tgt = -2.7/180*pi;%-1.1/180*pi;
%                             delta_yl_tgt = 3.0/180*pi;%1.8 /180*pi;    
%                         end
                    end                         
                    % turn
                    if abs(TraData.con_remote(5)) < 0.1
                        if abs(obj.state_march_real_pre - TraData.state_march_real) > 0.1 % 防止突变，在状态更替时清零
                            obj.yaw_num_inc = 0;
                            obj.inc_yaw = 0;
                        end
                        delta_yaw_tgt = 0;
                        delta_yr_turn_tgt = 0;
                        delta_yl_turn_tgt = 0;  
                        delta_xr_turn_tgt = 0;
                        delta_xl_turn_tgt = 0;   
                        delta_zr_turn_tgt = 0;
                        delta_zl_turn_tgt = 0;                          
                        if abs(obj.yaw_num_inc*obj.inc_yaw) < 1e-5     % 转弯增量清零后pid才加上
                            yaw_pid = pid_out(4,12);
                        else
                            yaw_pid = 0;
                        end
                    else
                        yaw_pid = 0; 
                        if abs(TraData.state_march_real - 1) < 0.1 || abs(TraData.state_march_real - 2) < 0.1   %摆动腿yaw的控制量增大
                            obj.yaw_num_inc = obj.yaw_num_inc + 1;
                        elseif abs(TraData.state_march_real - 3) < 0.1 || abs(TraData.state_march_real - 4) < 0.1 ||...%双腿支撑yaw的控制量增量清零
                               abs(TraData.state_march_real - 0) < 0.1
                            obj.yaw_num_inc = 0;
                        elseif abs(TraData.state_march_real - 5) < 0.1                     %停止亦然  
                            obj.yaw_num_inc = 0;
                        end                        
                        if abs(TraData.con_remote(5) - 1) < 0.1 %right
                            obj.inc_yaw = -deg2rad(360)/10*obj.Ts; 
                            delta_yaw_tgt = -deg2rad(6);
                            delta_yr_turn_tgt = 0;
                            delta_yl_turn_tgt = 0;%0.8/180*pi;
                            delta_xr_turn_tgt = 0;
                            delta_xl_turn_tgt = 0;%0.005;
                            delta_zr_turn_tgt = 0.0005;
                            delta_zl_turn_tgt = -0.0005;                             
                        else%if abs(TraData.con_remote(5) + 1) < 0.1 %left
                            obj.inc_yaw = deg2rad(360)/10*obj.Ts;
                            delta_yaw_tgt = deg2rad(6);
                            delta_yr_turn_tgt = -0.8/180*pi;
                            delta_yl_turn_tgt = 0;
                            delta_xr_turn_tgt = 0;%0.005;
                            delta_xl_turn_tgt = 0;
                            delta_zr_turn_tgt = -0.0005;
                            delta_zl_turn_tgt = 0.0005; 
                        end
                    end
                    
                    if abs(obj.state_march_real_pre - TraData.state_march_real) > 0.1  % 防止突变，状态切换时赋值
                        obj.delta_yaw = delta_yaw_tgt;
                        obj.delta_yr_turn = delta_yr_turn_tgt;
                        obj.delta_yl_turn = delta_yl_turn_tgt;
                        obj.delta_xr_turn = delta_xr_turn_tgt;
                        obj.delta_xl_turn = delta_xl_turn_tgt;
                    end
                    obj.delta_zr_turn = Ramp(delta_zr_turn_tgt, obj.delta_zr_turn, 0.0005/0.2*obj.Ts);  % z, p的保持值切换规律与其他的不同，依旧采用斜坡
                    obj.delta_zl_turn = Ramp(delta_zl_turn_tgt, obj.delta_zl_turn, 0.0005/0.2*obj.Ts);
                    
                    obj.delta_xr = delta_xr_tgt + obj.delta_xr_turn;  %摆动腿作用
                    obj.delta_xl = delta_xl_tgt + obj.delta_xl_turn;   %摆动腿作用                    
                    obj.delta_p  = delta_p_tgt;                                %摆动腿作用
                    obj.delta_yr = delta_yr_tgt + obj.delta_yr_turn;  %摆动腿作用
                    obj.delta_yl = delta_yl_tgt + obj.delta_yl_turn;   %摆动腿作用                    
                    obj.delta_zr = obj.delta_zr_turn;                        %左右腿都作用
                    obj.delta_zl = obj.delta_zl_turn;                         %左右腿都作用                    
                    
                    % move
                    % 1/180*pi*0.83 = 0.0145m, 0.4s, 0.0362m/s
                    vr_move = 0.06;%m/s
                    vl_move = 0.06;%m/s
                    leg_length = 0.83;
                    yr_move = vr_move*0.4/leg_length;
                    yl_move = vl_move*0.4/leg_length;
                    
                    if abs(TraData.con_remote(6) - 1) < 0.5 %right move                     
                        if abs(TraData.state_march_real - 1) < 0.1 || abs(TraData.state_march_real - 3) < 0.1  
                            if abs(TraData.state_march_real - 3) < 0.1 % left leg
                                obj.delta_yt_move = 0;
                            else
                                obj.delta_yt_move = Ramp(yr_move, obj.delta_yt_move, yr_move/0.4*obj.Ts);
                            end
                            obj.delta_yw_move = 0;  % right leg
                        elseif abs(TraData.state_march_real - 2) < 0.1  || abs(TraData.state_march_real - 4) < 0.1
                            if abs(TraData.state_march_real - 4) < 0.1  %right leg
                                obj.delta_yt_move = 0;
                            else
                                obj.delta_yt_move = Ramp(yr_move, obj.delta_yt_move, yr_move/0.4*obj.Ts);
                            end
                            obj.delta_yw_move = yr_move; %left leg
                        else
                            obj.delta_yt_move = 0;
                            obj.delta_yw_move = 0;
                        end
                    elseif abs(TraData.con_remote(6) + 1) < 0.5 %left move
                        if abs(TraData.state_march_real - 1) < 0.1 || abs(TraData.state_march_real - 3) < 0.1 
                            if abs(TraData.state_march_real - 3) < 0.1  %left leg
                                obj.delta_yt_move = 0;
                            else
                                obj.delta_yt_move = Ramp(-yl_move, obj.delta_yt_move, yl_move/0.4*obj.Ts);
                            end
                            obj.delta_yw_move = -yl_move; %right leg
                        elseif abs(TraData.state_march_real - 2) < 0.1 || abs(TraData.state_march_real - 4) < 0.1
                            if abs(TraData.state_march_real - 4) < 0.1  %right leg
                                obj.delta_yt_move = 0;
                            else
                                obj.delta_yt_move = Ramp(-yl_move, obj.delta_yt_move, yl_move/0.4*obj.Ts);
                            end
                            obj.delta_yw_move = 0;   %left leg
                        else
                            obj.delta_yt_move = 0;
                            obj.delta_yw_move = 0;
                        end                       
                    else
                        obj.delta_yt_move = Ramp(0, obj.delta_yt_move, yr_move/0.4*obj.Ts); % 
                        obj.delta_yw_move = Ramp(0, obj.delta_yw_move, yr_move/0.4*obj.Ts); % 
                    end                                                                                                 

                    % IK1 IK6
                    if  abs(TraData.state_march_real - 2) < 0.1   %左腿切到摆动腿   
                        if abs(obj.state_march_real_pre -2) >0.1
                            if obj.ss > 0.9
                                obj.ss = 0;
                            end
                        end
                        %obj.IK1_tgt = obj.IK1_0 + pid_out(4,7) + obj.delta_yt_move;% - (pid_out(4,13)+pid_out(4,3))*TraData.walk_xzdir_w(1,1);
                        obj.IK1 = obj.IK1_0 + pid_out(4,7) + obj.delta_yt_move;%Ramp(obj.IK1_tgt, obj.IK1, deg2rad(25)/0.4*obj.Ts);
                        bb = pid_out(4,8)+pid_out(4,9)+pid_out(4,15) + obj.delta_yl + obj.delta_yw_move - 0*obj.IK1 + pid_out(4,19) ;
                        sl_b = [obj.IK6_0,obj.IK6_0,bb,bb,bb,bb];  
                        obj.IK6_tgt = 0;%Ramp(- 0.8*TraData.eulZYX(3), obj.IK6_tgt, deg2rad(6)/0.2*obj.Ts);
                        obj.IK6 = bezier(sl_b,obj.ss) + obj.IK6_tgt;  
                        %------------------------------------
                        aa = pid_out(4,10)+pid_out(4,14) + obj.delta_xl;
                        sl_a = [obj.x_l_0,obj.x_l_0,aa,aa,aa,aa];
                        obj.x_r = obj.x_r_0;
                        obj.x_l = bezier(sl_a,obj.ss);
                        %------------------------------------
                        cc =  -obj.delta_yaw; % 摆动腿也在转
                        sl_c = [obj.IK7_0,obj.IK7_0,cc,cc,cc,cc,cc];
                        obj.IK2 = obj.IK2_0  + yaw_pid + obj.inc_yaw*obj.yaw_num_inc;% - pid_out(4,10)*0.01 + pid_out(4,13)*0.01;%% - (pid_out(4,13)+pid_out(4,3))*TraData.walk_xzdir_w(3,1); 
                        obj.IK7 = bezier(sl_c,obj.ss);
                        %------------------------------------
                        dd = 0;
                        sl_d = [obj.q8_0,obj.q8_0,dd,dd];
                        obj.q3 = obj.q3_0 + pid_out(4,13); 
                        obj.q8 = bezier(sl_d,obj.ss);
                        %------------------------------------                        
                        obj.k_dcpl = Ramp(k_tgt, obj.k_dcpl, k_tgt/(obj.t_q3_p/obj.Ts));
                        ee = TraData.eulZYX(2) + obj.delta_p;
                        sl_e = [obj.p_l_0,obj.p_l_0,ee,ee,ee,ee,ee];
                        obj.p_r = obj.p_r_0 + pid_out(4,3)  - obj.k_dcpl*obj.q3;%TraData.motor_position(3); 
                        obj.p_l = bezier(sl_e,obj.ss);
                        %------------------------------------
                        ff = 0;
                        sl_f = [obj.z_l_0,obj.z_l_0,ff,ff];
                        delta_zr_IK1_tgt = TraData.IK_dst(2) / cos(obj.IK1) - TraData.IK_dst(2); 
                        obj.delta_zr_IK1 = 0;%Ramp(delta_zr_IK1_tgt, obj.delta_zr_IK1, 0.01/0.05*obj.Ts);
                        obj.z_r = obj.z_r_0 + pid_out(4,16) + obj.delta_zr_IK1;
                        obj.z_l = bezier(sl_f,obj.ss);                      
%                         obj.IK6 = 初始值：obj.IK6_0  目标值：pid_out(4,8);
                    elseif  abs(TraData.state_march_real - 1) < 0.1   %右腿切到摆动腿
                        if abs(obj.state_march_real_pre - 1) > 0.1
                            if obj.ss > 0.9
                                obj.ss = 0;
                            end
                        end
                        %obj.IK6_tgt = obj.IK6_0 + pid_out(4,7) + obj.delta_yt_move;% - (pid_out(4,13)+pid_out(4,6))*TraData.walk_xzdir_w(1,2);
                        obj.IK6 = obj.IK6_0 + pid_out(4,7) + obj.delta_yt_move;%Ramp(obj.IK6_tgt, obj.IK6, deg2rad(25)/0.4*obj.Ts);                        
                        bb = pid_out(4,8)+pid_out(4,9)+pid_out(4,15) + obj.delta_yr + obj.delta_yw_move - 0*obj.IK6 + pid_out(4,19);%-0.05/180*pi;
                        sl_b = [obj.IK1_0,obj.IK1_0,bb,bb,bb,bb];  
                        obj.IK1_tgt = 0;%Ramp( - 0.8*TraData.eulZYX(3), obj.IK1_tgt, deg2rad(6)/0.2*obj.Ts);
                        obj.IK1 = bezier(sl_b,obj.ss) + obj.IK1_tgt;
                        %-------------------------------------------------------
                        aa = pid_out(4,10)+pid_out(4,14) + obj.delta_xr;
                        sl_a = [obj.x_r_0,obj.x_r_0,aa,aa,aa,aa];
                        obj.x_r = bezier(sl_a,obj.ss); 
                        obj.x_l = obj.x_l_0;
                        %-------------------------------------------------------
                        cc =  -obj.delta_yaw;
                        sl_c = [obj.IK2_0 ,obj.IK2_0,cc,cc,cc,cc,cc];
                        obj.IK2 = bezier(sl_c,obj.ss);
                        obj.IK7 = obj.IK7_0 + yaw_pid + obj.inc_yaw*obj.yaw_num_inc;% + pid_out(4,10)*0.01 - pid_out(4,13)*0.01;%% - (pid_out(4,13)+pid_out(4,6))*TraData.walk_xzdir_w(3,2); 
                        %-------------------------------------------------------
                        dd = 0;
                        sl_d = [obj.q3_0,obj.q3_0,dd,dd];
                        obj.q3 = bezier(sl_d,obj.ss);
                        obj.q8 = obj.q8_0 + pid_out(4,13);
                        %-------------------------------------------------------                        
                        obj.k_dcpl = Ramp(k_tgt, obj.k_dcpl, k_tgt/(obj.t_q3_p/obj.Ts));                          
                        ee = TraData.eulZYX(2) + obj.delta_p;
                        sl_e = [obj.p_r_0,obj.p_r_0,ee,ee,ee,ee,ee];
                        obj.p_r = bezier(sl_e,obj.ss);
                        obj.p_l = obj.p_l_0 + pid_out(4,6) - obj.k_dcpl*obj.q8;%TraData.motor_position(8); ; 
                        %------------------------------------
                        ff = 0;
                        sl_f = [obj.z_r_0,obj.z_r_0,ff,ff];
                        delta_zl_IK6_tgt = TraData.IK_dst(5) / cos(obj.IK6) - TraData.IK_dst(5); 
                        obj.delta_zl_IK6 = 0;%Ramp(delta_zl_IK6_tgt, obj.delta_zl_IK6, 0.01/0.05*obj.Ts);
                        obj.z_r = bezier(sl_f,obj.ss);
                        obj.z_l = obj.z_l_0 + pid_out(4,17) + obj.delta_zl_IK6;
%                         obj.IK1 =初始值： obj.IK1_0 目标值： pid_out(4,8);
                    elseif abs(TraData.state_march_real) < 0.1
                        obj.p_r = pid_out(4,3);
                        obj.p_l = pid_out(4,6); 
                        obj.p_r_0 = obj.p_r;
                        obj.p_l_0 = obj.p_l;                      
                    elseif ( abs(TraData.state_march_real - 5) < 0.1 || abs(TraData.state_march_real - 3) < 0.1 || ...
                            abs(TraData.state_march_real - 4) < 0.1 ) && abs(TraData.con_remote(2) - 1) < 0.1
                        obj.IK1 = obj.IK1_0 ;
                        obj.IK6 = obj.IK6_0 ;
                        obj.IK2 = obj.IK2_0;
                        obj.IK7 = obj.IK7_0;
                        obj.q3 = obj.q3_0;
                        obj.q8 = obj.q8_0;
                        if abs(TraData.state_march_real - 5) < 0.1%stop march
                            obj.x_r = Ramp(0.016, obj.x_r, 0.018/0.4*obj.Ts); %为了停止稳定
                            obj.x_l = Ramp(0.016, obj.x_l, 0.018/0.4*obj.Ts);
                            obj.p_r = pid_out(4,3) + obj.p_r_0;
                            obj.p_l = pid_out(4,6) + obj.p_l_0;
                            obj.z_r = obj.z_r_0;
                            obj.z_l = obj.z_l_0;
                        else %two leg stand
                            obj.x_r = obj.x_r_0;
                            obj.x_l = obj.x_l_0;
                            obj.p_r = pid_out(4,3) + obj.p_r_0;%TraData.eulZYX(2)-0.5/180*pi; 
                            obj.p_l = pid_out(4,6) + obj.p_l_0;%TraData.eulZYX(2)-0.5/180*pi;  
                            if abs(TraData.state_march_real - 3) < 0.1   
                                obj.z_r = obj.z_r_0 + pid_out(4,16);
                                obj.z_l = obj.z_l_0 + pid_out(4,17) + z_2stand_st;
                            elseif abs(TraData.state_march_real - 4) < 0.1
                                obj.z_r = obj.z_r_0 + pid_out(4,16)  + z_2stand_st;
                                obj.z_l = obj.z_l_0 + pid_out(4,17);
                            else
                                obj.z_r = obj.z_r_0 + pid_out(4,16);
                                obj.z_l = obj.z_l_0 + pid_out(4,17);
                            end
                        end
                    end
                    obj.tmp = Ramp(q3_dst, obj.tmp, deg2rad(5)*obj.Ts);
                    
                    obj.actor_dst_rlt(1) = obj.IK1 + TraData.IK_ry(1,1) + 0/180*pi;% 0.65
                    obj.actor_dst_rlt(1) = Limit(obj.actor_dst_rlt(1), deg2rad(-15), deg2rad(6));
                    obj.actor_dst_rlt(2) = obj.IK2 + TraData.IK_ry(1,2);
                    obj.actor_dst_rlt(6) = obj.IK6 + TraData.IK_ry(2,1) + 0/180*pi;% 0.65
                    obj.actor_dst_rlt(6) = Limit(obj.actor_dst_rlt(6), deg2rad(-6), deg2rad(15));
                    obj.actor_dst_rlt(7) = obj.IK7 + TraData.IK_ry(2,2);
                    obj.xr_dst = TraData.IK_dst(1) + pid_out(4,1) + obj.x_r;
                    obj.zr_dst = TraData.IK_dst(2)+pid_out(4,2) + obj.z_r + obj.delta_zr + roll_step;%
                    obj.pr_dst = TraData.IK_dst(3)+obj.p_r+foot_pitch_step;
                    obj.xl_dst = TraData.IK_dst(4) + pid_out(4,4) + obj.x_l;
                    obj.zl_dst = TraData.IK_dst(5)+pid_out(4,5) + obj.z_l + obj.delta_zl - roll_step;%
                    obj.pl_dst = TraData.IK_dst(6)+obj.p_l+foot_pitch_step; 
                    
                    obj.xr_dst = Limit(obj.xr_dst, obj.IK_limit_low(1), obj.IK_limit_up(1));
                    obj.zr_dst = Limit(obj.zr_dst, obj.IK_limit_low(2), obj.IK_limit_up(2));                    
                    obj.xl_dst = Limit(obj.xl_dst, obj.IK_limit_low(4), obj.IK_limit_up(4));                    
                    obj.zl_dst = Limit(obj.zl_dst, obj.IK_limit_low(5), obj.IK_limit_up(5));                    
                    
                    [obj.actor_dst_rlt(3),obj.actor_dst_rlt(4),obj.actor_dst_rlt(5)]=IK_robot_right(obj.xr_dst, obj.zr_dst, obj.pr_dst);  %([x,z],FootPitch)(m,rad)right
                    [obj.actor_dst_rlt(8),obj.actor_dst_rlt(9),obj.actor_dst_rlt(10)]=IK_robot_left(obj.xl_dst,  obj.zl_dst, obj.pl_dst);  %([x,z],FootPitch)(m,rad)left
                    obj.actor_dst_rlt(3) = obj.actor_dst_rlt(3) + obj.q3 + obj.tmp;
                    obj.actor_dst_rlt(8) = obj.actor_dst_rlt(8) + obj.q8;
                    obj.state_march_real_pre = TraData.state_march_real;
                    obj.IK1_pre = obj.IK1;  
                    obj.IK6_pre = obj.IK6;
                    obj.IK2_pre = obj.IK2;  
                    obj.IK7_pre = obj.IK7;
                    obj.x_r_pre = obj.x_r;
                    obj.x_l_pre = obj.x_l;
                    obj.z_r_pre = obj.z_r;
                    obj.z_l_pre = obj.z_l; 
                    obj.p_r_pre = obj.p_r;
                    obj.p_l_pre = obj.p_l; 
                    obj.q3_pre = obj.q3;  
                    obj.q8_pre = obj.q8;                     
                end
                for i = 1:10
                    if abs(obj.actor_dst_rlt_pre(i)) > 1e-9
                        obj.flag_actor_vel_cal(i) = 1;
                    end
                    if abs(obj.flag_actor_vel_cal(i)) > 0.1
                        obj.actor_dst_rlt_vel(i) = (obj.actor_dst_rlt(i) - obj.actor_dst_rlt_pre(i))/obj.Ts;
                    else
                        obj.actor_dst_rlt_vel(i) = 0;                        
                    end
                    obj.actor_dst_rlt_pre(i) = obj.actor_dst_rlt(i);
                end
                for i = 1:10
                     obj.out_current_cal(i) = obj.motor_p_gain(i)*(obj.actor_dst_rlt(i) - TraData.motor_position(i)) + obj.motor_d_gain(i)*(0.0 - TraData.motor_velocity(i));
                end                
            end
            if ( abs(TraData.state_march_real - 1) < 0.1 || abs(TraData.state_march_real - 2) < 0.1 || ...
                abs(TraData.state_march_real - 3) < 0.1 || abs(TraData.state_march_real - 4) < 0.1 )
                obj.out_current_cal(5) = 0.6*obj.out_current_cal(5);
                obj.out_current_cal(10) = 0.6*obj.out_current_cal(10);
            end
            

            
           %%
            IkOut.pid_out = pid_out;
            IkOut.actor_dst_rlt = obj.actor_dst_rlt;
            IkOut.out_current_cal = obj.out_current_cal;
            IkOut.IK_target = [obj.IK1; obj.IK6; obj.xr_dst; obj.xl_dst; obj.q3; obj.q8; obj.zr_dst; obj.zl_dst; obj.pr_dst; obj.pl_dst];
            IkOut.temp = [obj.k_dcpl; obj.p_r_0; obj.p_l_0; obj.IK2; obj.IK7; obj.IK1_tgt;obj. IK6_tgt; obj.delta_yr;obj.delta_yl;0];
            IkOut.actor_dst_rlt_vel = obj.actor_dst_rlt_vel;
            actor_dst_rlt = obj.actor_dst_rlt;
            out_tmp = [TraData.state_march_real;obj.delta_yt_move;obj.delta_yw_move;obj.yaw_num_inc;obj.inc_yaw]; 
        end

        function resetImpl(obj)
            % Initialize / reset discrete-state properties
        end
        
%         function [name_1, name_2]  = getInputNamesImpl(~)
%             %GETINPUTNAMESIMPL Return input port names for System block
%             name_1 = 'CasiaBBROutputs';
%             name_2 = 'time';
%         end % getInputNamesImpl
        
        function [name_1,name_2,name_3] = getOutputNamesImpl(~)
            %GETOUTPUTNAMESIMPL Return output port names for System block
            name_1 = 'IkOut';
            name_2 = 'actor_dst_rlt';
            name_3 = 'out_tmp';
        end % getOutputNamesImpl
        % PROPAGATES CLASS METHODS ============================================
        function [out_1,out_2,out_3] = getOutputSizeImpl(~)
            %GETOUTPUTSIZEIMPL Get sizes of output ports.     
            out_1 = [1, 1];
            out_2 = [10, 1];
            out_3 = [5, 1];
        end % getOutputSizeImpl
        
        function [out_1,out_2,out_3] = getOutputDataTypeImpl(~)
            %GETOUTPUTDATATYPEIMPL Get data types of output ports.         
            out_1 = 'IkControlBus';
            out_2 = 'double';
            out_3 = 'double';
        end % getOutputDataTypeImpl
        
        function [out_1,out_2,out_3] = isOutputComplexImpl(~) 
            %ISOUTPUTCOMPLEXIMPL Complexity of output ports.         
            out_1 = false;
            out_2 = false;
            out_3 = false;
        end % isOutputComplexImpl
        
        function [out_1,out_2,out_3] = isOutputFixedSizeImpl(~)
            %ISOUTPUTFIXEDSIZEIMPL Fixed-size or variable-size output ports.
            out_1 = true;
            out_2 = true;
            out_3 = true;
        end % isOutputFixedSizeImpl
    end
     end
