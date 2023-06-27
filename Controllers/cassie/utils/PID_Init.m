function [dead_zone, limit, slop, sign, TsN] = PID_Init(Num_pid)
    dead_zone_val = zeros(1,Num_pid);
    limit_val = zeros(2,Num_pid);
    slop_val = zeros(1,Num_pid);
    
    
    %                       =====================================================================
    %                       |        1          |          2          |        3         |         4          |          5          |        6          |           7          |
    %                       |     pitch_xr      |        roll_zr      |     pitch_pr     |      pitch_xl      |        roll_zl      |      pitch_pl     |        roll_st       |
    dead_zone_val(:,1:7) =  [    deg2rad(0.2),         deg2rad(0.06),      deg2rad(0.2),      deg2rad(0.2),         deg2rad(0.06),       deg2rad(0.2),         deg2rad(0.03)  ];          
    %                       |        8          |          9          |       10         |         11         |          12         |        13         |          14          |          
    %                       |        y yv       |         y_yp        |      x_xv        |         x_xp       |         yaw         |      q3_pitch     |        pos_rota_x    |
    dead_zone_val(:,8:14) = [       0.01,               0.035,                0.03,                 0.03,            deg2rad(0.8),       deg2rad(0.2),          0,           ];                    
    %                       |        15         |          16         |       17         |        18          |          19         |        20         |          
    %                       |     pos_rota_y    |          zp_r       |      zp_l        |      pitch_x       |          roll_y           |                   | 
    dead_zone_val(:,15:20)=[           0,                 0.03,              0.03,           deg2rad(0.2),           deg2rad(0.03),                 0.0];    
    %                       =====================================================================
   
    %                    =====================================================================
    %                    |           1             |             2             |           3            |            4             |             5             | 
    %                    |        pitch_xr         |           roll_zr         |        pitch_pr        |         pitch_xl         |           roll_zl         |
    limit_val(2,1:5) =   [          0.1       ,                0.008       ,          deg2rad(10)       ,         0.1       ,                 0.008           ];
    %                    |           6             |              7            |           8            |            9             |             10            |          
    %                    |         pitch_pl        |           roll_st         |          y yv          |           y_yp           |           x_xv            |
    limit_val(2,6:10) = [         deg2rad(10)       ,     deg2rad(7)        ,           deg2rad(10)       ,      deg2rad(1.2)       ,             0.15             ]; 
    %                    |           11            |             12            |          13            |           14             |             15            |
    %                    |           x_xp          |            yaw            |         q3_pitch       |         roll_ref       |          -----------------       |
    limit_val(2,11:15)=[             0.03       ,            deg2rad(8)       ,         deg2rad(8)       ,         deg2rad(1)       ,                 0.0            ];
    %                    |           16            |             17            |          18            |           19            |          
    %                    |           zp_r          |            zp_l           |       pitch_x          |       roll_y          |  
    limit_val(2,16:20)=[             0.003,                    0.003,                    0.03,              deg2rad(10),   0.0]; 
    
    limit_val(1,:) = -1* limit_val(2,:);
    %                        =====================================================================
    %                   |           1             |              2            |          3             |            4             |             5             | 
    %                   |        pitch_xr         |           roll_zr         |        pitch_pr        |         pitch_xl         |           roll_zl         |
    slop_val(:,1:5) =   [          0.02,                       0.001,                 deg2rad(2),                 0.02,                        0.001         ];
    %                   |           6             |              7            |          8             |            9             |             10            |          
    %                   |         pitch_pl        |           roll_st         |          y yv          |            y_yp          |            x_xv           |
    slop_val(:,6:10) = [         deg2rad(2),                deg2rad(2),               deg2rad(2),                deg2rad(0.2),                 0.02         ]; 
    %                   |           11            |             12            |         13             |            14            |             15            |
    %                   |          x_xp           |            yaw            |         q3_pitch       |          pos_rota_x      |          pos_rota_y       |
    slop_val(:,11:15)=[            0.001,                   deg2rad(2),               deg2rad(2),                  0.01,                       0.01         ];
    %                   |           16            |             17            |         18             |         19             |            
    %                   |          zp_r           |            zp_l           |       pitch_x          |       roll_y          |  
    slop_val(:,16:20)=[           0.001,                     0.001,                    0.01,          deg2rad(2),            0.01];            

    sign_val = [-1,1,1,-1,-1,1,-1,-1,-1,-1,1,1,1,1,1,-1,-1,-1,1,    1];
    TsN_val = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 20  , 1, 1, 1, 1, 1,        20];
    
    dead_zone = dead_zone_val;
    limit = limit_val;
    slop = slop_val;
    sign = sign_val;    
    TsN = TsN_val;
end

