function [root, count] = my_newton(xn, f, tol)

fs = sym(f);
dfs = diff(fs);
df = matlabFunction(dfs);

count = 0;
while(1)
    ratio = f(xn)/df(xn);
    if ( abs(ratio) < tol )
        break;
    end
    xn = xn - ratio;
    count = count + 1;
end

root = xn;

end