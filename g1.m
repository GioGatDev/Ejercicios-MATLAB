function x = g1(x)
x(1) = sqrt(10 - x(1)*x(2));
x(2) = sqrt((57 - x(2))/(3 * x(1)));
