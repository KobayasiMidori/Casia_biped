function [Ff] = GetFriction(v_rads_filter,I0,current_mode,Index) %v:rad/s I:A %Tfs:NM output_torque 
    Km_TQ =2.9/23;   %0.1261
    Km_Kermogen_7615 = 0.106;
    Km_Kermogen_6013 = 0.0955;
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
    elseif Index == 1 || Index ==6     %旧模型
        Te=I0*Km_TQ; %Te电扭矩
        if v_rads_sign > 0    
            Ff = f_PO_xiebo(v_rads_sign,Te,Index);
        else 
            Ff = f_NE_xiebo(v_rads_sign,Te,Index);
        end
    elseif Index == 2 || Index ==7     %旧模型
        Te=I0*Km_Kermogen_7615; %Te电扭矩
        if v_rads_sign > 0    
            Ff = f_PO_xiebo(v_rads_sign,Te,Index);
        else 
            Ff = f_NE_xiebo(v_rads_sign,Te,Index);
        end
    elseif Index == 5 
        if v_rads_sign > 0    
            Ff = - Km_Kermogen_6013 * 0.68;  
        else 
            Ff = Km_Kermogen_6013 * 0.68;
        end
    else
        if v_rads_sign > 0    
            Ff = - Km_Kermogen_6013 * 0.83;  
        else 
            Ff = Km_Kermogen_6013 * 0.83;
        end  
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
    if Index == 1  %to be adjusted
        fs = 1.39*0.1261; 
    elseif Index == 6
        fs = 1.663*0.1261;
    elseif Index == 2
        fs = 0.7733*0.106;
    else
        fs = 1.05*0.106;
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
      ac1 =  0.1623;    
      ac2 =  0.0206;   
      as =  0.3085;   
      fc = 0.1759;     
      sigma = 0.0364;    
      vs =  0.0517;   
    if Index == 3   %adjust
        fs = 0.289; 
    elseif Index == 4
        fs = 0.189;
    elseif Index == 8
        fs = 0.2261;
    else
        fs = 0.2517;
    end 
    z = -(fc+ac2*y*y+ac1*y)-(fs+as*y-fc-ac2*y*y-ac1*y)*exp(-x/vs)-sigma*x;
end

function [z]= f_NE(x,y,Index)
       ac1 =  0.1623;    
       ac2 =  0.0206;   
       as =  0.3085;   
       fc = 0.1759;     
       sigma = 0.0364;    
       vs =  0.0517;     
    if Index == 3   %adjust
        fs = 0.289; 
    elseif Index == 4
        fs = 0.189;
    elseif Index == 8
        fs = 0.2261;
    else
        fs = 0.2517;
    end 
    z = fc+ac2*(-y)*(-y)+ac1*(-y)+(fs+as*(-y)-fc-ac2*(-y)*(-y)-ac1*(-y))*exp(x/vs)-sigma*x;
end
%NE:z2=f(x2,y2)
% General model:
%      f(x,y) = fc+ac2*(-y)*(-y)+ac1*(-y)+(fs+as*(-y)-fc-ac2*(-y)*(-y)-ac1*(-y))*exp(x/vs)-sigma*x;

