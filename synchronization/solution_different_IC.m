%% fixed gamma and changing beta and mu based on different ICs
clear all
close all
clc
n=3; %number of different beta and gamma
m=20; %number of different initial conditions
count=10;
t1 = 600;
t2 = 3000;
gamma=0.025;
beta=linspace(0.025,0.125,5);
mu=linspace(0.015,0.075,5);
% beta = 0.125;
% mu = 0.075;
theta1d = linspace(-0.1,0.1,n);
theta2d = linspace(-0.1,0.1,n);

theta0=sqrt(6*gamma);
theta1=linspace(-0.2,0.2,m);
theta2=linspace(-0.2,0.2,m);
tspan= [0 t2];
counter = 0;


for l1 = 1:5;
    for l2 = 1:5
for k1=1:n
    for k2=1:n
figure()
hold on     
xlabel('\theta_1');
ylabel('\theta_2');
title(['\theta_1^{\prime}=',num2str(theta1d(k1)),' and ','\theta_2^{\prime}=',num2str(theta2d(k2))]);


for i=1:m
    for j=1:m
        IC=[theta1(i); theta1d(k1); theta2(j); theta2d(k2)];    
        [t,y]=ode45(@(t,x) PDEsolver(t,x,theta0,beta(l1),mu(l2)),tspan,IC);
        Sub=abs(y(:,1)-y(:,3)); 
        Sum=abs(y(:,1)+y(:,3));
        if min(Sub)<=0.0000001
            plot(theta1(i),theta2(j),'*y')
        elseif min(Sum)<=0.0000001
            plot(theta1(i),theta2(j),'*b')
        else
            plot(theta1(i),theta2(j),'*g')
            
end
end
end
counter = counter+1;
saveas(gcf,strcat('case',num2str(l1),num2str(l2),'_',num2str(counter),'.png'));
    end
end
    end


end