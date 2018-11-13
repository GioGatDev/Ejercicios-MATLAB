function J = j1(x)
n = length(x);
J = zeros(n, n);
J(1,1) = 2*x(1) + x(2);
J(1,2) = x(1);
J(2,1) = 3*x(2)^2;
J(2,2) = 1 + 6*x(1)*x(2);
end