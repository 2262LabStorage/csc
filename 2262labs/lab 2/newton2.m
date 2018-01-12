function [t1,t2]= newton2 (f1, f2, df1d1, df1d2, df2d1, df2d2, guess1, guess2, accuracy)
thetaNew = guess1;
thetaOld = guess1 +1;
theta2New = guess2;
theta2Old = guess2 +1;
while(abs(thetaNew-thetaOld) >= accuracy||abs(theta2New-theta2Old) >= accuracy)
    thetaOld = thetaNew;
    theta2Old = theta2New;
    d = [f1(thetaOld, theta2Old) 
        f2(thetaOld, theta2Old)];
    a = [df1d1(thetaOld,theta2Old) df1d2(thetaOld,theta2Old)
        df2d1(thetaOld,theta2Old) df2d2(thetaOld,theta2Old)];
    b = inv(a);
    p= b*d;
    thetaNew = thetaOld- p(1);
    theta2New = theta2Old - p(2);
end
t1 = thetaNew;
t2 = theta2New;
    

