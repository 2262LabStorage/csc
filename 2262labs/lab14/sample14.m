%forgot to copy the lab but only a few lines were changed from this sample. Took about 10 minutes.

% Sample 14
zd = dlmread('sample14.dat1');
[xi  yi] = textread('sample14.dat2');
xd = 0:.2:2;
yd = 0:.2:1.6;
surf(xd,yd,zd);
axis([0  2  0  1.6  0  .5]);
set(gca, 'xtick', 0:.4:2);
set(gca, 'ytick', 0:.4:1.6);
set(gca, 'ztick', 0:.1:.5);
xlabel('x');
ylabel('y');
zlabel('z');
title('sample 14');
z_linear = interp2(xd, yd, zd, xi, yi, 'linear');
z_spline = interp2(xd, yd, zd, xi, yi, 'spline');
z_cubic = interp2(xd, yd, zd, xi, yi, 'cubic');
ni = length(xi);
for(k = 1:ni)
	fprintf('x=%.2f  y=%.2f  z_linear=%.5f  z_spline=%.5f  z_cubic=%.5f\n', xi(k), yi(k), z_linear(k), z_spline(k), z_cubic(k));
end