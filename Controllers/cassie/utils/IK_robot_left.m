function [q3,q4,q7] = IK_robot_left(foot_position_x,foot_position_z,FootPitch)
    %modifined date: 2021-04-21 11:07:47
    PD=[foot_position_x*1000;foot_position_z*1000];
%     Para.OA=120.000;
%     Para.AB=76.000;
%     Para.BC=435.000;
%     Para.ABC=143.000/180*pi;
%     Para.CE=121.760;
%     Para.CD=409.000;
%     Para.DCE=175.000/180*pi;
%     Para.OE=499.000;
%     qOff.q1=0.002;
%     qOff.q2=0.000;
%     qOff.q3=0.608;
%     qOff.q4=-1.279;
%     qOff.q5=-0.646;
%     qOff.q6=1.839;
    Para.OA=120.000;
    Para.AB=76.000;
    Para.BC=435.000;
    Para.ABC=143.000/180*pi;
    Para.CE=121.776;
    Para.CD=409.000;
    Para.DCE=175.000/180*pi;
    Para.OE=499.000;
    qOff.q1=0.000;
    qOff.q2=-0.000;
    qOff.q3=0.566;
    qOff.q4=-1.287;
    qOff.q5=-0.646;
    qOff.q6=1.846;
    qOff.q7=-0.513;
    qOff.nDMN=-1.427;
    
    Para.MD=349.07;
    Para.MN=55;
    Para.NK=348.07;
    Para.DK=55;
    Para.DG=57.09;
    Para.GT=109;
    Para.GH=70;
    Para.KDG=49/180*pi;
    Para.CDM=4.38/180*pi;

    qRes_tmp=inverseKine_V2(PD,FootPitch,Para);
    q3=qRes_tmp.q3-qOff.q3;
    q4=qRes_tmp.q4-qOff.q4;
    q5=qRes_tmp.q5-qOff.q5;
    q6=qRes_tmp.q6-qOff.q6;
%     q7=qRes_tmp.q7-qOff.q7+(-0.069813);
    q7=qRes_tmp.q7-qOff.q7;
end

