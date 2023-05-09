R = Rz(gamma)*Ry(beta)*Rx(alpha);
[x0;y0;z0]=R*[x1;y1;z1];
(x1)^2+(y1)^2 = r^2;


function M=Ry(sita)
% 3D rotation matrix, vb=M*v: 
% rotate a vector in one frame,
% or change the vector 'v' in rotated frame to 'vb' in world frame
M=[cos(sita),0,sin(sita);
    0,1,0;
    -sin(sita),0,cos(sita)];
end

function M=Rx(sita)
M=[1,0,0;
   0,cos(sita),-sin(sita);    
   0,sin(sita),cos(sita)];
end

 function M=Rz(sita)
M=[cos(sita),-sin(sita),0;    
   sin(sita),cos(sita),0;
   0,0,1];
end   