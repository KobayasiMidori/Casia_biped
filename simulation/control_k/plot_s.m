function plot_s(Data)
    ss = Data.s.Data;
    ss1 = ss(1,1,:);
    ss1 = reshape(ss1, 1, length(ss));
    ss2 = Data.s_sw.Data;
    ss2 = reshape(ss2, 1, length(ss2));
    plot(Data.qall.Time, ss1, Data.qall.Time, ss2);
end