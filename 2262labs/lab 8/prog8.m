
[xd,yd]=textread('prog8.dat');
n=length(xd);
h=xd(2)-xd(1);
for k=5:n-4
  xd3=[xd(k-1) xd(k) xd(k+1)];
  yd3=[yd(k-1) yd(k) yd(k+1)];
  xd5=[xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2)];
  yd5=[yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2)];
  xd7=[xd(k-3) xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2) xd(k+3)];
  yd7=[yd(k-3) yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2) yd(k+3)];
  xd9=[xd(k-4) xd(k-3) xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2) xd(k+3) xd(k+4)];
  yd9=[yd(k-4) yd(k-3) yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2) yd(k+3) yd(k+4)];
  c2=polyfit(xd3,yd3,2);
  c4=polyfit(xd5,yd5,4);
  c6=polyfit(xd7,yd7,6);
  c8=polyfit(xd9,yd9,8);
  cder2=polyder(c2);
  der2=polyval(cder2,xd(k));
  cder4=polyder(c4);
  der4=polyval(cder4,xd(k));
  cder6=polyder(c6);
  der6=polyval(cder6,xd(k));
  cder8=polyder(c8);
  der8=polyval(cder8,xd(k));
  csecder2=polyder(cder2);
  secder2=polyval(csecder2,xd(k));
  csecder4=polyder(cder4);
  secder4=polyval(csecder4,xd(k)); 
  csecder6=polyder(cder6);
  secder6=polyval(csecder6,xd(k));
  cseder8=polyder(cder8);
  secder8=polyval(cseder8,xd(k));
  dif3=(yd(k+1)-yd(k-1))/(2*h);
  dif5=(yd(k-2)-8*yd(k-1)+8*yd(k+1)-yd(k+2))/(12*h);
  dif7=(-yd(k-3)+9*yd(k-2)-45*yd(k-1)+45*yd(k+1)-9*yd(k+2)+yd(k+3))/(60*h);
  dif9=(3*yd(k-4)-32*yd(k-3)+168*yd(k-2)-672*yd(k-1)+672*yd(k+1)-168*yd(k+2)+32*yd(k+3)-3*yd(k+4))/(840*h);
  secdif3=(yd(k-1)-2*yd(k)+yd(k+1))/(h^2);
  secdif5=(-yd(k-2)+16*yd(k-1)-30*yd(k)+16*yd(k+1)-yd(k+2))/(12*h^2);
  secdif7=(2*yd(k-3)-27*yd(k-2)+270*yd(k-1)-490*yd(k)+270*yd(k+1)-27*yd(k+2)+2*yd(k+3))/(180*h^2);
  secdif9=(-9*yd(k-4)+128*yd(k-3)-1008*yd(k-2)+8064*yd(k-1)-14350*yd(k)+8064*yd(k+1)-1008*yd(k+2)+128*yd(k+3)-9*yd(k+4))/(5040*h^2);
  fprintf('x=%4.1f der2=%5.3f der4=%6.3f der6=%6.3f der8=%6.3f secder2=%6.3f secder4=%7.3f secder6=%7.3f secder8=%7.3f\n',xd(k),der2, der4,der6,der8,secder2,secder4,secder6,secder8);
  fprintf('x=%4.1f dif3=%5.3f dif5=%6.3f dif7=%6.3f dif9=%6.3f secdif3=%6.3f secdif5=%7.3f secdif7=%7.3f secdif9=%7.3f\n',xd(k), dif3,dif5,dif7,dif9,secdif3,secdif5,secdif7,secdif9);
  fprintf('\n');
end