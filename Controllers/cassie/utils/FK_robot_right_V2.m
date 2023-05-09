function out = FK_robot_right_V2(q1_temp,q2_temp,q3_temp,q4_temp,q5_temp,q6_temp,q7_temp)
    %modified date: 2021-05-26
    Para.OA=120.000;
    Para.AB=76.000;
    Para.BC=435.000;
    Para.ABC=143.000/180*pi;
    Para.CE=120.984;
    Para.CD=409.000;
    Para.DCE=175.000/180*pi;
    Para.OE=499.000;
    

    qOff.q1=-0.017;
    qOff.q2=0.000;
    qOff.q3=0.591;
    qOff.q4=-1.270;
    qOff.q5=-0.646;
    qOff.q6=1.831;
    qOff.q7=-0.521;
    qOff.nDMN=-1.434;
    Para.MD=349.07;
    Para.MN=55;
    Para.NK=348.07;
    Para.DK=55;
    Para.DG=57.09;
    Para.GT=109;
    Para.GH=70;
    Para.YO=93;
    Para.KDG=49/180*pi;
    Para.CDM=4.38/180*pi;
    Para.scq5=-5500;
    Para.scq6=-2400;
    
    q1 = q1_temp+qOff.q1;
    q3 = q3_temp+qOff.q3;
    q4 = q4_temp+qOff.q4;
    q5 = q5_temp+qOff.q5;
    q6 = q6_temp+qOff.q6;
%     q7 = q7_temp+qOff.q7-(-0.0349066);
    q7 = q7_temp+qOff.q7;
    
%     pRes=forwardKine_V3(q3,q4,q5,q6,q7,Para);
    pRes=forwardKine_FootForce(q3,q4,q5,q6,q7,Para);
    % PO=pRes(:,1);PA=pRes(:,2);PB=pRes(:,3);
    % PC=pRes(:,4);PD=pRes(:,5);PE=pRes(:,6);
    PD_nor=[pRes.PD(1);0;pRes.PD(2)-Para.YO];
    Rx=[1,0,0;
    0,cos(q1),-sin(q1);
    0,sin(q1),cos(q1)];
    PD_now=Rx*PD_nor;
    out.PD_3D=PD_now/1000;
    out.foot_x = pRes.PD(1)/1000;
    out.foot_z = pRes.PD(2)/1000;
    out.foot_p = pRes.FootPitch;
    out.qp1 = pRes.qp1;
    out.qp2 = pRes.qp2;
    out.F_val =pRes.F_end;
end