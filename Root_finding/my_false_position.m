function [root, count] = my_false_position(x1, x2, f, tol1, tol2)

count = 0;
xnew=1;
xold=3;

while(abs(xnew - xold) > tol1)
    xold = xnew;
    xnew = (f(x1)*x2 - f(x2)*x1)/(f(x1)-f(x2));
    count = count + 1;
    
    if( abs(f(xnew)) < tol2 )
        break;
    elseif ( f(x1)*f(xnew) < 0 )% is root between x1 and xnew?
        x2 = xnew;   
    elseif ( f(x2)*f(xnew) < 0 )% is root between x2 and xnew?
        x1 = xnew;  
    else
        disp("An issue occured");
    end
    root = xnew;
end
