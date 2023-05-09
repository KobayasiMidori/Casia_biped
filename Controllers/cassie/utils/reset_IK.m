function [IK_delta, get_ready_IK_out, get_ready_all] = reset_IK(IK_delta_pre, IK_delta_OFF, IK_slop, Ts)
        num = length(IK_delta_pre);
        IK_delta = zeros(num,1);
        get_ready_IK = zeros(num,1);
        for i = 1:num
            IK_delta(i) = Ramp(IK_delta_OFF(i), IK_delta_pre(i) , IK_slop*Ts);
            if abs(IK_delta_OFF(i) - IK_delta(i)) < IK_slop*Ts
                get_ready_IK(i) = 1;
            else
                get_ready_IK(i) = 0;
            end            
        end
        if get_ready_IK(1) && get_ready_IK(2) && get_ready_IK(3) && get_ready_IK(4)   && get_ready_IK(5)   && get_ready_IK(6) &&...
           get_ready_IK(7) && get_ready_IK(8) && get_ready_IK(9) && get_ready_IK(10) && get_ready_IK(11) && get_ready_IK(12)  
            get_ready_all = 0;
            for i = 1:num
                get_ready_IK(i) = 0;
            end
        else
            get_ready_all = 1;
        end
        get_ready_IK_out = get_ready_IK;
end

