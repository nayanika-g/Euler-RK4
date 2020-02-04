clear; clc
h = 0.1; %edit this
t_final = 4; %edit this
N = t_final/h;

%Initial condition %edit these
t(1) = 0; 
y(1) = 1;
v(1) = 0;

%Update loop
for i=1:N
    t(i+1) = t(i)+h;
    y(i+1) = y(i)+h*v(i);
    v(i+1) = v(i)+h*(-4*y(i)); %?
end

plot(t,y);
xlabel('t');
ylabel('y');
xlim([0 4]); %edit this
%ylim([-1 1]);