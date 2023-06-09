x_z_p = [-0.15,-0.7,0;
-0.1,-0.7,0;
-0.1,-0.75,0;
-0.1,-0.8,0;
-0.1,-0.85,0;
-0.1,-0.9,0;
0,-0.7,0;
0,-0.75,0;
0,-0.8,0;
0,-0.85,0;
0,-0.9,0;
0.1,-0.75,0;
0.1,-0.8,0;
0.1,-0.85,0;
0.1,-0.9,0];   
Para.OA=120;
Para.AB=76.99;
Para.BC=435.26;
Para.ABC=2.426007660272118;
Para.CE=121.85;
Para.CD=408.96;
Para.DCE=174.89/180*pi;
Para.OE=498.88;
Para.MD=349.07;
Para.MN=55;
Para.NK=348.07;
Para.DK=55;
Para.DG=57.09;
Para.GT=109;
Para.GH=70;
Para.KDG=49/180*pi;
Para.CDM=4.38/180*pi;
qOff = zeros(1,8);
qOff(1) = 0;
qOff(2)= -1.570796326794897;
qOff(3)=0.582350185682107;
qOff(4)=-1.185601576057175;
qOff(5)=-0.715584993317675;
qOff(6)= 1.833251750752234;
qOff(7)=-0.514415367059492;
qOff(8)=-1.427725354617955;
left_Q_dst = zeros(15,7);
left_qq_dst = zeros(15,7);
for i = 1:15
    PD=[x_z_p(i,1)*1000;x_z_p(i,2)*1000];
    qRes_tmp=inverseKine_V2(PD,x_z_p(i,3),Para);
    left_Q_dst(i,1) =  0;
    left_Q_dst(i,2) =  -1.570796326794897;
    left_Q_dst(i,3) = qRes_tmp.q3;
    left_Q_dst(i,4) =qRes_tmp.q4;
    left_Q_dst(i,5) = qRes_tmp.q5;
    left_Q_dst(i,6) =qRes_tmp.q6;
    left_Q_dst(i,7) =qRes_tmp.q7-0.069813;
    for j = 1:7
        left_qq_dst(i,j) = left_Q_dst(i,j)-qOff(j);
    end
end