function u = wave1 (f,u0,v0,gleft,gright,a,nx,nt,L,T)
hx = L/(nx-1);
ht = T/(nt-1);
u = zeros(nx,nt);
for (i=1:nx)
  u(i,1)= u0((i-1)*hx);
end
for (k=2:nt)
  u(1,k) = gleft((k-1)*ht);
  u(nx,k) = gright((k-1)*ht);
end
k=2;
for (i =2:nx-1)
u(i, k) = ht^2*a/hx^2*(u(i-1, k-1) - 2*u(i, k-1) + u(i+1, k-1))...
	+ ht^2*f((i-1)*hx, (k-2)*ht) + u(i, k-1) + ht*v0((i-1)*hx);
end
for (k=3:nt)
  for (i =2:nx-1)
   u(i, k) = ht^2*a/hx^2*(u(i-1, k-1) - 2*u(i, k-1) + u(i+1, k-1))...
		+ ht^2*f((i-1)*hx, (k-2)*ht) + 2*u(i, k-1) - u(i,k-2);
  end 
end