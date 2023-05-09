function s_LR(Data)
ss1 = Data.s_LR.Data;
ss2 = reshape(ss1(1,1,:), 1, length(ss1));
ss3 = reshape(ss1(2,1,:), 1, length(ss2));
ss4 = Data.computer_time.Data;
ss4 = reshape(ss4(1,1,:), 1, length(ss4));
plot(Data.qall.Time, ss2, 'r', Data.qall.Time, ss3, 'g', Data.qall.Time, ss4, 'b');
end