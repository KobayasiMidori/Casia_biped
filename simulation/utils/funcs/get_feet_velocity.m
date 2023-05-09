function [l_foot_v, r_foot_v] = get_feet_velocity(q,dq)
    JR = Jp_toe_joint_right(q);
    JL = Jp_toe_joint_left(q);
    r_foot_v = JR * dq;
    l_foot_v = JL * dq;
end