
L = 2; 
T = .2;
a = 4/pi^2;
f = @(x, t) -32/pi^2 * sin(pi*x)*exp(t);
u0 = @(x)  sin(pi/4 * x) * (1+2*cos(pi/4 *x));
gleft = @(t) t;
gright = @(t).2-t;
nx = 7;
nt = 65;
u = heat1(f, u0, gleft, gright, a, nx, nt, L, T);
hx = L/(nx-1);
ht = T/(nt-1);
x = 0:hx:L;
t = 0:ht:T;
surf(x, t, u');
axis([0 2 0 .2 0 2]);
set(gca, 'xtick', 0:.4:2);
set(gca, 'ytick', 0:.04:.2);
set(gca, 'ztick', 0:.4:2);
xlabel('x');
ylabel('t');
zlabel('u');
title('Assignment 11, Figure 1');

%figure 2
figure(2);
nx = 17;
nt = 109;
u = heat1(f, u0, gleft, gright, a, nx, nt, L, T);
hx = L/(nx-1);
ht = T/(nt-1);
x = 0:hx:L;
t = 0:ht:T;
surf(x, t, u');
axis([0 2 0 .2 0 2]);
set(gca, 'xtick', 0:.4:2);
set(gca, 'ytick', 0:.04:.2);
set(gca, 'ztick', 0:.4:2);
xlabel('x');
ylabel('t');
zlabel('u');
title('Assignment 11, Figure 2');


