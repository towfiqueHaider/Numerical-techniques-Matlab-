clc; close all; clear all;
h = 0.01;
t = 0:h:4*pi;

f = @(x) (cos(x));
y = f(t);
for i = 2:length(t)-1
    yd(i) = (y(i)-y(i-1))/h;
end
subplot(2,1,1)
plot(t,y);
subplot(2,1,2)
plot(t(1:length(yd)),yd);
