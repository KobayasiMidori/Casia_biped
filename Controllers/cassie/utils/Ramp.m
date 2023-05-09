function output = Ramp(target, real, inc)
    if abs(real - target) > inc
        output = real + sign(target - real)*inc;
    else
        output = target;
    end   
end

