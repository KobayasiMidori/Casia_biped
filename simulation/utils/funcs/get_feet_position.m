function [l_foot_p, r_foot_p] = get_feet_position(q, dq)
    l_foot_p = p_toe_joint_left(q);
    r_foot_p = p_toe_joint_right(q);
end