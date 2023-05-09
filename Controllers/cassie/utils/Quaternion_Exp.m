function [output] = Quaternion_Exp(w)
      % Quaternion-Based Exponential Map
     nw = norm(w);
     if nw < 1e-20
        nw = 1e-20; % Prevents divisions by 0
     end
     output = [cos(nw/2); sin(nw/2)*(w./nw)];
end