v_rmin = 6;
Tfs = 20;
a = -0.08459;   
b = -0.1224;     
c = 1.000;       
d = -0.001276;   
start_average =  1.39;
Km1 = 0.131;
N1=50;
if v_rmin > 0.1    
    Ff = a+(b-a)*exp(-v_rmin/c)+d*v_rmin - (a+(b-a)) -start_average*Km1;
elseif v_rmin < -0.1
    Ff = -a-(b-a)*exp(v_rmin/c)+d*v_rmin - (-a-(b-a)) + start_average*Km1;
else
    Ff = 0;
end
I=(Tfs-N1*Ff)/(N1*Km1);