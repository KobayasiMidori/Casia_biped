classdef Friction_simulation_control < matlab.System
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
        program_counter = 0;
        actuator_begin = 0;
        p_gain = 1500;
        d_gain = 100; %100
        actuator_inc = 0;
        target_position = 0.1;
        simu_step = int32(0);
    end

    methods(Access = protected)
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
        end

        function [target_torque,random_w,random_I,simu_step] = stepImpl(obj,actuator_position,actuator_velocity)
            % Implement algorithm. Calculate y as a function of input u and
            % discrete states.
%             target_torque = 20*sin(double(2*pi*obj.program_counter/2000/5));
            if(obj.simu_step == int32(0))
                target_torque = 0.0;
                obj.actuator_begin = actuator_position;
                obj.actuator_inc = (obj.target_position-obj.actuator_begin)/4800;
                obj.simu_step = int32(1);
            elseif(obj.simu_step == int32(1))
                target_torque = obj.p_gain*(obj.actuator_begin + obj.actuator_inc * obj.program_counter-actuator_position)+obj.d_gain*(0.0-actuator_velocity);
                obj.program_counter = obj.program_counter+1;
                if(obj.program_counter >4799.5)
                    obj.program_counter = 0;
                    obj.simu_step = int32(2);
                end
            elseif(obj.simu_step == int32(2))
                obj.program_counter = obj.program_counter+1;
                target_torque = obj.p_gain*(obj.target_position-actuator_position)+obj.d_gain*(0.0-actuator_velocity);
                if(obj.program_counter >4799.5)
                    obj.program_counter = 0;
                    obj.simu_step = int32(3);
                    obj.actuator_begin = actuator_position;
                    obj.actuator_inc = (-obj.target_position-obj.actuator_begin)/4800;
                end
            elseif(obj.simu_step == int32(3))
                target_torque = obj.p_gain*(obj.actuator_begin + obj.actuator_inc * obj.program_counter-actuator_position)+obj.d_gain*(0.0-actuator_velocity);
                obj.program_counter = obj.program_counter+1;
                if(obj.program_counter >4799.5)
                    obj.program_counter = 0;
                    obj.simu_step = int32(4);
                end
            else
                 obj.program_counter = obj.program_counter+1;
                target_torque = obj.p_gain*(-obj.target_position-actuator_position)+obj.d_gain*(0.0-actuator_velocity);
                if(obj.program_counter >4799.5)
                    obj.program_counter = 0;
                    obj.simu_step = int32(1);
                    obj.actuator_begin = actuator_position;
                    obj.actuator_inc = (obj.target_position-obj.actuator_begin)/4800;
                end
            end
            simu_step = obj.simu_step;
            random_w = rand(1)/10;
            random_I = rand(1)/2;
        end

        function resetImpl(obj)
            % Initialize / reset discrete-state properties
        end
    end
end
