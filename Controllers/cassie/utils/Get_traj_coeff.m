function coeff = Get_traj_coeff(Step_height, LL_des,t_f)
    % traj 1
    coeff = zeros(4,2);
    L_a0 = LL_des;
    L_af = LL_des + Step_height;
    coeff(1,1) = L_a0;
    coeff(2,1) = 0;
    coeff(3,1) = 3/(t_f^2)*(L_af-L_a0);
    coeff(4,1) = -2/(t_f^3)*(L_af-L_a0);
    % traj 2
    L_b0 = LL_des + Step_height;
    L_bf = LL_des;
    coeff(1,2) = L_b0;
    coeff(2,2) = 0;
    coeff(3,2) = 3/((1-t_f)^2)*(L_bf-L_b0);
    coeff(4,2) = -2/((1-t_f)^3)*(L_bf-L_b0);            
end