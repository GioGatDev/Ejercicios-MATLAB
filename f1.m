function f = f1(x)
n = length(x);
f = zeros(n,1);
f(1) = x(1)^2 + x(1)*x(2) - 10;
f(2) = x(2) + 3*x(1)*x(2)^2 - 57;
end