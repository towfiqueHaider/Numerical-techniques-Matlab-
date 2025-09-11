clc; close all; clear all;
x1 = 1:7;
y1 = [.5 2.5 2 4 3.5 6 5.5];
%y0 = linspace(1,7,100);
%y1 = y0.*y0

%test linear
[a1,b1] = lin_reg(x1,y1)
a11 = polyfit(x1,y1,1)
y1fit = a1 + b1* x1;



%test poly
[a2,b2,c2] = poly_reg(x1,y1)
y1fit2 = a2 + b2*x1 + c2*(x1.^2)

a22 = polyfit(x1,y1,2)

plot(x1,y1, 'r*', x1, y1fit, 'r--', x1, y1fit2, 'b');
