classdef VelocityCurrentFilter < matlab.System & matlab.system.mixin.Propagates
    % Untitled2 Add summary here
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
        FilterVelocity = zeros(14,1);
        FilrerCurrentPerUnit = zeros(10,1);
    end

    methods(Access = protected)
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
        end

        function [FilterVelocity,FilrerCurrentPerUnit] = stepImpl(obj,cassie_data)
            % Implement algorithm. Calculate y as a function of input u and
            % discrete states.
            obj.FilterVelocity(1) = cassie_data.rightLeg.hipRollDrive.velocity;   
            obj.FilterVelocity(2) = cassie_data.rightLeg.hipYawDrive.velocity;
            obj.FilterVelocity(3) = cassie_data.rightLeg.hipPitchDrive.velocity;
            obj.FilterVelocity(4) = cassie_data.rightLeg.kneeDrive.velocity;
            obj.FilterVelocity(5) = cassie_data.rightLeg.shinJoint.velocity;
            obj.FilterVelocity(6) = cassie_data.rightLeg.tarsusJoint.velocity;
            obj.FilterVelocity(7) = cassie_data.rightLeg.footDrive.velocity;
            obj.FilterVelocity(8) = cassie_data.leftLeg.hipRollDrive.velocity;
            obj.FilterVelocity(9) = cassie_data.leftLeg.hipYawDrive.velocity;
            obj.FilterVelocity(10) = cassie_data.leftLeg.hipPitchDrive.velocity;
            obj.FilterVelocity(11) = cassie_data.leftLeg.kneeDrive.velocity;
            obj.FilterVelocity(12) = cassie_data.leftLeg.shinJoint.velocity;
            obj.FilterVelocity(13) = cassie_data.leftLeg.tarsusJoint.velocity;
            obj.FilterVelocity(14) = cassie_data.leftLeg.footDrive.velocity;
            FilterVelocity = obj.FilterVelocity;
            obj.FilrerCurrentPerUnit(1) = cassie_data.rightLeg.hipRollDrive.torque;   
            obj.FilrerCurrentPerUnit(2) = cassie_data.rightLeg.hipYawDrive.torque;
            obj.FilrerCurrentPerUnit(3) = cassie_data.rightLeg.hipPitchDrive.torque;
            obj.FilrerCurrentPerUnit(4) = cassie_data.rightLeg.kneeDrive.torque;
            obj.FilrerCurrentPerUnit(5) = cassie_data.rightLeg.footDrive.torque;
            obj.FilrerCurrentPerUnit(6) = cassie_data.leftLeg.hipRollDrive.torque;
            obj.FilrerCurrentPerUnit(7) = cassie_data.leftLeg.hipYawDrive.torque;
            obj.FilrerCurrentPerUnit(8) = cassie_data.leftLeg.hipPitchDrive.torque;
            obj.FilrerCurrentPerUnit(9) = cassie_data.leftLeg.kneeDrive.torque;
            obj.FilrerCurrentPerUnit(10) = cassie_data.leftLeg.footDrive.torque;
            FilrerCurrentPerUnit = obj.FilrerCurrentPerUnit;
        end
        
        function resetImpl(obj)
            % Initialize / reset discrete-state properties
        end
        function [v_fil,c_fil] = getOutputSizeImpl(~)
            %GETOUTPUTSIZEIMPL Get sizes of output ports.
            v_fil = [14,1];
            c_fil = [10,1];
        end % getOutputSizeImpl
        
        function [v_fil,c_fil] = getOutputDataTypeImpl(~)
            %GETOUTPUTDATATYPEIMPL Get data types of output ports.
            v_fil = 'double';
            c_fil = 'double';
        end % getOutputDataTypeImpl
        
        function [v_fil,c_fil] = isOutputComplexImpl(~)
            %ISOUTPUTCOMPLEXIMPL Complexity of output ports.
            v_fil = false;
             c_fil = false;
        end % isOutputComplexImpl
        
        function [v_fil,c_fil]= isOutputFixedSizeImpl(~)
            %ISOUTPUTFIXEDSIZEIMPL Fixed-size or variable-size output ports.
            v_fil = true;
             c_fil = true;
        end % isOutputFixedSizeImpl

    end
end
