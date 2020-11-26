%% beta/gamma=(0,5],mu/gamma=(0,3], change initial conditions
clear all
close all
clc
n=20; %number of different beta and gamma
m=1; %number of different initial conditions
t1 = 600;
t2 = 3000;
gamma=0.025;
beta=gamma*linspace(0.01,5,n);
mu=gamma*linspace(0.01,3,n);

theta0=sqrt(6*gamma);
tspan= [0 t2];
IC=[-0.05; 0; -0.2; 0.1];

figure()
hold on     
xlabel('BETA');
ylabel('MU');


    
    %Diff_th=abs(IC(1)-IC(3));
    title('IC=[0.6; 0; 0.8; 0] and T=[0 3000]');

        
for i=1:n
for j=1:n
[t,y]=ode45(@(t,x) PDEsolver(t,x,theta0,beta(i),mu(j)),tspan,IC);
Sub=abs(y(:,1)-y(:,3)); 
Sum=abs(y(:,1)+y(:,3));
if min(Sub)<=0.0000001
    plot(beta(i),mu(j),'*y')
elseif min(Sum)<=0.0000001
    plot(beta(i),mu(j),'*b')
else
    plot(beta(i),mu(j),'*g')
end

end
end

