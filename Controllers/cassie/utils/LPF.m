function [Data_f, Data_f_pre] = LPF(Data,Ts,fre,Data_f_pre)
%     LPF_para = 2*pi*fre*Ts/(1+2*pi*fre*Ts);
%     Data_f = LPF_para*Data + (1-LPF_para)*Data_f_pre;
    Og = 2;
    w = 2*pi*fre;
    LPF_para1 = w*w*Ts*Ts/(1+Og*w*Ts+w*w*Ts*Ts);
    LPF_para2 = (2+Og*w*Ts)/(1+Og*w*Ts+w*w*Ts*Ts);
    LPF_para3 = -1/(1+Og*w*Ts+w*w*Ts*Ts);
    Data_f = LPF_para1*Data(1,:) + LPF_para2*Data_f_pre(1,:) + LPF_para3*Data_f_pre(2,:);
    Data_f_pre(2,:) = Data_f_pre(1,:);
    Data_f_pre(1,:) = Data_f;
end

