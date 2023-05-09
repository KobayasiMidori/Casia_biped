function plot_t_yaw(Data)
ss = Data.qall.Data;
r_knee = ss(8,1,:);
l_knee = ss(15,1,:);
qyaw = ss(4, 1, :);
hd_yaw = Data.hd.Data;
hd_yaw = hd_yaw(7,1,:);
ss = reshape(r_knee, 1, length(ss));
ss1 = reshape(l_knee, 1, length(ss));
qyaw = reshape(qyaw, 1, length(ss));
hd_yaw = reshape(hd_yaw, 1, length(ss));
plot(Data.qall.Time, ss, 'r', Data.qall.Time, ss1, 'g',  Data.qall.Time, qyaw, 'b', Data.qall.Time, hd_yaw, 'k');
end