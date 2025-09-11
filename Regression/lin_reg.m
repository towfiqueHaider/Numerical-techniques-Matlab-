function [a,b] = lin_reg(x,y)
  n = length(x);
  sumx = sum(x);
  sumx2 = sum(x.^2);
  sumy = sum(y);
  sumxy = sum(x.*y);

  coeff = [n sumx; sumx sumx2];
  cons = [sumy; sumxy];

  v1 = coeff \ cons;
  a = v1(1);
  b = v1(2);
end

