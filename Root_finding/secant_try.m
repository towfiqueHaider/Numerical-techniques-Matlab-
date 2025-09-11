clc; close all, clear all
f = @(x) (x^2 - 4);

xkm1 = 556;
xk = -900;
tol = .001;
count = 0;

while abs(f(xkm1))>tol
    xkp1 = xk - (xkm1 - xk) / (f(xkm1) - f(xk)) * f(xk);
    xkm1 = xk;
    xk = xkp1;
    count = count+1
end

root = xk
