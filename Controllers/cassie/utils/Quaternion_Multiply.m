   function [output] = Quaternion_Multiply(p, q)
       qw = q(1); 
       qv = q(2:4); 
       output = [qw, -qv'; qv, qw*eye(3)-skew(qv)] * p;
   end