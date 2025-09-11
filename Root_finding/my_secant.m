function [root, count] = my_secant(xold,x, f, tol)

count = 0;
while (abs(f(xold))>tol)
    xnew = x - (xold - x) / (f(xold) - f(x)) * f(x);
    xold = x;
    x = xnew;
    count = count+1;
end

root = x;

end