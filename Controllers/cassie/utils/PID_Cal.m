function [pidOUT,pidPre] = PID_Cal(pidIN,Ts,pidPre,Index)
    Ref = pidIN.Ref;
    Fpb = pidIN.Fpb;
    flag = pidIN.flag;
    deadzone = pidIN.deadzone;
    I_para = pidIN.I_para;
    Ilim = pidIN.Ilim;
    P_para = pidIN.P_para;
    D_para = pidIN.D_para;
    fre = pidIN.fre;
    pid_sign = pidIN.sign;
    outLim = pidIN.outLim;
    pid_Ena = pidIN.Ena;
    pid_slop = pidIN.slop;

    errPre = pidPre.err;
    integral = pidPre.integral;
    DvalPre = pidPre.PIDval(3,:);
    valPre = pidPre.PIDval(4,:);
    LpfOutPre = pidPre.LpfOut;    
    NotInPre = pidPre.NotIn;
    NotOutPre = pidPre.NotOut;    

    val = 0;
    
    if abs(pid_Ena - 1) < 0.1
        %PID Calculate
        %% Err Processing
        err =  Ref - Fpb;
%         if (abs(flag - 1) < 0.5) && err > 0.0  %right stance
%             err = 0.0;
%         end
%         if (abs(flag -(-1)) < 0.5) && err < 0.0   %left stance
%             err = 0.0;
%         end    
        %% I_value calculate
        Ierr = err;
        %Dead zone
        if Ierr > deadzone 
            Ierr = Ierr - deadzone;
        elseif Ierr < -deadzone
            Ierr = Ierr + deadzone;
        else 
            Ierr = 0.0;
        end
        Ival = I_para*Ierr*Ts+integral;  
        %integral limit
        if (abs(flag - 1) < 0.5) %right stance
            if Ival < Ilim(1)
                Ival = Ilim(1);
            end 
            if Ival > 0 
                Ival = 0;
            end             
        elseif (abs(flag - (-1)) < 0.5) %left stance
            if Ival < 0
                Ival = 0;
            end 
            if Ival > Ilim(2) 
                Ival = Ilim(2);
            end             
        else
            if Ival < Ilim(1)
                Ival = Ilim(1);
            end 
            if Ival > Ilim(2) 
                Ival = Ilim(2);
            end    
        end
        integral = Ival;
        %% P_value calculate
        Pval = P_para*err;
        if (abs(flag - 1) < 0.5) %right stance
            if Pval > 0
                Pval = 0;
            end
        elseif (abs(flag - (-1)) < 0.5) %left stance
            if Pval < 0
                Pval = 0;
            end            
        end
        
        %% D_value calculate
        if (errPre == 0)
            errPre = err;
        end
        Dval = D_para*(err - errPre)/Ts;
        if  abs(Dval) < 1e-10
           Dval = DvalPre;
        end
        % D filter
        LPF_IN = Dval;
        [LpfOut,LpfOutPre] = LPF(LPF_IN,Ts,fre,LpfOutPre);     
        Dval = LpfOut;
        %% OUT_value  Processing
        val = pid_sign*(Pval + Ival + Dval);            
        % notchfilter
        NotIn = val;
        NotOut =notchfilter(NotIn,NotInPre,NotOutPre,Index);
        NotInPre(2,:) = NotInPre(1,:);
        NotInPre(1,:) = NotIn;            
        NotOutPre(2,:) = NotOutPre(1,:);
        NotOutPre(1,:) = NotOut; 
        val = NotOut; 
        % out_value limit
        if val < outLim(1)
            val = outLim(1);
        end
        if val > outLim(2)
            val = outLim(2);
        end
    else
        if abs(pid_Ena) < 0.1 % 0
            val = 0;            
        elseif abs(pid_Ena - (-1)) < 0.1  % -1
            val = Ramp(0.0, valPre, pid_slop*Ts);   % off-enable interp              
        elseif abs(pid_Ena - (-2)) < 0.1  % -1
            val = 0;              
        end
        Pval = 0;
        Ival = 0;
        Dval = 0;
        err = 0;
        integral = 0; 
        LpfOutPre = zeros(2,1);
        NotInPre = zeros(2,1);            
        NotOutPre = zeros(2,1);
    end
    %% value_pre
    pidOUT.Pval = Pval;
    pidOUT.Ival = Ival;
    pidOUT.Dval = Dval;
    pidOUT.val = val;
    
    pidPre.err = err;
    pidPre.integral = integral;
    pidPre.PIDval = [Pval;Ival;Dval;val];
    pidPre.LpfOut = LpfOutPre;
    pidPre.NotIn = NotInPre;            
    pidPre.NotOut = NotOutPre; 
end

