clc; close all; clear all;
h = .01;
t = 0:h:4;
f = @(x) (5*cos(10*x) + (x.^2) -2*(x.^2) -6*x + 10);
y = f(t);

% for 1st derivative
for i = 1:length(t)-1
    yd(i) = (y(i+1)-y(i))/h;
end
% for 2nd derivative
for i = 1:length(t)-2
    ydd(i) = (yd(i+1)-yd(i))/h;
end


subplot(3,1,1)
plot(t,y);
subplot(3,1,2)
plot(t(1:length(yd)),yd);
subplot(3,1,3)
plot(t(1:length(ydd)),ydd);


for i = 1:length(yd)-1
    if (yd(i)*yd(i+1) < 0) % when yd changes sign or crosses zero
        if ydd(i)<0
            disp('Maxima: ')
            disp(y(i));
%             disp(yd(i));
%             disp(ydd(i));
        else
            disp('Minima: ')
            disp(y(i));
%             disp(yd(i));
%             disp(ydd(i));
        end
    end
end
            
        