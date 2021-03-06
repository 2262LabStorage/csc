

t =0:.001:5;
u0 =[.8 0 .4 0 .6 0 .3 0 .5 0 .7 0 ];
options=odeset('Reltol',1e-7,'AbsTol',1e-7);
[t ,u]=ode45('prog4f',t,u0,options);
line1x=[0 5];
line1y=[0 0];
figure(1);
plot(t,u(:,1),'b',t,u(:,3),'r',t,u(:,5),'g',t,u(:,7),'k',t,u(:,9),'c',t,u(:,11),'m',line1x, line1y, 'k');
axis([0 5 -1 1]);
set(gca,'xtick',0:5);
set(gca,'ytick',-1:.2:1);
xlabel('t');
ylabel('x1(blue),x2(red),x3(green),x4(black),x5(cyan),x6(magenta)');
title('Assignment 4, Figure 1');

figure(2);
plot(t,u(:,2),'b',t,u(:,4),'r',t,u(:,6),'g',t,u(:,8),'k',t,u(:,10),'c',t,u(:,12),'m',line1x, line1y, 'k');
axis([0 5 -3.2 3.6]);
set(gca,'xtick',0:5);
set(gca,'ytick',-3.2:.4:3.6);
xlabel('t');
ylabel('v1(blue),v2(red),v3(green),v4(black),v5(cyan),v6(magenta)');

title('Assignment 4, Figure 2');

