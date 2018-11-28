x = [0,1,2,3,4,5];
y = [2.1, 7.70, 13.60, 27.20, 40.90, 61.10];
x_nva = 0:0.01:5;
N = length(x_nva);
y_nva = zeros(N, 1);
for k=1:N
y_nva(k) = interpolacionLineal(x_nva(k), x, y);
end;
plot(x_nva, y_nva, 'k-.', x, y, 'b*');
title('Interpolacion Lineal')
xlabel('x');
ylabel('f(x)');