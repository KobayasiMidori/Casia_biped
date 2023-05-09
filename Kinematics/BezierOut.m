function y=BezierOut(a,s)
% a is the curve parameter, s is the time in [0,1]
% s could be a vector
Ls=length(s);
y=zeros(1,Ls);
N=length(a);
for outi=1:1:Ls
    for i=0:1:N-1
        y(outi)=y(outi)+a(i+1)*factorial(N-1)/factorial(i)/factorial(N-1-i)*s(outi)^i*(1-s(outi))^(N-1-i);
    end
end