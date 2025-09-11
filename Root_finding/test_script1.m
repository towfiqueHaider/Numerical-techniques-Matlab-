clc; close all; clear all;

% x1= linspace(-10, 10);
% f1 = (x1.^5 + x1 + 1);
% plot(x1,f1)
f = @(x) (x.^5 + x + 1);

%[r, c] = my_bisection(-1, 0, f, 10^(-4), 10^(-14))
%[r2, c2] = my_false_position(-1, 0, f, 10^(-4), 10^(-14))
%[r3, c3] = my_newton(5000,f, 10^(-14))
[r4, c4] = my_secant(1,6, f, 10^(-14))