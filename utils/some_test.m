b = func.TrajectoryGenerator(2, 2000);
b = set_position(b, -5, 0);
index = 0:1999;
p_val = zeros(1, 2000);
for i=0:1999
    p_val((i+1)) = calc(b, i);
end
v_val = zeros(1, 2000);
for i=0:1999
    v_val((i+1)) = calc_velo(b, i);
end