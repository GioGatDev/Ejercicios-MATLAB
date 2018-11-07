function x = sustitucion_hacia_atras(u, y)
    N = length(y);
    x = zeros(N,1);
    for k = N: -1: 1
        suma = 0;
        for n = k+1: N
            suma = suma +(u(k,n)*x(n));
        end;
        x(k) = (y(k)-suma)/u(k,k);
    end;
end