function [v_LPF,P_wpre,v_pre] = v_cal(roll,pitch,yaw,P_b,P_wpre,v_pre,Ts,fre_LPF)
%     v = zeros(1,3);    
    v_LPF = zeros(1,3);    
    R = R_xyz(roll,pitch,yaw);
%     P_b(1,1) = roundn(P_b(1,1),-7);
%     P_b(2,1) = roundn(P_b(2,1),-7); 
%     P_b(3,1) = roundn(P_b(3,1),-7); 
    P_w = (-R*P_b)';     
    v = (P_w - P_wpre)/Ts;
    for j = 1:3
        v_LPF(:,j) = LPF(v(:,j),Ts,fre_LPF,v_pre(:,j)); 
        v_pre(2,j) = v_pre(1,j);
        v_pre(1,j) = v_LPF(:,j);
    end
    P_wpre = P_w; 
end

function R = R_xyz(roll,pitch,yaw)
    R_yaw = [cos(yaw),-sin(yaw),0;sin(yaw),cos(yaw),0;0,0,1];
    R_pitch = [cos(pitch),0,sin(pitch);0,1,0;-sin(pitch),0,cos(pitch)];
    R_roll = [1,0,0;0,cos(roll),-sin(roll);0,sin(roll),cos(roll)];
    R = R_yaw*R_pitch*R_roll;
end
