% friction compensation
% 2020/11/25 zkt
%Index = 1,6,2,7,3,4,8,9,5,10
function [I] = GetCurrent(v_rads_filter,I0,Tfs,current_mode,Index) %v:rad/s I:A %Tfs:NM output_torque 
    Ff_multiple = 0;
    Ff_foot = 0;
    Km_TQ =2.9/23;   %0.1261
    Km_Kermogen_7615 = 0.106;
    Km_Kermogen_6013 = 0.0955;
    N_RV_33 = 33;
    N_RV_37 = 37;
    N_Harmonic = 50;
    if(current_mode>0.5)            
        v_rads_sign = sign(I0)*abs(v_rads_filter);
    else
        v_rads_sign = v_rads_filter;
    end
    if Index ==3 || Index ==4 || Index ==8 || Index ==9  %三维模型
        Te=I0*Km_TQ; %Te电扭矩 
        if v_rads_sign >0 
            Ff = f_PO(v_rads_sign,Te,Index);
        else
            Ff = f_NE(v_rads_sign,Te,Index);
        end   
        Ff = Ff*Ff_multiple;
        I=(Tfs-N_RV_37*Ff)/(N_RV_37*Km_TQ);
    elseif Index == 1 || Index ==6     %旧模型
        Te=I0*Km_TQ; %Te电扭矩
        if v_rads_sign > 0    
            Ff = f_PO_rv33(v_rads_sign,Te,Index);
        else 
            Ff = f_NE_rv33(v_rads_sign,Te,Index);
        end
        Ff = Ff*Ff_multiple;
        I=(Tfs-N_RV_33*Ff)/(N_RV_33*Km_TQ);
    elseif Index == 2 || Index ==7     %旧模型
        Te=I0*Km_Kermogen_7615; %Te电扭矩
        if v_rads_sign > 0    
            Ff = f_PO_xiebo(v_rads_sign,Te,Index);
        else 
            Ff = f_NE_xiebo(v_rads_sign,Te,Index);
        end
        Ff = Ff*Ff_multiple;
        I=(Tfs-N_Harmonic*Ff)/(N_Harmonic*Km_Kermogen_7615);
    elseif Index == 5 
        if v_rads_sign > 0    
            Ff = - Km_Kermogen_6013 * 0.68;  
        else 
            Ff = Km_Kermogen_6013 * 0.68;
        end
        Ff = Ff*Ff_foot;
        I=(Tfs-N_Harmonic*Ff)/(N_Harmonic*Km_Kermogen_6013);
    else
        if v_rads_sign > 0    
            Ff = - Km_Kermogen_6013 * 0.83;  
        else 
            Ff = Km_Kermogen_6013 * 0.83;
        end  
        Ff = Ff*Ff_foot;
        I=(Tfs-N_Harmonic*Ff)/(N_Harmonic*Km_Kermogen_6013);
    end    
end
function [z]= f_PO_xiebo(x,y,Index)
    ac1 =   0.0472;
    ac2 = 0.2092;
    as1 =  0.0273;
    as2 =  0.2803;
    fc = 0.0790;
    vs =  0.0909;
    sigma =  0.0226;  
    if Index == 1  %to be adjusted
        fs = 1.39*0.1261; 
    elseif Index == 6
        fs = 1.663*0.1261;
    elseif Index == 2
        fs = 0.7733*0.106;
    else
        fs = 1.05*0.106;
    end
    z =  -(ac2*y^2+ac1*y+fc)-((as2*y^2+as1*y+fs)-(ac2*y^2+ac1*y+fc))*exp(-x/vs)-sigma*x;
end
function [z]= f_NE_xiebo(x,y,Index)
    ac1 =   0.0472;
    ac2 = 0.2092;
    as1 =  0.0273;
    as2 =  0.2803;
    fc = 0.0790;
    vs =  0.0909;
    sigma =  0.0226;    
    if Index == 2
        fs = 0.7733*0.106;
    else
        fs = 1.05*0.106;
    end
    z = ac2*y^2-ac1*y+fc+((as2*y^2-as1*y+fs)-(ac2*y^2-ac1*y+fc))*exp(x/vs)-sigma*x;
end
function [z]= f_PO_rv33(x,y,Index)
    ac1 = 0.06214;    %0.0472;
    ac2 = 0.03924;  %0.2092;
    as1 = 0.004569;   %0.0273;
    as2 = 0.07206;   %0.2803;
    fc = 0.1509;  %0.0790;
    vs = 0.1; % 0.0909;
    sigma = 0.03159;   %0.0226;  
    if Index == 1  %to be adjusted
        fs = 0.5036;  %3.9933*0.1261; 
    else 
        fs = 0.307684;%2.44*0.1261  
    end
    z =  -(ac2*y^2+ac1*y+fc)-((as2*y^2+as1*y+fs)-(ac2*y^2+ac1*y+fc))*exp(-x/vs)-sigma*x;
end
function [z]= f_NE_rv33(x,y,Index)
    ac1 = 0.06214;    %0.0472;
    ac2 = 0.03924;  %0.2092;
    as1 = 0.004569;   %0.0273;
    as2 = 0.07206;   %0.2803;
    fc = 0.1509;  %0.0790;
    vs = 0.1; % 0.0909;
    sigma = 0.03159;   %0.0226;  
    if Index == 1  %to be adjusted
        fs = 0.6549;  %5.1933*0.1261; 
    else 
        fs = 0.1942;%1.54*0.1261 
    end
    z = ac2*y^2-ac1*y+fc+((as2*y^2-as1*y+fs)-(ac2*y^2-ac1*y+fc))*exp(x/vs)-sigma*x;
end
function [z]= f_PO(x,y,Index) 
%result
%        ac 常系数，表征电扭矩对库伦摩擦力矩的影响
%        as 常系数，表征电扭矩对静摩擦力矩的影响
%        fc 库伦摩擦力矩常数项
%        fs 静摩擦力矩常数项
%        sigma 粘滞摩擦系数
%        vs 临界Stribeck速度
%        x 速度rad/s
%        y 电扭矩NM=I*km
%        km=0.1261
% %PO:z1=f(x1,y1)
% General model:
%      f(x,y) = -(fc+ac2*y*y+ac1*y)-(fs+as*y-fc-ac2*y*y-ac1*y)*exp(-x/vs)-sigma*x;
% Coefficients (with 95% confidence bounds):
%%%%%%%%%%%%%%%%%%%get average%%%%%%%%%%%%%%%%%%%%%  
      ac1 =   0.1606;
      ac2 = 0.0314;
      as1 = 0.1645;
      as2 =  0.0471;
      fc =0.1365;
      vs = 0.1055;
      sigma =  0.0651;
    if Index == 3   %adjust
        fs = 0.289; 
    elseif Index == 4
        fs = 0.189;
    elseif Index == 8
        fs = 0.2261;
    else
        fs = 0.2517;
    end 
    z = -(ac2*y^2+ac1*y+fc)-((as2*y^2+as1*y+fs)-(ac2*y^2+ac1*y+fc))*exp(-x/vs)-sigma*x;
end

function [z]= f_NE(x,y,Index)
         ac1 =   0.1606;
        ac2 = 0.0314;
        as1 = 0.1645;
        as2 =  0.0471;
        fc =0.1365;
        vs = 0.1055;
        sigma =  0.0651;
    if Index == 3   %adjust
        fs = 0.289; 
    elseif Index == 4
        fs = 0.189;
    elseif Index == 8
        fs = 0.2261;
    else
        fs = 0.2517;
    end 
    z = ac2*y^2-ac1*y+fc+((as2*y^2-as1*y+fs)-(ac2*y^2-ac1*y+fc))*exp(x/vs)-sigma*x;
end
%NE:z2=f(x2,y2)
% General model:
%      f(x,y) = fc+ac2*(-y)*(-y)+ac1*(-y)+(fs+as*(-y)-fc-ac2*(-y)*(-y)-ac1*(-y))*exp(x/vs)-sigma*x;



% function [I]  = GetCurrent(v, T, Index, ArgCalFlag)
% %----------------------Solving motor current------------------------
% %Input: v ---- Speed of Motor
% %       T ---- Required torque
% %       Index ---- Motor number
% %       ArgCalFlag ---- Whether or not the average value be used  0:no, 1:yes
% %Output: I ---- Current of motor
% %Type: 1 -- Kollmorgen, Km = 0.131, N = 50
% %      2 -- TQ, Km = 0.1261, N = 37
% %      3 -- Kollmorgen, Km = 0.110, N = 50
% % StartTorque = [ -0.1004 	0.4700 	0.2852; 
% %                 -0.0830 	0.1275 	0.1052;
% %                 -0.3010 	0.2329 	0.2669; 
% %                 -0.3489 	0.1438 	0.2463; 
% %                 -0.0000 	0.0000 	0.0000;                
% %                 -0.3146 	0.1376 	0.2261; 
% %                 -0.0000 	0.0000 	0.0000;
% %                 -0.2749 	0.1670 	0.2209; 
% %                 -0.4010 	0.2026 	0.3018;
% %                 -0.0000 	0.0000 	0.0000;];
% %
% % ArgCalFlag = 1;
% % Index = 10;
% v = (v/(2*pi))*60;
% Type = [1,1,2,2,3,1,1,2,2,3];
% Km = [0.131,0.1261,0.110];
% N = [50, 37, 50];
% StartCurrent = zeros(10,3);
% Parament = [-0.08459    -0.1655;
%             -0.1224     -0.2767;
%             1.000       2.601;
%             -0.001276   -0.004333;];
% StartCurrent(:,1:2) =[ -0.7667 	3.5875; 
%                 -0.6333 	0.9733; 
%                 -2.3867 	1.8467; 
%                 -2.7667 	1.1400; 
%                 -0.6733	    0.66;
%                 -2.4014 	1.0500; 
%                 -0.6333 	0.9733;%根据#2推测
%                 -2.1800 	1.3240; 
%                 -3.1800 	1.6067; 
%                 -0.8	    0.86667;];
% StartCurrent(:,3) = (abs(StartCurrent(:,1)) + abs(StartCurrent(:,2)))/2;           
% 
% if ArgCalFlag == 1
%     StartIndex_PO = 3;
%     StartIndex_NE = 3;    
% else
%     StartIndex_PO = 1;
%     StartIndex_NE = 2;      
% end
% 
% if Type(Index) == 3
%     if v > 0.000001   
%         Tf = -abs(StartCurrent(Index,StartIndex_PO)*Km(Type(Index)));
%     elseif v < -0.000001
%         Tf = StartCurrent(Index,StartIndex_NE)*Km(Type(Index));        
%     else
%         Tf = 0;        
%     end
% else
%     a = Parament(1,Type(Index));
%     b = Parament(2,Type(Index));
%     c = Parament(3,Type(Index));
%     d = Parament(4,Type(Index)); 
%     if v > 0.000001    
%         Tf = a+(b-a)*exp(-v/c)+d*v - (a+(b-a)) -abs( StartCurrent(Index,StartIndex_PO)*Km(Type(Index)));
%     elseif v < -0.000001
%         Tf = -a-(b-a)*exp(v/c)+d*v - (-a-(b-a)) + StartCurrent(Index,StartIndex_NE)*Km(Type(Index));
%     else
%         Tf = 0;
%     end
% end
% 
% I = (T/N(Type(Index)) - Tf)/Km(Type(Index));
% end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%