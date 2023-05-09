function R = Rodrigues(a,theta)
    E = [1 0 0; 0 1 0; 0 0 1];
    a_m = [0 -a(3) a(2); a(3) 0 -a(1);-a(2) a(1) 0];
    R = E + a_m*sin(theta) + a_m*a_m*(1-cos(theta));
end

