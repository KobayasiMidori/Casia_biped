function output = Limit_delta(input, base, limit_down, limit_up)
    % limit output
    if base - abs(input) < limit_down
        output = -1*sign(input)*(limit_down-base);
    elseif base + abs(input) > limit_up
        output = sign(input)*(limit_up-base);
    else
        output = input;
    end 
end


