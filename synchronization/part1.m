clear all
close all
clc

beta=0.125;
mu=0.075;
t1 = 600;
t2 = 3000;
gamma=0.025;
theta0=sqrt(6*gamma);

tspan= [0 t2];
%x0=[0.1; 0];
%y0=[0.2; 0];

IC=[0.1; 0; 0.2; 0]; %[rad rad/sec rad rad/s rad/s^2 rad/s^2]

[t,y]=ode45(@(t,x) PDEsolver(t,x,theta0,beta,mu),tspan,IC);

%OUTPUT
%y(:,1)=th1
%y(:,2)=th1d
%y(:,3)=th2
%y(:,4)=th2d
Sub=abs(y(:,1)-y(:,3));
Sum=abs(y(:,1)+y(:,3));
plot(t,y(:,1))
hold on
plot(t,y(:,3))
legend('Theta1','Theta2')
title('positions')

% figure()
% plot(t,y(:,1),t,y(:,3))

figure()
plot(t,Sub)
title('Difference Th1-Th2')

figure()
plot(y(:,1),y(:,2))
title('Theta1-Theta1dot')

figure()
plot(y(:,3),y(:,4))
title('Theta2-Theta2dot')