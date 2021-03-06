
R1 = 3.27;
R2 = 3.74;
R3 = 2.58;
R4 = 4.13;
guess1 = 70*pi/180;
guess2 = 35*pi/180;
accuracy = 1e-7;
count = 0;
for(t3= 85*pi/180: 1*pi/180 :805*pi/180)
    count = count + 1;
    f1 = @(t1,t2) R1*cos(t1) +R2*cos(t2)+R3*cos(t3)-R4;
    f2 = @(t1,t2) R1*sin(t1) -R2*sin(t2)-R3*sin(t3);
    df1d1 = @(t1,t2) -R1*sin(t1)
    df1d2 = @(t1,t2) -R2 *sin(t2);
    df2d1 = @(t1,t2) R1*cos(t1);
    df2d2 = @(t1,t2) -R2*cos(t2);
    [t1,t2] = newton2 (f1, f2, df1d1, df1d2, df2d1, df2d2, guess1, guess2, accuracy);
   
    line1x=[0 R1*cos(t1)];
    line1y = [0 R1*sin(t1)];
    line2x = [ R1*cos(t1) R1*cos(t1)+R2*cos(t2)];
    line2y = [R1*sin(t1) R3*sin(t3)];
    line3y = [R3*sin(t3) 0];
    line3x = [R1*cos(t1)+R2*cos(t2) R4];
    line3y = [R3*sin(t3) 0];
    line4x = [0 R4];
    line4y =[0 0];
    plot(line1x,line1y,'r',line2x,line2y,'g',line3x,line3y,'b',line4x,line4y,'k');
    axis([-3 7 -3 7]);
    set(gca, 'xtick',-3:7);
    set(gca, 'ytick',-3:7);
    pbaspect([1 1 1]);
    xlabel('x');
    ylabel('y');
    title('Assignment2');
    pause(.01);
    if (count == 1)
        pause (7);
    end
end