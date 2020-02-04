function [t,y] = rk4(dydt, tspan, y0, h, varargin)
t = tspan(1):h:tspan(2);
n = length(t);
y = y0;

for i = 1: n-1
    k1 = dydt(t(i),y(i,:))';
    k2 = dydt(t(i)+(1/2)*h,y(i,:)+(1/2)*k1*h)';
    k3 = dydt(t(i)+(1/2)*h,y(i,:)+(1/2)*k2*h)';
    k4 = dydt(t(i)+h,y(i,:)+k3*h)';
    y(i+1,:) = y(i,:)+(1/6)*(k1+2*k2+2*k3+k4)*h;
    %disp(y(i+1,:));
end