clc; close all; clear all;

f = @(x) cos(x);
a = 0;
b = 7;
h = 0.1;
x = a:h:b;
fx = f(x);
n = length(x);

I = zeros(1, n);
for i = 2:n
    s = 0;
    for j = 1:i
        if (j == 1 || j == i)
            s = s + fx(j);
        else
            s = s + 2 * fx(j);
        end
    end
    I(i) = (h/2) * s;
end
subplot(2,1,1);
plot(x, fx);

subplot(2,1,2);
plot(x, I);
