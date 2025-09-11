function [a,b,c] = poly_reg(x,y)
  n = length(x);
  sumx = sum(x);
  sumx2 = sum(x.^2);
  sumx3 = sum(x.^3);
  sumx4 = sum(x.^4);
  sumy= sum(y);
  sumyx = sum(x.*y);
  sumyx2 = sum(y.*x.*x);
  coeff = [ n    sumx  sumx2;
            sumx sumx2 sumx3;
            sumx2 sumx3 sumx4]
  cons = [sumy;
          sumyx;
          sumyx2];
  v1 = coeff\cons;
  a = v1(1);
  b = v1(2);
  c = v1(3);
