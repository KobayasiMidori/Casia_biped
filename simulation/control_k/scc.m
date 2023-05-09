


x = zeros(101, 1);
dx = zeros(101, 1);

a = cassia_gait.LeftStance.HAlpha(9, 9, :);

a = reshape(a, 1, 6);

for i=0:100
    x(i+1) = Tool.bezier(a, i*0.01);
    dx(i+1) = Tool.dbezier(a, i*0.01);
end


x2 = zeros(101, 1);
dx2 = zeros(101, 1);

a2 = cassia_gait.LeftStance.HAlpha(9, 8, :);

a2 = reshape(a2, 1, 6);

for i=0:100
    x2(i+1) = Tool.bezier(a, i*0.01);
    dx2(i+1) = Tool.dbezier(a, i*0.01);
end

ll = zeros(101,1);
la = zeros(101,1);

for i=1:101
    [la(i), ll(i)] = Cassia_FK_LEG(x2(i), x(i));
end

tt = 1:101;
plot(tt,ll);

% x2 = zeros(101, 1);
% dx2 = zeros(101, 1);
% 
% a2 =  cassia_gait.RightStance.HAlpha(9, 9, :);
% 
% a2 = reshape(a2, 1, 6);
% 
% for i=0:100
%     x2(i+1) = Tool.bezier(a2, i*0.01);
%     dx2(i+1) = Tool.dbezier(a2, i*0.01);
% end
% 
% plot(x, dx, x2, dx2);