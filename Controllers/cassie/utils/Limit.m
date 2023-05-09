function output = Limit(input, limit_down, limit_up)
    % limit output
    if input < limit_down
        output = limit_down;
    elseif input > limit_up
        output = limit_up;
    else
        output = input;
    end
end
