      classdef Output < matlab.System & matlab.system.mixin.Propagates & matlab.system.mixin.SampleTime
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
        is_sto = 0;
        pre_state = 0;
        out_torque = zeros(1, 10);
        up_bound = zeros(1, 10);
        low_bound = zeros(1, 10);
        pre_position = zeros(1, 10);
        motor_real_current_filter =zeros(1,10);
        motor_velocity_filter =zeros(1,10);
        motor_velocity_20T = zeros(20,10);
        frction_direction_mode = zeros(1,10);
        out_torque_cal = zeros(1, 10);
        km = zeros(1,10);
        ratio = zeros(1,10); 

        foot_real_p = zeros(10,2);   
        motor_error = zeros(10,1);
        
        num_err_etherCat = 0;
    end

    methods(Access = protected)
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
%             for i = 1:10
%                 obj.inter_array(i) =  func.TrajectoryGenerator(5, 10000);
%             end
              obj.up_bound(1) = 6/180*pi;%0.239389816;
              obj.up_bound(2) = 0.623712574;
              obj.up_bound(3) = 0.664385834;
              obj.up_bound(4) = 1.462493697;
              obj.up_bound(5) = 0.982809282;
              obj.up_bound(6) = 15/180*pi;
              obj.up_bound(7) = 0.539106441;
              obj.up_bound(8) = 0.69526827;
              obj.up_bound(9) = 1.42247955;
              obj.up_bound(10) =1.044070833;
              obj.low_bound(1) = -15/180*pi;
              obj.low_bound(2) = -0.683548044;
              obj.low_bound(3) = -0.953436813;
              obj.low_bound(4) = -0.112228956;
              obj.low_bound(5) =-0.618439671;
              obj.low_bound(6) =-6/180*pi;%-0.254369656;
              obj.low_bound(7) =-0.471541374;
              obj.low_bound(8) =-0.553181499;
              obj.low_bound(9) = -0.075678148;
              obj.low_bound(10) = -0.488402681;
              obj.km(1) = 2.9/23;
              obj.km(2) = 0.106;
              obj.km(3) = 2.9/23;
              obj.km(4) = 2.9/23;
              obj.km(5) = 0.0955;
              obj.km(6) = 2.9/23;
              obj.km(7) = 0.106;
              obj.km(8) = 2.9/23;
              obj.km(9) = 2.9/23;
              obj.km(10) = 0.0955;
              obj.ratio(1) = 33;
              obj.ratio(2) = 50;
              obj.ratio(3) = 37;
              obj.ratio(4) = 37;
              obj.ratio(5) = 50;
              obj.ratio(6) = 33;
              obj.ratio(7) = 50;
              obj.ratio(8) = 37;
              obj.ratio(9) = 37;
              obj.ratio(10) = 50;
        end

        function [cassie_input,user_data,f_real_p,motor_error,is_sto] = stepImpl(obj,filter_velocity,filter_currentPerUnit, ...
                TraData,IkData,force)
            % Implement algorithm. Calculate y as a function of input u and
            % discrete states.
            % should in one file                    
            cassie_input = PreFunctions.ConstrutData;
            user_data = PreFunctions.UserDataCon;           
            state_code = 0;  
            if (TraData.is_op >0.5 )
                state_code = 1;
                for i = 1:10
                    obj.motor_real_current_filter(i) = TraData.motor_dir(i)*filter_currentPerUnit(i)*TraData.motor_rated_current(i);
                end
                obj.motor_velocity_filter(1) = TraData.motor_dir(1)*filter_velocity(1);
                obj.motor_velocity_filter(2) = TraData.motor_dir(2)*filter_velocity(2);
                obj.motor_velocity_filter(3) = TraData.motor_dir(3)*filter_velocity(3);
                obj.motor_velocity_filter(4) = TraData.motor_dir(4)*filter_velocity(4);
                obj.motor_velocity_filter(5) = TraData.motor_dir(5)*filter_velocity(7);
                obj.motor_velocity_filter(6) = TraData.motor_dir(6)*filter_velocity(8);
                obj.motor_velocity_filter(7) = TraData.motor_dir(7)*filter_velocity(9);
                obj.motor_velocity_filter(8) = TraData.motor_dir(8)*filter_velocity(10);
                obj.motor_velocity_filter(9) = TraData.motor_dir(9)*filter_velocity(11);
                obj.motor_velocity_filter(10) = TraData.motor_dir(10)*filter_velocity(14);
                for i = 1:19
                    obj.motor_velocity_20T(i,:) = obj.motor_velocity_20T(i+1,:);
                end
                obj.motor_velocity_20T(20,:) = obj.motor_velocity_filter(1,:);
                for j = 1:10
                    if(abs(obj.motor_velocity_20T(20,j)) < 0.01)
                        if(abs(obj.motor_velocity_20T(1,j)) < 0.01)
                            obj.frction_direction_mode(1,j) = 1;
                        else
                            obj.frction_direction_mode(1,j) = 0;
                        end
                    else
                        obj.frction_direction_mode(1,j) = 0;
                    end
                end
             %% 
                for i = 1:10
                    obj.out_torque_cal(i) = IkData.out_current_cal(i)*obj.km(i)*obj.ratio(i);
                    obj.out_torque(i) = GetCurrent(obj.motor_velocity_filter(i),TraData.motor_real_current(i),obj.out_torque_cal(i), obj.frction_direction_mode(i),i);
                end   
                %-----------------
%                 obj.out_torque(10) = 0.0;
                %-------------------
                FK_out_r = FK_robot_right_V3(TraData.motor_position(1),TraData.motor_position(2),TraData.motor_position(3),...
                    TraData.motor_position(4),TraData.motor_position_pas(1),TraData.motor_position_pas(2),TraData.motor_position(5));
                obj.foot_real_p(1,1) = FK_out_r.foot_x;
                obj.foot_real_p(2,1) = FK_out_r.foot_z;
                obj.foot_real_p(3,1) = FK_out_r.foot_p;
                obj.foot_real_p(4,1) = FK_out_r.qp1;
                obj.foot_real_p(5,1) = FK_out_r.qp2;
                obj.foot_real_p(6,1) = FK_out_r.F_val(1);
                obj.foot_real_p(7,1) = FK_out_r.F_val(2);
                obj.foot_real_p(8,1) = FK_out_r.PD_3D(1);
                obj.foot_real_p(9,1) = FK_out_r.PD_3D(2);
                obj.foot_real_p(10,1) = FK_out_r.PD_3D(3);
                FK_out_l = FK_robot_left_V3(TraData.motor_position(6),TraData.motor_position(7),TraData.motor_position(8),...
                    TraData.motor_position(9),TraData.motor_position_pas(3),TraData.motor_position_pas(4),TraData.motor_position(10));
                obj.foot_real_p(1,2) = FK_out_l.foot_x;
                obj.foot_real_p(2,2) = FK_out_l.foot_z;
                obj.foot_real_p(3,2) = FK_out_l.foot_p;
                obj.foot_real_p(4,2) = FK_out_l.qp1;
                obj.foot_real_p(5,2) = FK_out_l.qp2;
                obj.foot_real_p(6,2) = FK_out_l.F_val(1);
                obj.foot_real_p(7,2) = FK_out_l.F_val(2);
                obj.foot_real_p(8,2) = FK_out_l.PD_3D(1);
                obj.foot_real_p(9,2) = FK_out_l.PD_3D(2);
                obj.foot_real_p(10,2) = FK_out_l.PD_3D(3);
            end  
            for i = 1:10
                obj.motor_error(i) = IkData.actor_dst_rlt(i) - TraData.motor_position(i);
            end

            %%
            if obj.is_sto == 1
                state_code = obj.pre_state;
                cassie_input.pelvis.sto = 1; 
            end            
            if (obj.is_sto < 0.5) && (TraData.is_op > 0.5)
                if ~(abs(TraData.etherCatStatus(1) ) < 0.1 || abs(TraData.etherCatStatus(1) - 1) < 0.1 || abs(TraData.etherCatStatus(1) - 2) < 0.1  || ...
                       abs(TraData.etherCatStatus(1)  - 3) < 0.1 || abs(TraData.etherCatStatus(1) - 4) < 0.1 || abs(TraData.etherCatStatus(1) - 5) < 0.1  || ...
                       abs(TraData.etherCatStatus(1)  - 8) < 0.1 || abs(TraData.etherCatStatus(1) - 9) < 0.1 || abs(TraData.etherCatStatus(1) - 21) < 0.1  || ...
                       abs(TraData.etherCatStatus(1)  - 100) < 0.1 )
                    obj.num_err_etherCat = obj.num_err_etherCat + 1;
                else
                    obj.num_err_etherCat = 0;
                end

                if abs(obj.num_err_etherCat - 4) < 0.1
                    state_code = state_code - mod(state_code,1)+3*0.1;%3;
                    cassie_input.pelvis.sto = 1;
                end
                if TraData.etherCatStatus(2) ~= 8
                    state_code = state_code - mod(state_code,1)+6*0.1;%6;
                    cassie_input.pelvis.sto = 1;
                end
                if abs(TraData.con_remote(7)-1) < 0.5
                    state_code = state_code - mod(state_code,1)+9*0.1;%9;
                    cassie_input.pelvis.sto = 1;
                end
                for i = 1:10
                    if(abs(obj.out_torque(i))> TraData.motor_rated_current(i)) 
                        obj.out_torque(i) = sign(obj.out_torque(i))* TraData.motor_rated_current(i);
                        tmp = 10+i; %11~20
                        state_code = state_code - mod(state_code,100) + tmp;
                    end
                end
                for i = 1:10                    
                    if TraData.motor_voltage(i) < 40
                        tmp = 20+i;    %21~30
                        state_code = tmp*100000000+mod(state_code/100000000,1)*100000000;
                        cassie_input.pelvis.sto = 1;
                    end
                end
                for i=1:10
                    if TraData.motor_position(i) > obj.up_bound(i)
                        tmp = 30+i;%31~40
                        state_code=tmp*100+mod(state_code/100,1)*100;
                        cassie_input.pelvis.sto = 1;
                    end                        
                    if TraData.motor_position(i) < obj.low_bound(i)
                        tmp = 40+i;%41~50
                        state_code=tmp*100+mod(state_code/100,1)*100;
                        cassie_input.pelvis.sto = 1;
                    end
                end
                for i = [3,8] 
                    if abs(TraData.motor_position(i) - IkData.actor_dst_rlt(i)) > 12/180*pi
                        tmp = 50+i; %51~60
                        state_code = tmp*10000+mod(state_code/10000,1)*10000;
                        cassie_input.pelvis.sto = 1;
                    end
                end
                for i = [4,9] 
                    if abs(TraData.motor_position(i) - IkData.actor_dst_rlt(i)) > 12/180*pi
                        tmp = 50+i; %51~60
                        state_code = tmp*10000+mod(state_code/10000,1)*10000;
                        cassie_input.pelvis.sto = 1;
                    end
                end
                for i = [1,6] 
                    if abs(TraData.motor_position(i) - IkData.actor_dst_rlt(i)) > 10/180*pi
                        tmp = 50+i; %51~60
                        state_code = tmp*10000+mod(state_code/10000,1)*10000;
                        cassie_input.pelvis.sto = 1;
                    end
                end
%                 for i = [5,10] 
%                     if abs(TraData.motor_position(i) - IkData.actor_dst_rlt(i)) > 15/180*pi
%                         tmp = 50+i; %51~60
%                         state_code = tmp*10000+mod(state_code/10000,1)*10000;
%                         cassie_input.pelvis.sto = 1;
%                     end
%                 end
                if TraData.state_index <0.5
                    for i = 1:10
                        obj.pre_position(i) = TraData.motor_position(i);
                    end
                else
                    for i=1:10
                        if abs(obj.pre_position(i) - TraData.motor_position(i)) > (pi/36)
                            tmp = 60+i; %61~70
                            state_code = tmp*1000000+mod(state_code/1000000,1)*1000000;
                            cassie_input.pelvis.sto = 1;
                        end
                        obj.pre_position(i) = TraData.motor_position(i);
                    end
                end             
                obj.is_sto = cassie_input.pelvis.sto;                
            end
            obj.pre_state = state_code;
            % test_direction calibration
            if  TraData.is_op > 0.5 && TraData.state_index > 0.5 && obj.is_sto < 0.5 
                cassie_input.rightLeg.hipRollDrive.torque = TraData.motor_dir(1)*obj.out_torque(1);
                cassie_input.rightLeg.hipYawDrive.torque =  TraData.motor_dir(2)*obj.out_torque(2);
                cassie_input.rightLeg.hipPitchDrive.torque =  TraData.motor_dir(3)*obj.out_torque(3);
                cassie_input.rightLeg.kneeDrive.torque = TraData.motor_dir(4)*obj.out_torque(4);
                cassie_input.rightLeg.footDrive.torque = TraData.motor_dir(5)*obj.out_torque(5);
                cassie_input.leftLeg.hipRollDrive.torque = TraData.motor_dir(6)*obj.out_torque(6);
                cassie_input.leftLeg.hipYawDrive.torque = TraData.motor_dir(7)*obj.out_torque(7);
                cassie_input.leftLeg.hipPitchDrive.torque = TraData.motor_dir(8)*obj.out_torque(8);
                cassie_input.leftLeg.kneeDrive.torque = TraData.motor_dir(9)*obj.out_torque(9);
                cassie_input.leftLeg.footDrive.torque = TraData.motor_dir(10)*obj.out_torque(10);
            else      
                cassie_input.rightLeg.hipRollDrive.torque = 0.0;
                cassie_input.rightLeg.hipYawDrive.torque = 0.0;
                cassie_input.rightLeg.hipPitchDrive.torque = 0.0;
                cassie_input.rightLeg.kneeDrive.torque = 0.0;
                cassie_input.rightLeg.footDrive.torque = 0.0;
                cassie_input.leftLeg.hipRollDrive.torque = 0.0;
                cassie_input.leftLeg.hipYawDrive.torque = 0.0;
                cassie_input.leftLeg.hipPitchDrive.torque = 0.0;
                cassie_input.leftLeg.kneeDrive.torque = 0.0;
                cassie_input.leftLeg.footDrive.torque = 0.0;
            end
            %%
            f_real_p = obj.foot_real_p;
            motor_error = obj.motor_error;
            is_sto = obj.is_sto;
            %copy data
            user_data.position(1) = TraData.motor_position(1);
            user_data.position(2) = TraData.motor_position(2);
            user_data.position(3) = TraData.motor_position(3);
            user_data.position(4) = TraData.motor_position(4);
            user_data.position(5) = TraData.motor_position_pas(1);
            user_data.position(6) = TraData.motor_position_pas(2);
            user_data.position(7) = TraData.motor_position(5);
            user_data.position(8) = TraData.motor_position(6);
            user_data.position(9) = TraData.motor_position(7);
            user_data.position(10) = TraData.motor_position(8);
            user_data.position(11) = TraData.motor_position(9);
            user_data.position(12) = TraData.motor_position_pas(3);
            user_data.position(13) = TraData.motor_position_pas(4);
            user_data.position(14) = TraData.motor_position(10);
            user_data.velocity(1) = TraData.motor_velocity(1);
            user_data.velocity(2) = TraData.motor_velocity(2);
            user_data.velocity(3) = TraData.motor_velocity(3);
            user_data.velocity(4) = TraData.motor_velocity(4);
            user_data.velocity(5) = TraData.motor_velocity_pas(1);
            user_data.velocity(6) = TraData.motor_velocity_pas(2);
            user_data.velocity(7) = TraData.motor_velocity(5);
            user_data.velocity(8) = TraData.motor_velocity(6);
            user_data.velocity(9) = TraData.motor_velocity(7);
            user_data.velocity(10) = TraData.motor_velocity(8);
            user_data.velocity(11) = TraData.motor_velocity(9);
            user_data.velocity(12) = TraData.motor_velocity_pas(3);
            user_data.velocity(13) = TraData.motor_velocity_pas(4);
            user_data.velocity(14) = TraData.motor_velocity(10);        %28
            for i = 1:10
                 user_data.torque(i) = obj.out_torque(i); %29-38
                 user_data.actTorque(i) = TraData.motor_real_current(i);     %39-48
            end              
            user_data.state(1) = obj.pre_state;   %49
            user_data.state(2) = TraData.etherCatStatus(1);%50
            user_data.state(3) = TraData.etherCatStatus(2);%51
%             user_data.state(4) = TraData.is_op; %52
            user_data.state(4) = TraData.state_index;
            user_data.state(5) = obj.is_sto; %53
            for i =1:10
                user_data.tau(i) = obj.out_torque_cal(i); %54
                user_data.f_mode(i) = obj.frction_direction_mode(i); %64
                user_data.motor_dst_rlt(i) = IkData.actor_dst_rlt(i); %74
            end
            user_data.imu(1) = TraData.eulZYX(3); %84 roll
            user_data.imu(2) = TraData.eulZYX(2); %85 pitch
            user_data.imu(3) = TraData.eulZYX(1); %86 yaw
            for i = 1:10
                user_data.fk_r(i) = obj.foot_real_p(i,1); %87-96
                user_data.fk_l(i) = obj.foot_real_p(i,2); %97-106
            end
            user_data.IK_dst = TraData.IK_dst; %107-112
            user_data.state_march_plan = TraData.state_march_plan; %113
            user_data.state_march_real = TraData.state_march_real; %114
            user_data.v_est = TraData.v_est; %115-117
            user_data.p_est = TraData.p_est; %118-120       
            user_data.pid = IkData.pid_out(4,:)'; %121-140
            user_data.imu_org = TraData.imu_org; %141-162 acc:141-143 w:144-146 q:147-150 pCoM£º151-153 v_CoM:154-156 v:157-159 p:160-162
            user_data.s = TraData.s; %163
            for i = 1:6
               user_data.force(i) = force(i); %164-169
            end
            user_data.imu_yaw0 = TraData.imu_yaw0; %170
            user_data.s_rl = TraData.s_rl; %171-172  
            user_data.yaw_est = TraData.yaw_est; %173-176 
            for i = 1:10
               user_data.motor_stateCode(i) = TraData.motor_stateCode(i); %177-186
            end   
            user_data.walk_p0 = TraData.walk_p0;%187-189
            user_data.eulZYX_multi = TraData.eulZYX_multi;%190-192
            user_data.walk_xzdir_wr = TraData.walk_xzdir_w(:,1);%193-195
            user_data.walk_xzdir_wl = TraData.walk_xzdir_w(:,2);%196-198 
            user_data.IK_target = IkData.IK_target;%199-208
            user_data.p_pid = [IkData.pid_out(1:3,3);IkData.pid_out(1:3,7)];%209-214
            for i = 1:10
               user_data.motor_statusWord(i) = TraData.motor_statusWord(i); %215-224
            end
            for i = 1:10
               user_data.voltage(i) = TraData.motor_voltage(i); %225-234
            end
            user_data.temp = IkData.temp;%235-244
            user_data.ErrorCode = TraData.ErrorCode;%245-254
            user_data.imu_status_word = TraData.imu_status_word;%255      
            user_data.walk_xv_tgt = TraData.walk_xv_tgt;%256    
            user_data.walk_xv_dst = TraData.walk_xv_dst;%257  
%             user_data.con_remote=[TraOutput.Enable.op;... %258
%                                                 TraOutput.Enable.pid;... %259
%                                                 TraOutput.Enable.march;... %260
%                                                 TraOutput.Enable.forward;... %261
%                                                 TraOutput.Enable.turn;... %262
%                                                 TraOutput.Enable.move;... %263
%                                                 TraOutput.Enable.ES;... %264
%                                                 TraOutput.Enable.reset;... %265
%                                                 TraOutput.Enable.fail_safe;... %266
%                                                 TraOutput.Enable.frame_lost]; %267
            user_data.con_remote = TraData.con_remote; %258-267
            user_data.battery = TraData.battery;%268-273
            user_data.IK_ry = [TraData.IK_ry(1,1); TraData.IK_ry(1,2); TraData.IK_ry(2,1); TraData.IK_ry(2,2)];%274-277
        end

        function resetImpl(obj)
            % Initialize / reset discrete-state properties
        end
        
%         function [name_1, name_2]  = getInputNamesImpl(~)
%             %GETINPUTNAMESIMPL Return input port names for System block
%             name_1 = 'CasiaBBROutputs';
%             name_2 = 'time';
%         end % getInputNamesImpl
        
        function [name_1,name_2,name_3,name_4,name_5] = getOutputNamesImpl(~)
            %GETOUTPUTNAMESIMPL Return output port names for System block
            name_1 = 'CasiaBBRInputs';
            name_2 = 'CasiaBBRData';
            name_3 = 'f_real_p';
            name_4 = 'motor_error';
            name_5 = 'is_sto';
        end % getOutputNamesImpl
        % PROPAGATES CLASS METHODS ============================================
        function [out_1,out_2,out_3,out_4,out_5] = getOutputSizeImpl(~)
            %GETOUTPUTSIZEIMPL Get sizes of output ports.          
            out_1 = [1, 1];
            out_2 = [1, 1];
            out_3 = [10, 2];
            out_4 = [10, 1];
            out_5 = [1, 1];
        end % getOutputSizeImpl
        
        function [out_1,out_2,out_3,out_4,out_5] = getOutputDataTypeImpl(~)
            %GETOUTPUTDATATYPEIMPL Get data types of output ports.         
            out_1 = 'CassieInBus';
            out_2 = 'cassieDataBus';
            out_3 = 'double';
            out_4 = 'double';
            out_5 = 'double';
        end % getOutputDataTypeImpl
        
        function [out_1,out_2,out_3,out_4,out_5] = isOutputComplexImpl(~) 
            %ISOUTPUTCOMPLEXIMPL Complexity of output ports.         
            out_1 = false;
            out_2 = false;
            out_3 = false;
            out_4 = false;
            out_5 = false;
        end % isOutputComplexImpl
        
        function [out_1,out_2,out_3,out_4,out_5] = isOutputFixedSizeImpl(~)
            %ISOUTPUTFIXEDSIZEIMPL Fixed-size or variable-size output ports.
            out_1 = true;
            out_2 = true;
            out_3 = true;
            out_4 = true;
            out_5 = true;
        end % isOutputFixedSizeImpl
    end
     end
