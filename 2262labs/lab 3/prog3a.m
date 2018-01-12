
c = .00175;
t = 0: .001:13;
v0 = 0;
f = @(t,v)((4*t^2+7*t+135)/(sqrt(t^2+5*t+12)))-c*v^2;
options = odeset('AbsTol', 1e-7,'RelTol',1e-7);
[t, v] = ode45(f,t,v0,options);
v = v * 60/88;
plot(t,v,'b');
axis([0 13 0 120]);
set(gca,'xtick', 0: 13);
set(gca,'ytick', 0: 10: 120);
xlabel('t');
ylabel('v');
title('Assignment 3a');