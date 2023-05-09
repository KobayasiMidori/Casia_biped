function [x_filt,P_filt]=StateEstimation(x,P,acc,gyro,vel,pos,roll,pitch,yaw)

filter_enable = 1;

%% params config
IMUsample = 2000;
FKsample = 2000;
dt= 1/FKsample;
C_imu_robot = [0 -1 0; -1 0 0; 0 0 -1];%[0 0 -1; 0 -1 0; -1 0 0];
gravity = 9.8015;
g = [0;0;-gravity];

%% senor noise
% accel_noise_std = 0.1*1e-2*gravity*ones(3,1);
% accel_bias_noise_std =  0.1*1e-3*gravity*ones(3,1)/10;
% gyro_noise_std = deg2rad(0.04)*ones(3,1);
% gyro_bias_noise_std=deg2rad(0.04)*ones(3,1)/10;

% 0.1
accel_noise_std = [0.15;0.15;0.15]*2;
accel_bias_noise_std =  accel_noise_std/500;
gyro_noise_std = 0.15*ones(3,1)*2;
gyro_bias_noise_std=gyro_noise_std/500;

eul_noise_std = [0.0001;0.0001;0.0001];
vel_noise_std = [0.01;0.01;0.005];  % m/s      ∏˘æ›std«Ûµ√
pos_noise_std = [0.01;0.01;0.01];  % m/s      ∏˘æ›std«Ûµ√

%% data processing
accel = C_imu_robot*[acc(1);acc(2);acc(3)]*gravity;       % from imu to robot
angvel = C_imu_robot*[gyro(1);gyro(2);gyro(3)];   % from imu to robot

eul = [yaw;pitch;roll];


%% one step prediction 
[q, v, p, ba, bg] = Separate_States(x);
% bias corrected
accel = accel - ba;    
angvel = angvel - bg;  

R_b_n=quat2rotm(q');


q_pred = Quaternion_Multiply(q, Quaternion_Exp(angvel*dt));
v_pred = v + dt*(R_b_n*accel+g);
p_pred = p + dt*v+ 1/2*dt^2*(R_b_n*accel+g);
ba_pred = ba;
bg_pred = bg;

R_b_n_pred = quat2rotm(q_pred');

x_pred = [q_pred; v_pred; p_pred; ba_pred; bg_pred];

%% error dynamics

if filter_enable == 1

Fai = eye(15:15);
Fai(1:3,1:3) = Gamma(angvel*dt,0)';  
Fai(1:3,13:15) = -Gamma(angvel*dt,1)'*dt;

Fai(4:6,1:3) = -R_b_n*skew(Gamma(angvel*dt,1)*accel)*dt;
Fai(4:6,10:12) = -R_b_n*Gamma(angvel*dt,1)'*dt;
Fai(4:6,13:15) = 1/2*R_b_n*skew(accel)*dt^2;

Fai(7:9,1:3) =  -R_b_n*skew(Gamma(angvel*dt,2)*accel)*dt^2;
Fai(7:9,4:6) = eye(3)*dt;
Fai(7:9,10:12) = -R_b_n*Gamma(angvel*dt,2)*dt^2;
Fai(7:9,13:15) = 1/6*R_b_n*skew(accel)*dt^3;

%% Discrete covariance matrix
Qa = diag(accel_noise_std.^2);         % Accel Covariance Matrix
Qba = diag(accel_bias_noise_std.^2);   % Accel Bias Covariance Matrix
Qg = diag(gyro_noise_std.^2);          % Gyro Covariance Matrix
Qbg = diag(gyro_bias_noise_std.^2);    % Gyro bias Covariance Matrix

Q = blkdiag(Qa, Qg, zeros(3), Qba, Qbg); 
G = blkdiag(eye(3), R_b_n, zeros(3), eye(3), eye(3));
Qd = Fai*G*Q*G'*Fai'*dt;




%% predict

P_pred = Fai*P*Fai' + Qd;

%% measurement matrix
% H = zeros(6,15);
% % H(1:3,4:6) = R_b_n_pred;      % ÈÄüÂ∫¶Áõ∏ÂØπ‰∫? b Á≥?
% % H(4:6,7:9) = R_b_n_pred;     % ‰ΩçÁΩÆÁõ∏ÂØπ‰∫? b Á≥?
% H(1:3,4:6) = eye(3);      % ÈÄüÂ∫¶Áõ∏ÂØπ‰∫? n Á≥?
% H(4:6,7:9) = eye(3);        % ‰ΩçÁΩÆÁõ∏ÂØπ‰∫? n Á≥?
% Rv = diag(vel_noise_std.^2); 
% Rp = diag(pos_noise_std.^2); 
% N = blkdiag( Rv, Rp );
% y = [vel-v_pred;pos-p_pred];
%% pos + attitude
H = zeros(6,15);

H(1:3,1:3) = eye(3);      % 
H(4:6,7:9) = eye(3); 

Rq = diag(eul_noise_std.^2);
Rp = diag(pos_noise_std.^2); 
N = blkdiag( Rq,Rp );

% R_b_n_mag = eul2rotm(eul,'ZYX');
% R_b_n_error = R_b_n_mag'* R_b_n_pred;
% deltaFai = rotm2eul(R_b_n_error','ZYX');
% deltaYaw = deltaFai(1);
% deltaPitch = deltaFai(2);
% deltaRoll = deltaFai(3);

eul_pred = rotm2eul(R_b_n_pred,'ZYX');
deltaRoll = eul(3)-eul_pred(3);
deltaPitch = eul(2)-eul_pred(2);
deltaYaw = eul(1)-eul_pred(1);


y = [deltaRoll;deltaPitch;deltaYaw;pos-p_pred];

%% pos 
% H = zeros(3,15);
% 
% H(1:3,7:9) = eye(3);   
%  
% 
% Rp = diag(pos_noise_std.^2); 
% N = blkdiag( Rp );
% y = [pos-p_pred];



%% Fusion Sensor

% R_b_n_measurement=eul2rotm([yaw pitch roll],'ZYX');
% R_b_n_delt=R_b_n_pred'*R_b_n_measurement;
% delta_theta=rotm2eul(R_b_n_delt,'ZYX');


S = H*P_pred*H' + N;
K = (P_pred*H')/S;
delta_x = K*y;
x_filt = Compose(x_pred, delta_x);

I = eye(15);
P_filt = (I-K*H)*P_pred*(I-K*H)' + K*N*K';
else
  
    x_filt = x_pred;
    P_filt = P;
end

end


