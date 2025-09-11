clc; close all; clear all;
x = 0:6;
y = [0 .8415 .9093 .1411 -.7568 -.9589 -.2794];

o = 2;% Order

xk = [1 2 3 4];

s=0;

for i=1:length(x)
    p = 1;
    for j = 1:length(x)
        if i~=j
            p = conv(p, poly(x(j))/(x(i)-x(j)));
        end
    end
    s = s + p*y(i);
end
s
yk = polyval(s, xk);
plot(x,y,xk,yk,'o');

    