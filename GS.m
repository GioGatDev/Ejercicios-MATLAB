function y = GS(A, x, b)
N = length(x);
y = zeros(N,1);
for iter=1:100000
    for k = 1:N
        suma =0;
        for l= 1:N
            if k ~= l
                suma = suma + A(k,l)*x(l);
            end;
        end;
        x(k) = (b(k) - suma)/A(k,k);
    end;
    if sqrt(norm(x-y)) < 1e-6
        break;
    else
        y=x;

    end; 
end;
