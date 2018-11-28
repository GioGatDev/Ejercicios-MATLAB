x = [0,1,2,3,4,5];
y = [2.1, 7.70, 13.60, 27.20, 40.90, 61.10];

x_nva = 0:0.01:5;
grado = 5;
N = length(x_nva);
M = length(x);
y_nva = zeros(N, 1);

for n=1:N
    for m=1:M-1
        if x_nva(n) >= x(m) && x_nva(n) <= x(m+1) break;
        end;
    end;
    l = m+grado;
    if l > M
        l = M;
    end;
    
    y_nva(n) = interpolacionNewton(x_nva(n), x(m:l), y(m:l));
end;

plot(x_nva, y_nva, 'b-.', x, y, 'r*');
xlabel('x');
ylabel('f(x)');