function f = f2(x)
n = length(x);
f = zeros(n,1);
f(1) = x(1)*x(1) - 2*x(1) - x(2) + 0.5;
f(2) = x(1)*x(1) + 4*x(2)*x(2) - 4;
end
