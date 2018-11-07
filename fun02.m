function [media, des] = fun02(x)
n = length(x);
suma = 0;
for k=1:n
suma = suma + x(k);
end;
media = suma/n;
suma = 0;
for k=1:n
suma = (x(k) - media)^2;
end;
des = sqrt(suma/n );