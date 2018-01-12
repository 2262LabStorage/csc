
t =0: .001:70;
u0 =[1000 300 400];
options=odeset('RelTol',1e-7,'AbsTol',1e-7);
[t, u]=ode45('prog3bf',t,u0,options);
plot(t,u(:,1),'r',t,u(:,2),'b',t,u(:,3),'g');
axis([0 70 -100 1100]);
set(gca,'xtick',0:10:70);
set(gca,'ytick',-100:100:1100);
xlabel('t');
ylabel('x(red),y(blue),z(green)Populations');
title('Assignment 3b');