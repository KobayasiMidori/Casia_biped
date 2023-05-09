function [pCoM,vCoM,pL_w,pR_w]=FK_est(Fr,Fl,PDr,PDl,pCoMOld,vCoMOld,pL_w_Old,pR_w_Old,R)
% FK estimation for pCoM and vCoM
% only for FK_v2, where yaw joint is not considered in the FK calculation
PDOff_L=[-0.096;0.145505;0];
PDOff_R=[-0.096;-0.145505;0];
pL_w=zeros(3,1);
pR_w=zeros(3,1);
if sqrt(Fr(2)^2+Fr(1)^2)>300
    onGroundIndR=1;
else
    onGroundIndR=0;
end
if sqrt(Fl(2)^2+Fl(1)^2)>150
    onGroundIndL=1;
else
    onGroundIndL=0;
end
if onGroundIndL>0.5
    pL_w=pL_w_Old;
end
if onGroundIndR>0.5
    pR_w=pR_w_Old;
end
if onGroundIndR>0.5 && onGroundIndL<0.5
    pCoM_R=-R*(PDr+PDOff_R)+pR_w;
    pCoM=pCoM_R;
    pL_w=pCoM+R*(PDl+PDOff_L);
    pCoM_L=-R*(PDl+PDOff_L)+pL_w;
    pR_w(3)=pR_w(3)*0.9;
elseif onGroundIndR<0.5 && onGroundIndL>0.5
    pCoM_L=-R*(PDl+PDOff_L)+pL_w;
    pCoM=pCoM_L;
    pR_w=pCoM+R*(PDr+PDOff_R);
    pCoM_R=-R*(PDr+PDOff_R)+pR_w;
    pL_w(3)=pL_w(3)*0.9;
elseif onGroundIndR>0.5 && onGroundIndL>0.5
    pCoM_R=-R*(PDr+PDOff_R)+pR_w;
    pCoM_L=-R*(PDl+PDOff_L)+pL_w;
    pCoM=(pCoM_L+pCoM_R)/2;
    pL_w=pCoM+R*(PDl+PDOff_L);
    pR_w=pCoM+R*(PDr+PDOff_R);
    pR_w(3)=pR_w(3)*0.9;
    pL_w(3)=pL_w(3)*0.9;
else
    pCoM=pCoMOld;
    pL_w=pL_w_Old;
    pR_w=pR_w_Old;
end
if onGroundIndR<0.5 && onGroundIndL<0.5
    vCoM=vCoMOld;
else
    vCoM=(pCoM-pCoMOld)/(1/2000);
end