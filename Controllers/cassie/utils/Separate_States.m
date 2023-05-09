    function [q, v, p, ba, bg] = Separate_States(x) 
            % Separate state vector into components
            q = x(1:4);     % Orientation
            v = x(5:7);     % Velocity
            p = x(8:10);    % Position
            ba = x(11:13);  % Accel Bias
            bg = x(14:16);  % Gyro Bias
    end