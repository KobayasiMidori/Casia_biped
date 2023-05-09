classdef EncoderFilterS < matlab.System & matlab.system.mixin.Propagates
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
        jointPosition = zeros(14,1);
    end

    methods(Access = protected)
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
        end

        function [JointPosition] = stepImpl(obj, CassieOutputs)
            % Implement algorithm. Calculate y as a function of input u and
            % discrete states.
            %JointPosition = zeros(14);
            obj.jointPosition(1) = CassieOutputs.rightLeg.hipRollDrive.position;
            obj.jointPosition(2) = CassieOutputs.rightLeg.hipYawDrive.position;
            obj.jointPosition(3) = CassieOutputs.rightLeg.hipPitchDrive.position;
            obj.jointPosition(4) = CassieOutputs.rightLeg.kneeDrive.position;
            obj.jointPosition(5) = CassieOutputs.rightLeg.shinJoint.position;
            obj.jointPosition(6) = CassieOutputs.rightLeg.tarsusJoint.position;
            obj.jointPosition(7) = CassieOutputs.rightLeg.footDrive.position;
            obj.jointPosition(8) = CassieOutputs.leftLeg.hipRollDrive.position;
            obj.jointPosition(9) = CassieOutputs.leftLeg.hipYawDrive.position;
            obj.jointPosition(10) = CassieOutputs.leftLeg.hipPitchDrive.position;
            obj.jointPosition(11) = CassieOutputs.leftLeg.kneeDrive.position;
            obj.jointPosition(12) = CassieOutputs.leftLeg.shinJoint.position;
            obj.jointPosition(13) = CassieOutputs.leftLeg.tarsusJoint.position;
            obj.jointPosition(14) = CassieOutputs.leftLeg.footDrive.position;
            JointPosition = obj.jointPosition;
        end

        function resetImpl(obj)
            % Initialize / reset discrete-state properties
        end
        
        function [q_fil] = getOutputSizeImpl(~)
            %GETOUTPUTSIZEIMPL Get sizes of output ports.
            q_fil = [14, 1];
            
        end % getOutputSizeImpl
        
        function [q_fil] = getOutputDataTypeImpl(~)
            %GETOUTPUTDATATYPEIMPL Get data types of output ports.
            q_fil = 'double';
        end % getOutputDataTypeImpl
        
        function [q_fil] = isOutputComplexImpl(~)
            %ISOUTPUTCOMPLEXIMPL Complexity of output ports.
            q_fil = false;
        end % isOutputComplexImpl
        
        function [q_fil]= isOutputFixedSizeImpl(~)
            %ISOUTPUTFIXEDSIZEIMPL Fixed-size or variable-size output ports.
            q_fil = true;
        end % isOutputFixedSizeImpl
    end
end
