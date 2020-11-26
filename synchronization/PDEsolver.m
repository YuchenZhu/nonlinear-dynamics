function F=PDEsolver(t,x,theta0,beta,mu)

F=zeros(4,1);

%xd(1)=theta1dot;xd(2)=theta1ddot;xd(3)=theta2dot;xd(4)=theta2ddot;
xd(1)=x(2);
xd(2)=-(sin(x(1))+mu*((x(1)/theta0)^2-1)*x(2)-beta*cos(x(1))*(sin(x(1))+sin(x(3))));
xd(3)=x(4);
xd(4)=-(sin(x(3))+mu*((x(3)/theta0)^2-1)*x(4)-beta*cos(x(3))*(sin(x(1))+sin(x(3))));



F= [xd(1); xd(2); xd(3); xd(4);];