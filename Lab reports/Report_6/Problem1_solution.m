clc; close all; clear all;
%Finding roots/limits

% Define function
f = @(x) (exp(x) - 2*(x+1));

% Interval search
x_min = -10;
x_max = 10;
num_points = 500;              
X = linspace(x_min, x_max, num_points);

% Arrays for storing results
roots_found = [];   
counts = [];        
root_index = 0;    

% Scan for sign changes
for i = 1:length(X)-1
    if f(X(i)) * f(X(i+1)) < 0
        % Root exists between X(i) and X(i+1)
        [r, c] = my_bisection(X(i), X(i+1), f, 1e-4, 1e-14);

        % Check if this root is new 
        is_new = true;
        for k = 1:root_index
            if abs(roots_found(k) - r) < 1e-3
                is_new = false;
                break;
            end
        end

        % If new, store it 
        if is_new
            root_index = root_index + 1;  
            roots_found(root_index) = r; 
            counts(root_index) = c;     
            
        end
    end
end

disp('Roots are: ');
disp(roots_found(1));
disp(roots_found(2));

f1 = @(x) exp(x);
f2 = @(x) 2*(x+1);

y_point1 = f1(roots_found(1))
y_point2 = f1(roots_found(2))

% Integration
a = roots_found(1);
b = roots_found(2);
h=0.01;
x = a:h:b;
fx = f(x);
s = 0;
s2=0;
s3 =0;
n = length(x);

% Trapezoidal rule
for i = 1:n
    if (i==1 || i ==n)
        s = s + fx(i);
    else
        s = s + 2*fx(i);
    end
end

I = (h/2)*s;
disp('Required integration using Trapezoidal rule: ');
disp(I);
%simp 1/3 rule
for i = 1:n
    if (i==1 || i ==n)
        s2 = s2 + fx(i);
    elseif (mod(i,2) == 0)
        s2 = s2 + 4*fx(i);
    else
        s2 = s2 + 2*fx(i);
    end
end

I2 = (h/3)*s2;
disp('Required integration using Simpsons 1/3rd rule: ');
disp(I2);
% Simp 3/8 rule
for i = 1:n
    if (i==1 || i ==n)
        s3 = s3 + fx(i);
    elseif (mod(i,3) == 1)
        s3 = s3 + 2*fx(i);
    else
        s3 = s3 + 3*fx(i);
    end
end

I3 = (3/8)*(h*s3);
disp('Required integration using Simpsons 3/8th rule: ');
disp(I3);