function [PIDval, PIDval_pre ,integral, errPre, filter_pre, hold_val, pid_ena_val, err_val, pid_val]...
        = GetIkPD(...
        PIDval_pre, integral, errPre, filter_pre, closedloop_Ena, Num_pid,Ts,...
        x_pid, z_pid, p_pid, r_st_pid, yv_pid, yp_pid, xv_pid, xp_pid, yaw_pid, q3_pid, ...
        roll_ref_pid, zv_pid, x_pitch_pid, y_roll_pid,...
        fre_roll,fre_pitch,...
        imu_roll_ref, imu_pitch_ref, imu_yaw0, xv_ref, yv_ref, walk_p0, ...
        eulZYX, v_est, p_est, pos_rota, state_march_real, cnt_pid14)
    %PID edit-------------------
    PIDval = zeros(4,20);
%     pid_Ena = zeros(1,Num_pid);
    Pval = zeros(1,Num_pid);
    Ival = zeros(1,Num_pid);
    Dval = zeros(1,Num_pid);
    val = zeros(1,Num_pid);
    Lpf_fre = fre_roll*ones(1,Num_pid);
    Lpf_fre(3) = fre_pitch;
    Lpf_fre(6) = fre_pitch;
    hold_val = zeros(1, Num_pid);
    pid_ena_val = zeros(1, Num_pid);
    err_val = zeros(1, Num_pid); 
    pid_val = zeros(1, Num_pid); 
    
    [pid_deadzone, pid_limit, pid_slop, pid_sign, pid_TsN] = PID_Init(Num_pid);    
    
    %-------------------------------   
    
    stance_leg = 0;
    
    LpfOutPre = filter_pre(1:2,:);
    NotInPre = filter_pre(3:4,:);
    NotOutPre = filter_pre(5:6,:);
    
    if closedloop_Ena > 0.5 
        %% 
        pid_Ena = ones(1,Num_pid);
        op_start = 7;
        op_end = Num_pid;        
        op_Index = [op_start:15,18:op_end]; 
        if  abs(state_march_real - (-1)) < 0.1 ||abs(state_march_real)< 0.1||abs(state_march_real - 5) < 0.1
            pid_Ena(op_Index) = -1*ones(op_end - op_start,1);
            pid_Ena(16) = 0;
            pid_Ena(17) = 0;
        elseif  abs(state_march_real - 3) < 0.1 || abs(state_march_real - 4) < 0.1   
            pid_Ena(op_Index) = zeros(1,length(op_Index));
            pid_Ena(14) = 1;
            pid_Ena(20) = 1;
%             pid_Ena(2) = -2;
%             pid_Ena(5) = -2;            
        elseif  abs(state_march_real - 1) < 0.1 %right sw
            pid_Ena(3) = -2;
%             pid_Ena(2) = -2;
%             pid_Ena(5) = -2;
            pid_Ena(16) = -2;
            pid_Ena(14) = 1;
            pid_Ena(20) = 1;
        elseif abs(state_march_real - 2) < 0.1  %left sw
            pid_Ena(6) = -2;
%             pid_Ena(2) = -2;
%             pid_Ena(5) = -2;
            pid_Ena(17) = -2;
            pid_Ena(14) = 1;
            pid_Ena(20) = 1;
        end
        %% PID Calculate        
        %PID edit-------------------
        Ref =      [imu_pitch_ref,   imu_roll_ref,   imu_pitch_ref,   imu_pitch_ref,    imu_roll_ref,   imu_pitch_ref,   imu_roll_ref,   yv_ref,        walk_p0(2),   xv_ref,          walk_p0(1),    imu_yaw0,    imu_pitch_ref,   0.0,                    0.0,                     0.884,           0.884,           imu_pitch_ref,    imu_roll_ref,       0.0];
        Fpb =     [eulZYX(2),         eulZYX(3),       eulZYX(2),        eulZYX(2),           eulZYX(3),      eulZYX(2),         eulZYX(3),      v_est(2),      p_est(2),       v_est(1),       p_est(1),         eulZYX(1),     eulZYX(2),         eulZYX(3),          0.0,                     p_est(3),    p_est(3),    eulZYX(2),                  eulZYX(3),                    0.0];
        P_para = [x_pid(1), z_pid(1), p_pid(1), x_pid(1), z_pid(1), p_pid(1), r_st_pid(1), yv_pid(1), yp_pid(1), xv_pid(1), xp_pid(1), yaw_pid(1), q3_pid(1), roll_ref_pid(1),  0.0, zv_pid(1), zv_pid(1), x_pitch_pid(1), y_roll_pid(1),   0.0];
        I_para =  [x_pid(2), z_pid(2), p_pid(2), x_pid(2), z_pid(2), p_pid(2), r_st_pid(2), yv_pid(2), yp_pid(2), xv_pid(2), xp_pid(2), yaw_pid(2), q3_pid(2), roll_ref_pid(2),  0.0, zv_pid(2), zv_pid(2), x_pitch_pid(2), y_roll_pid(2),   0.0];
        D_para = [x_pid(3), z_pid(3), p_pid(3), x_pid(3), z_pid(3), p_pid(3), r_st_pid(3), yv_pid(3), yp_pid(3), xv_pid(3), xp_pid(3), yaw_pid(3), q3_pid(3), roll_ref_pid(3),  0.0, zv_pid(3), zv_pid(3), x_pitch_pid(3), y_roll_pid(3),   0.0];
        %------------------------------   
        for i = 1:Num_pid
            if i == 8% ||  i == 19
                if abs(state_march_real-1) < 0.5 || abs(state_march_real-3) < 0.5 
                   stance_leg = -1;  %left stance
                elseif abs(state_march_real-2) < 0.5 || abs(state_march_real-4) < 0.5     
                   stance_leg = 1;
                end
            else
                stance_leg = 0;
            end
            if i == 14
                if abs(cnt_pid14 - 20) < 0.1
                    hold = 0;
                else
                    hold = 1;
                end
            else
                hold = 0;
            end
            hold_val(i) = hold;
            pid_ena_val(i) = pid_Ena(i);

            pidIN.Ref = Ref(i);
            pidIN.Fpb = Fpb(i);
            pidIN.flag = stance_leg;
            pidIN.deadzone = pid_deadzone(i);
            pidIN.I_para = I_para(i);
            pidIN.Ilim = pid_limit(:,i);
            pidIN.P_para = P_para(i);
            pidIN.D_para = D_para(i);
            pidIN.fre = Lpf_fre(i);
            pidIN.sign = pid_sign(i);
            pidIN.outLim = pid_limit(:,i);
            pidIN.Ena = pid_Ena(i);
            pidIN.slop = pid_slop(i);
            pidIN.TsN = pid_TsN(i);

            pidPre.err = errPre(i);
            pidPre.integral = integral(i);
            pidPre.PIDval = PIDval_pre(:,i);
            pidPre.LpfOut = LpfOutPre(:,i);    
            pidPre.NotIn = NotInPre(:,i);
            pidPre.NotOut = NotOutPre(:,i);    
            if abs(hold)  < 0.1                
                [pidOUT,pidPre] = PID_Cal(pidIN,Ts,pidPre,i);
                Pval(i) = pidOUT.Pval;
                Ival(i) = pidOUT.Ival;
                Dval(i) = pidOUT.Dval;
                val(i) = pidOUT.val;
            else
                Pval(i) = PIDval_pre(1,i);
                Ival(i) = PIDval_pre(2,i);
                Dval(i) = PIDval_pre(3,i);
                val(i) = PIDval_pre(4,i);
            end
            errPre(i) = pidPre.err;
            integral(i) = pidPre.integral;
            PIDval_pre(:,i) = pidPre.PIDval;
            LpfOutPre(:,i) = pidPre.LpfOut;
            NotInPre(:,i) = pidPre.NotIn;            
            NotOutPre(:,i) = pidPre.NotOut; 

            err_val(i) = errPre(i);
            pid_val(i) = val(i);
            PIDval(1,:) = Pval;
            PIDval(2,:) = Ival;
            PIDval(3,:) = Dval;
            PIDval(4,:) = val; 
        end
    else
        for i = 1:Num_pid
            PIDval(4,i) = Ramp(0.0, PIDval_pre(4,i), pid_slop(i)*Ts);
            integral(i) = 0.0;
            errPre(i) = 0.0;
            LpfOutPre(:,i) = zeros(2,1);
            NotInPre(:,i) = zeros(2,1);            
            NotOutPre(:,i) = zeros(2,1);
        end     
    end

    PIDval_pre = PIDval;
    filter_pre = [LpfOutPre;NotInPre;NotOutPre];
end