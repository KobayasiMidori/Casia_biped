LL_des = 0;
Step_height = 0.02;
t_f = 0.3;
coeff = Get_traj_coeff(Step_height, LL_des,t_f);

for i = 1:1:100
    s = i*0.01;
    if s<t_f
        L(i) = coeff(1,1) + coeff(2,1)*s + coeff(3,1)*s^2 + coeff(4,1)*s^3;
    else 
        L(i) = coeff(1,2)+ coeff(2,2)*(s-t_f) + coeff(3,2)*(s-t_f)^2 + coeff(4,2)*(s-t_f)^3;
    end
end
s = 0.01:0.01:1;
plot(s,L)

                       