y(1) = 0; %1st ODE
y(2) = 0; %2nd ODE
dydt = @(t,y)[y(2);-4*y(1)]; %2nd ODE written in terms of 1st ODE
[t,y] = rk4(dydt, [0 4], [1 0], 0.1); %dydt, tspan, initial conditions, step size
plot(t, y(:,1)); %RK soln
hold on
plot(t, cos(2*t)); %exact soln
hold on
euler;
