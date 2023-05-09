function [x_filt,pCoM,x_filt_Est,P_filt_Est,vCoM_v2,pL_w,pR_w,vCOMV2_pre,x_filt_pre,XOld,POld] = vCOMv2_cal(roll,pitch,yaw,FK_r_l,vCOMV2_pre,x_filt_pre,XOld,POld,acc,w,Roff)       
    x_filt = zeros(3,1);
    Fr = FK_r_l(6:7,1);
    Fl = FK_r_l(6:7,2);
    PDr = FK_r_l(8:10,1);
    PDl = FK_r_l(8:10,2);
    pCoM_pre = vCOMV2_pre(:,1);
    vCoM_v2_pre = vCOMV2_pre(:,2);
    pL_w_pre = vCOMV2_pre(:,3);
    pR_w_pre = vCOMV2_pre(:,4);
    
    R=Roff*R3Dz(yaw)*R3Dy(pitch)*R3Dx(roll);
    [pCoM,vCoM_v2,pL_w,pR_w]= ...
            FK_est(Fr,Fl,PDr,PDl,pCoM_pre,vCoM_v2_pre,pL_w_pre,pR_w_pre,R);
    eul=rotm2eul(R);
    [x_filt_Est,P_filt_Est]=StateEstimation(XOld,POld,acc,w,vCoM_v2,pCoM,roll,pitch,eul(1));
    POld=P_filt_Est;
    XOld=x_filt_Est;
    for i=1:3
        [x_filt(i,1),x_filt_pre(i,:)]=LPF(vCoM_v2(i,1),1/2000,20,x_filt_pre(i,:)');    
%         x_filt_pre(i,2)=x_filt_pre(i,1);
%         x_filt_pre(i,1)=x_filt(i,1);
    end
    pCoM_pre = pCoM;
    vCoM_v2_pre =vCoM_v2;
    pL_w_pre = pL_w;
    pR_w_pre = pR_w;
    
    vCOMV2_pre(:,1) = pCoM_pre;
    vCOMV2_pre(:,2) = vCoM_v2_pre;
    vCOMV2_pre(:,3) = pL_w_pre;
    vCOMV2_pre(:,4) = pR_w_pre;    
    
%     v = x_filt(5:7);     % Velocity
end

