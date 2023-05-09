
[len,nn]=size(log_data.data);
v_rad = log_data.data(:,22);
velocity_filtered = filter(MyButterworth1,v_rad); 
figure;
plot(log_data.data(:,76),v_rad,log_data.data(:,76),velocity_filtered);
Ff = zeros(len,1);
for i = 1:len
    Ff(i) = GetFriction(velocity_filtered(i),log_data.data(i,34),1,6);
end
figure;
plot(log_data.data(:,76),Current2Torque(log_data.data(:,34),6),log_data.data(:,76),log_data.data(:,58),log_data.data(:,76),Ff,'r');
legend('left friction compensation added torque(NM)','left demand torque(NM)','Ff(NM)');
figure;
plot(log_data.data(:,76),Ff);
legend('Ff(NM)');



