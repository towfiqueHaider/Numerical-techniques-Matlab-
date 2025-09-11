clc; close all; clear all;


A = [3 -1 -2;
     -1 6 -3;
     -2 -3 6];
B = [1;
     0;
     6];
 
X = A\B;

disp('The required mesh currents are: ');
fprintf('i1=%.2f A, i2=%.2f A, i3 = %.2f A', X(1), X(2), X(3));



 