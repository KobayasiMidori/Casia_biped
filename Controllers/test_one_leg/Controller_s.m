classdef Controller_s < matlab.System & matlab.system.mixin.Propagates & matlab.system.mixin.SampleTime
    % Untitled Add summary here
    %
    % This template includes the minimum set of functions required
    % to define a System object with discrete state.

    % Public, tunable properties
    properties

    end

    properties(DiscreteState)

    end

    % Pre-computed constants
    properties(Access = private)
        sin_index = 0;
        error_rms = 0;
        error_total = 0;
        state_index = 0;
        inter_index = 0;
        
        foot_begin = 0.0;
        knee_begin = 0.0;
        foot_inc = 0.0;
        knee_inc = 0.0;
        
        hip_pitch_begin = 0.0;
        hip_pitch_inc = 0.0;
        
        hip_yaw_begin = 0.0;
        hip_yaw_inc = 0.0;
    end

    methods(Access = protected)
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
        end

        function [cassie_input, error_rms_o, real_v, actu_v] = stepImpl(obj, cassie_data, p_val, d_val)
            % Implement algorithm. Calculate y as a function of input u and
            % discrete states.
            
%             ElmoInBus_MATLABStruct = struct;
%             ElmoInBus_MATLABStruct.controlWord = uint16(0);
%             ElmoInBus_MATLABStruct.torque = 0;
%             
%             
%             ElmoInBus_Param = Simulink.Parameter;
%             ElmoInBus_Param.Value = ElmoInBus_MATLABStruct;
%             ElmoInBus_Param.CoderInfo.StorageClass = 'Auto';
%             ElmoInBus_Param.Description = '';
%             ElmoInBus_Param.DataType = 'Bus: ElmoInBus';
%             ElmoInBus_Param.Min = [];
%             ElmoInBus_Param.Max = [];
%             ElmoInBus_Param.DocUnits = '';
%             
%             clear ElmoInBus_MATLABStruct;
            

            cassie_input.leftLeg.hipRollDrive.controlWord = uint16(0);
            cassie_input.leftLeg.hipRollDrive.torque = 0;
            cassie_input.leftLeg.hipYawDrive.controlWord = uint16(0);
            cassie_input.leftLeg.hipYawDrive.torque = 0;
            cassie_input.leftLeg.hipPitchDrive.controlWord = uint16(0);
            cassie_input.leftLeg.hipPitchDrive.torque = 0;
            cassie_input.leftLeg.kneeDrive.controlWord = uint16(0);
            cassie_input.leftLeg.kneeDrive.torque = 0;
            cassie_input.leftLeg.footDrive.controlWord = uint16(0);
            cassie_input.leftLeg.footDrive.torque = 0;
            error_rms_o = -1;
            real_v = obj.state_index; 
            actu_v = -1;
            if cassie_data.pelvis.targetPc.etherCatStatus(2) == 8
                % for test
                if obj.state_index == 2
                    taget_position = 0.087*sin(2*pi*obj.sin_index/3200);
                    taget_velocity = 2*pi*0.087*cos(2*pi*obj.sin_index/3200);
%                     taget_position = 0.2*sin(2*pi*obj.sin_index/1600);
%                     taget_velocity = 2*pi*0.2*cos(2*pi*obj.sin_index/1600);
%                     taget_position_2 = 0.18*sin(2*pi*obj.sin_index/1600);
%                     taget_velocity_2 = 2*pi*0.18*cos(2*pi*obj.sin_index/1600);
%                     taget_position_3 = 0.16*sin(2*pi*obj.sin_index/1600);
%                     taget_velocity_3 = 2*pi*0.16*cos(2*pi*obj.sin_index/1600);
                    % cassie_input.leftLeg.hipPitchDrive.torque = p_val*(taget_position - cassie_data.leftLeg.hipPitchDrive.position) + d_val*(taget_velocity-cassie_data.leftLeg.hipPitchDrive.velocity);
                    cassie_input.leftLeg.footDrive.torque = 60*(0 - cassie_data.leftLeg.footDrive.position) + 1*(0 - cassie_data.leftLeg.footDrive.velocity);
                    cassie_input.leftLeg.kneeDrive.torque = 420*(0 - cassie_data.leftLeg.kneeDrive.position) + 1.5*(0 - cassie_data.leftLeg.kneeDrive.velocity);
                    cassie_input.leftLeg.hipPitchDrive.torque = 280*(0 - cassie_data.leftLeg.hipPitchDrive.position) + 1.5*(0 - cassie_data.leftLeg.hipPitchDrive.velocity);
                    cassie_input.leftLeg.hipYawDrive.torque = 300*(0 - cassie_data.leftLeg.hipYawDrive.position) + 1*(0 - cassie_data.leftLeg.hipYawDrive.velocity);
                    
                    cassie_input.leftLeg.hipRollDrive.torque = p_val*(taget_position - cassie_data.leftLeg.hipRollDrive.position) + d_val*(taget_velocity-cassie_data.leftLeg.hipRollDrive.velocity);
                    
                    obj.error_total = obj.error_total + (taget_position - cassie_data.leftLeg.hipRollDrive.position)^2; 
                    obj.sin_index = obj.sin_index + 1;
                    real_v = taget_position;
                    actu_v = cassie_data.leftLeg.hipRollDrive.position;
                    
                    if obj.sin_index > 3199.5
                        obj.sin_index = 0;
                        obj.error_rms = sqrt(obj.error_total/1600.0);
                        obj.error_total = 0;
                    end
                elseif obj.state_index == 1
                    cassie_input.leftLeg.kneeDrive.torque = 420*( (obj.knee_begin-obj.inter_index*obj.knee_inc)- cassie_data.leftLeg.kneeDrive.position) + 1.5*(0.0-cassie_data.leftLeg.kneeDrive.velocity);
                    cassie_input.leftLeg.footDrive.torque = 60*((obj.foot_begin-obj.inter_index*obj.foot_inc) - cassie_data.leftLeg.footDrive.position) + 1*(0.0-cassie_data.leftLeg.footDrive.velocity);
                    cassie_input.leftLeg.hipPitchDrive.torque = 280*((obj.hip_pitch_begin-obj.inter_index*obj.hip_pitch_inc) - cassie_data.leftLeg.hipPitchDrive.position) + 1.5*(0.0-cassie_data.leftLeg.hipPitchDrive.velocity);
                    cassie_input.leftLeg.hipYawDrive.torque = 300*((obj.hip_yaw_begin-obj.inter_index*obj.hip_yaw_inc) - cassie_data.leftLeg.hipYawDrive.position) + 1.5*(0.0-cassie_data.leftLeg.hipYawDrive.velocity);
                    obj.inter_index = obj.inter_index + 1;
                    if obj.inter_index > 9999.5
                        obj.state_index = 2;
                    end
                elseif obj.state_index == 0
                    obj.foot_begin = cassie_data.leftLeg.footDrive.position;
                    obj.knee_begin = cassie_data.leftLeg.kneeDrive.position;
                    obj.hip_pitch_begin = cassie_data.leftLeg.hipPitchDrive.position;
                    obj.hip_yaw_begin = cassie_data.leftLeg.hipYawDrive.position;
                    obj.foot_inc = (obj.foot_begin)/10000.0;
                    obj.knee_inc = (obj.knee_begin)/10000.0;
                    obj.hip_pitch_inc = (obj.hip_pitch_begin)/10000.0;
                    
                    obj.hip_yaw_inc = (obj.hip_yaw_begin)/10000.0;
                    obj.state_index = 1;
                end
                error_rms_o = obj.error_rms;
            end
            
        end

        function resetImpl(obj)
            % Initialize / reset discrete-state properties
        end
        
        function [name_1, name_2, name_3]  = getInputNamesImpl(~)
            %GETINPUTNAMESIMPL Return input port names for System block
            name_1 = 'cassieOutputs';
            name_2 = 'p_val';
            name_3 = 'd_val';
        end % getInputNamesImpl
        
        function [name_1, name_2, name_3, name_4] = getOutputNamesImpl(~)
            %GETOUTPUTNAMESIMPL Return output port names for System block
            name_1 = 'userInputs';
            name_2 = 'error_rms';
            name_3 = 'real_val';
            name_4 = 'actual_val';
        end % getOutputNamesImpl
         % PROPAGATES CLASS METHODS ============================================
        function [out, out_1, out_2, out_3] = getOutputSizeImpl(~)
            %GETOUTPUTSIZEIMPL Get sizes of output ports.
            out = [1, 1];
            out_1 = [1, 1];
            out_2 = [1, 1];
            out_3 = [1, 1];
        end % getOutputSizeImpl
        
        function [out, out_1, out_2, out_3] = getOutputDataTypeImpl(~)
            %GETOUTPUTDATATYPEIMPL Get data types of output ports.
            out = 'CassieInBus';
            out_1 = 'double';
            out_2 = 'double';
            out_3 = 'double';
        end % getOutputDataTypeImpl
        
        function [out, out_1, out_2, out_3] = isOutputComplexImpl(~)
            %ISOUTPUTCOMPLEXIMPL Complexity of output ports.
            out = false;
            out_1 = false;
            out_2 = false;
            out_3 = false;
        end % isOutputComplexImpl
        
        function [out, out_1, out_2, out_3] = isOutputFixedSizeImpl(~)
            %ISOUTPUTFIXEDSIZEIMPL Fixed-size or variable-size output ports.
            out = true;
            out_1 = true;
            out_2 = true;
            out_3 = true;
        end % isOutputFixedSizeImpl
    end
end
