% Central difference method
clc; close all; clear all;
h = 0.01;
t = -4:h:4;

f = @(x) (sin(x) + sin(2*x));
y = f(t);

% for 1st derivative
for i = 2:length(t)-2
    yd(i) = (y(i+1)-y(i-1))/2*h;
end
% for 2nd derivative
for i = 3:length(t)-3
    ydd(i) = (yd(i+1)-yd(i-1))/2*h;
end

subplot(3,1,1)
plot(t,y);
subplot(3,1,2)
plot(t(1:length(yd)),yd);
subplot(3,1,3)
plot(t(1:length(ydd)),ydd);