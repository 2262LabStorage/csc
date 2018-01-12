
function f = prog3bf(t,uf)
A =.001;
B =.01;
C = .0015;
D =.005;
E =.0005;
k =.6;
x =uf(1);
y =uf(2);
z =uf(3);
f=zeros(3,1);
f(1) = x-A*x^2-A*k*x*y-B*x*z;
f(2) = y-C*k*x*y-A*y^2-A*y*z;
f(3) = -z+D*x*z+E*y*z;


