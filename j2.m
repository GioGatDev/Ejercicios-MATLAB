function y = j2(x)
n = length(x);
y = zeros(n, n);
y(1,1) = 2*x(1) -2;
y(1,2) = -2;
y(2,1) = 2*x(1);
y(2,2) = 8*x(2);
end
