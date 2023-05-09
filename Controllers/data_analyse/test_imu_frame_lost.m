figure;
[m,n] = size(log_data.data);
rpy_dif = zeros(m-1,3);
rpy = zeros(m-1,3);
for i = 1:m-1
    rpy_dif(i,1) = log_data.data(i+1,83)-log_data.data(i,83);
    rpy_dif(i,2) = log_data.data(i+1,84)-log_data.data(i,84);
    rpy_dif(i,3) = log_data.data(i+1,85)-log_data.data(i,85);
end

subplot(3,3,1);
plot(log_data.data(:,86),log_data.data(:,83));
legend("roll");
subplot(3,3,2);
plot(log_data.data(:,86),log_data.data(:,84));
legend("pitch");
subplot(3,3,3);
plot(log_data.data(:,86),log_data.data(:,85));
legend("yaw");
subplot(3,3,4);
plot(log_data.data(1:m-1,86),rpy_dif(:,1));
legend("roll*");
subplot(3,3,5);
plot(log_data.data(1:m-1,86),rpy_dif(:,2));
legend("pitch*");
subplot(3,3,6);
plot(log_data.data(1:m-1,86),rpy_dif(:,3));
legend("yaw*");
for i = 1:m
    if  i < 11*2000  
        rpy(i,1) = log_data.data(i,83);
        rpy(i,2) = log_data.data(i,84);
        rpy(i,3) = log_data.data(i,85);
    else
        if  abs(log_data.data(i,83) - rpy(i-1,1)) < 0.005
            rpy(i,1) =  log_data.data(i,83);
        else
            rpy(i,1) = rpy(i-1,1);
        end
        if  abs(log_data.data(i,84) - rpy(i-1,2)) < 0.005
            rpy(i,2) =  log_data.data(i,84);
        else
            rpy(i,2) = rpy(i-1,2);
        end
        if  abs(log_data.data(i,85) - rpy(i-1,3)) < 0.005
            rpy(i,3) =  log_data.data(i,85);
        else
            rpy(i,3) = rpy(i-1,3);
        end
    end
end
subplot(3,3,7);
plot(log_data.data(:,86),rpy(:,1));
legend("r_frm_protect");
subplot(3,3,8);
plot(log_data.data(:,86),rpy(:,2));
legend("p_frm_protect");
subplot(3,3,9);
plot(log_data.data(:,86),rpy(:,3));
legend("y_frm_protect");

