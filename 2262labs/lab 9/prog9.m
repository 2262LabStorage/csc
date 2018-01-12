
alpha=47*pi/180;
beta=66*pi/180;
gamma=45*pi/180;
delta = 79*pi/180;

W=350;
G=390;
H=240;

d=[ 0
	0
	0
	W
	0
	0
    0
	G
    H
	0 ];

a=[cos(alpha)           0               0                 0                   0                   1               0               1               0               0               
   sin(alpha)           0               0                 0                   0                   0               0               0               1               0
   0                    -cos(beta)      cos(gamma)        0                   0                   -1              1               0               0               0
   0                    sin(beta)       sin(gamma)        0                   0                   0               0               0               0               0
   0                    0               0                 -cos(delta)         0                   0               -1              0               0               0
   0                    0               0                 sin(delta)          0                   0               0               0               0               1
   -cos(alpha)          cos(beta)       0                 0                   1                   0               0               0               0               0
   -sin(alpha)          -sin(beta)      0                 0                   0                   0               0               0               0               0
   0                    0               -cos(gamma)       cos(delta)          -1                  0               0               0               0               0
   0                    0               -sin(gamma)       -sin(delta)         0                   0               0               0               0               0];
b=inv(a);
F=b*d;
F