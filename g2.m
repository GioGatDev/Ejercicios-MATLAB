function x = g2(x)
x(1) = sqrt(2*x(1) + x(2) - 0.5);
x(2) = sqrt(4 -x(1)^2)/2;