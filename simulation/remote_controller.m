% rc controller

classdef remote_controller < matlab.System & matlab.system.mixin.Propagates
    % Public, tunable properties
    properties

    end

    properties(DiscreteState)

    end

    % Pre-computed constants
    properties(Access = private)
        is_work = 0;
        cmd_pre = zeros(6,1);
        ll_length = 1;
    end

    methods(Access = protected)
        
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
        end

        function [cassieOuts, rc_status] = stepImpl(obj, cassieOut, t, sba, cmd, u_status)
            % Implement algorithm. Calculate y as a function of input u and
            % discrete states.
            cassieOuts = cassieOut;
            RadioButton = Tool.RadioChannelToButton(cassieOut.pelvis.RC);
            if t < 5
                RadioButton.LSA = median([-1,t-0.5-1, obj.ll_length]);
            else
                if u_status == 1
                    obj.is_work = 1;
                end
                
                if obj.is_work
                    if u_status == 1
                        RadioButton.SBA = sba;
                        RadioButton.LVA = cmd(1);
                        RadioButton.LSA = cmd(2);
                        RadioButton.LHA = cmd(3);
                        RadioButton.RHA = cmd(4);
                        RadioButton.RVA = cmd(5);
                        obj.cmd_pre(1) = sba;
                        obj.cmd_pre(2) = cmd(1);
                        obj.cmd_pre(3) = cmd(2);
                        obj.cmd_pre(4) = cmd(3);
                        obj.cmd_pre(5) = cmd(4);
                        obj.cmd_pre(6) = cmd(5);
                    else
                        RadioButton.SBA = obj.cmd_pre(1);
                        RadioButton.LVA = obj.cmd_pre(2);
                        RadioButton.LSA = obj.cmd_pre(3);
                        RadioButton.LHA = obj.cmd_pre(4);
                        RadioButton.RHA = obj.cmd_pre(5);
                        RadioButton.RVA = obj.cmd_pre(6);
                    end
                else
                    RadioButton.SBA = 1;
                    RadioButton.LSA = obj.ll_length;
                    if t > 8
                        RadioButton.LVA = 0;
                    end
                end
            end
            rc_status = obj.is_work;
            cassieOuts.pelvis.RC = Tool.RButtonToChannel(RadioButton);
        end

        function resetImpl(obj)
            % Initialize / reset discrete-state properties
        end
        
        function [out, out1] = getOutputSizeImpl(~)
            %GETOUTPUTSIZEIMPL Get sizes of output ports.
            out = [1, 1];
            out1 = [1, 1];
        end % getOutputSizeImpl
        
        function [out, out1] = getOutputDataTypeImpl(~)
            %GETOUTPUTDATATYPEIMPL Get data types of output ports.
            out = 'CassieOutBus';
            out1 = 'double';
        end % getOutputDataTypeImpl
        
        function [out, out1] = isOutputComplexImpl(~)
            %ISOUTPUTCOMPLEXIMPL Complexity of output ports.
            out = false;
            out1 = false;
        end % isOutputComplexImpl
        
        function [out, out1] = isOutputFixedSizeImpl(~)
            %ISOUTPUTFIXEDSIZEIMPL Fixed-size or variable-size output ports.
            out = true;
            out1 = true;
        end % isOutputFixedSizeImpl

    end
end
