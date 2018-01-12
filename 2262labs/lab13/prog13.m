%lab 13
[xd yd] = textread('prog13.dat1'); 
xi = textread('prog13.dat2');
n = length(xd);
x = xd(1):.001:xd(n);
figure(1);

y1 = interp1(xd,yd,x,'nearest');
plot(x,y1,'r',xd,yd,'ko');
axis([.5	5	6	9.5]);
set(gca,'xtick', .5:.5:5); 
set(gca,'ytick',6:.5:9.5);
xlabel('x');
ylabel('nearest');
title('Assignment13, Figure 1');


figure(2);
y2 = interp1(xd,yd,x,'linear');
plot(x,y2,'b',xd,yd,'ko');
axis([.5	5	6	9.5]);
set(gca,'xtick', .5:.5:5);  
set(gca,'ytick',6:.5:9.5);
xlabel('x');
ylabel('linear');
title('Assignment 13, Figure 2');

figure(3);
y3 = interp1(xd,yd,x,'spline');
plot(x,y3,'g',xd,yd,'ko');
axis([.5	5	6	9.5]);
set(gca,'xtick', .5:.5:5);  
set(gca,'ytick',6:.5:9.5);
xlabel('x');
ylabel('spline');
title('Assignment 13, Figure 3');

figure(4);
y4 = interp1(xd,yd,x,'cubic');
plot(x,y4,'k',xd,yd,'ko');
axis([.5	5	6	9.5]);
set(gca,'xtick', .5:.5:5);  
set(gca,'ytick',6:.5:9.5);
xlabel('x');
ylabel('cubic');
title('Assignment 13, Figure 4');

figure(5);
plot(x,y1,'r',x,y2,'b',x,y3,'g',x,y4,'k',xd,yd,'ko');
axis([.5	5	6	9.5]);
set(gca,'xtick', .5:.5:5);  
set(gca,'ytick',6:.5:9.5);
xlabel('x');
ylabel('nearest(red), linear(blue), spline(green), cubic(black)');
title('Assignment 13, Figure 5');

y_nearest = interp1(xd,yd,xi,'nearest');
y_linear = interp1(xd,yd,xi,'linear');
y_spline = interp1(xd,yd,xi,'spline');
y_cubic = interp1(xd,yd,xi,'cubic');
ni = length(xi);
for(k=1:ni)
fprintf('x= %.1f		y_nearest = %.5f    y_linear = %.5f		y_spline = %.5f		y_cubic = %.5f \n',xi(k),y_nearest(k),y_linear(k), y_spline(k), y_cubic(k));
end