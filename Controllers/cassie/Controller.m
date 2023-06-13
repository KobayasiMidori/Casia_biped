     classdef Controller < matlab.System & matlab.system.mixin.Propagates & matlab.system.mixin.SampleTime
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
%          %add here
        imu_roll_pre = 0;
        imu_pitch_pre = 0; 
        imu_yaw0 = 0;
        Ts = 1/2000;
        %PID edit-------------
        closedloop_Ena = 0;
        Num_pid = 20;
        pid_out = zeros(4,20);
        integral = zeros(1,20);
        filter_pre = zeros(6,20);
        errPre = zeros(1,20);
        pid_out_pre = zeros(4,20);

        state_march_real_pre = 0;
        %-----------------------
        pid_Ena_pre = 0;
        imu_roll_ref = 0;
        imu_pitch_ref = 0;
        xv_ref = 0;        
        yv_ref = 0;

    end

    methods(Access = protected)
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants         

        end

        function [pid_out, closedloop_Ena, pid_tmp] = stepImpl(obj,TraData,x_pid, z_pid, p_pid, r_st_pid, yv_pid, yp_pid, xv_pid, xp_pid, yaw_pid, q3_pid,pos_rota_pid,zv_pid, x_pitch_pid, y_roll_pid, imu_roll_dst,imu_pitch_dst,fre_roll,fre_pitch)
            % Implement algorithm. Calculate y as a function of input u and
            % discrete states.
            % should in one file
            %right left
            if (TraData.is_op >0.5 )        
                if (TraData.state_index == int32(0) || TraData.state_index == int32(1)) || abs(TraData.con_remote(2)) < 0.1                       
                    obj.closedloop_Ena = 0;
                    obj.imu_roll_ref = TraData.eulZYX(3); %roll
                    obj.imu_pitch_ref = TraData.eulZYX(2); %pitch 
                    obj.pid_out_pre = obj.pid_out; 
                else
                    %% Ena
                    obj.closedloop_Ena = 1;
                    % referance 
                    % roll_ref, pitch_ref
                    if abs(TraData.state_march_real) < 0.1
                        imu_roll_ref_tgt = deg2rad(0.5);
                        imu_pitch_ref_tgt = 0;
                    else
                        imu_roll_ref_tgt = imu_roll_dst;
                        imu_pitch_ref_tgt = imu_pitch_dst;
                    end
                    imu_slope = deg2rad(5);
                    obj.imu_roll_ref = Ramp(imu_roll_ref_tgt, obj.imu_roll_ref, imu_slope*obj.Ts);  %0.014 = 0.8¡£/s 
                    obj.imu_pitch_ref = Ramp(imu_pitch_ref_tgt, obj.imu_pitch_ref, imu_slope*obj.Ts);  
                    % xv_ref
                    obj.xv_ref = TraData.walk_xv_dst;% - 0.02;
                    % yv_ref 
                    if abs(TraData.con_remote(6) - 1) < 0.5 %right move                    
                         obj.yv_ref = 0;%-0.01;
                    elseif abs(TraData.con_remote(6) + 1) < 0.5 %left move
                         obj.yv_ref = 0;%0.01;
                    else
                         obj.yv_ref = 0;
                    end  
                end
                % GetIkPD: pid out and pid ramp
                [obj.pid_out, obj.pid_out_pre, obj.integral, obj.errPre, obj.filter_pre]...
                    = GetIkPD(...
                    obj.pid_out_pre, obj.integral, obj.errPre, obj.filter_pre, obj.closedloop_Ena, obj.Num_pid, obj.Ts,... % pre
                    x_pid, z_pid, p_pid, r_st_pid, yv_pid, yp_pid, xv_pid, xp_pid, yaw_pid, q3_pid, ... % pid_para
                    pos_rota_pid, zv_pid, x_pitch_pid, y_roll_pid, ...                                                                              % pid_para
                    fre_roll, fre_pitch,...
                    obj.imu_roll_ref, obj.imu_pitch_ref, TraData.imu_yaw0, obj.xv_ref, obj.yv_ref, TraData.walk_p0, ...               % ref
                    TraData.eulZYX, TraData.v_est, TraData.p_est, TraData.pos_rota, TraData.state_march_real,...
                    TraData.s); % real

                h_cen = 0.9;
                obj.pid_out(4,15) = atan(obj.pid_out(4,15)/h_cen);
                if abs(TraData.flag_march) < 0.1   % Ô­µØÌ¤²½
                    obj.pid_out(:,11) = zeros(4,1);
                    obj.integral(11) = 0;
                end
                if abs(TraData.con_remote(5) - 1) < 0.5 || abs(TraData.con_remote(5) + 1) < 0.5 % turn
                    obj.pid_out(:,9) = zeros(4,1); 
                    obj.integral(9) = 0;                        
                end
                obj.state_march_real_pre = TraData.state_march_real;                   
            end  
           %%
            pid_out = obj.pid_out;
            closedloop_Ena = obj.closedloop_Ena;
            pid_tmp = [obj.imu_roll_ref,obj.imu_pitch_ref];
            obj.pid_Ena_pre = TraData.con_remote(2);  %protect
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
            name_1 = 'pid_out';
            name_2 = 'closedloop_Ena';
            name_3 = 'pid_tmp';
        end % getOutputNamesImpl
        % PROPAGATES CLASS METHODS ============================================
        function [out_1,out_2,out_3] = getOutputSizeImpl(~)
            %GETOUTPUTSIZEIMPL Get sizes of output ports.          
            out_1 = [4, 20];
            out_2 = [1, 1];
            out_3 = [1, 2];
        end % getOutputSizeImpl
        
        function [out_1,out_2,out_3] = getOutputDataTypeImpl(~)
            %GETOUTPUTDATATYPEIMPL Get data types of output ports.         
            out_1 = 'double';
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
