function y = Interpolacion_lineal(x0, x, y)
N =length(x);
for k=1:N-1
    if x0 >= x(k) && x0 <= x(k+1) break;
    end
end
y = y(k) + (y(k+1) - y(k))/(x(k+1)-x(k))*(x0-x(k));
end