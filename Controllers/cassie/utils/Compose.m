function [x] = Compose(x_bar, delta_x)
            % Update state prediction with error correction vector
            [q_bar, v_bar, p_bar, ba_bar, bg_bar] = Separate_States(x_bar);
            q = Quaternion_Multiply(q_bar, Quaternion_Exp(delta_x(1:3)));
            v = v_bar + delta_x(4:6);
            p = p_bar + delta_x(7:9);
            bg = bg_bar + delta_x(10:12);
            ba = ba_bar + delta_x(13:15);

            x = [q; v; p; ba; bg];
end