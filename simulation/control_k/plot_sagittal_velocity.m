function plot_sagittal_velocity(Data)
    ss = Data.torso_vx_b_fil.Data;
    ss1 = Data.task.Data;
    ss = reshape(ss, 1, length(ss));
    ss1 = reshape(ss1, 1, length(ss1));
    plot(Data.qall.Time, ss, Data.qall.Time, ss1);
end