clc; close all; clear all;
N = 1000
x=1:N;
avg_x = mean(x);
sum=0;


for i=1:N
    sum = sum + (x(i)-avg_x)^2;
end

variance = sum/N;
disp('The variance of array x is: ');
disp(variance)