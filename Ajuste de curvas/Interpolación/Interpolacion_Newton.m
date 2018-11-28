function yint = Interpolacion_Newton(xi, x, y)
    N = length(x);
    f = zeros(N, N);
    
    for n=1:N
        f(n, 1) = y(n);
    end;
    
    for m = 2:N
        for n = 1:N+1-m
            f(n,m)=(f(n+1,m-1)-f(n, m-1))/(x(n+m-1) - x(n));
        end;
    end;
    
    yint = f(1,1);
    dx = 1;
    
    for n=2:N
        dx = dx*(xi-x(n-1));
        yint = yint + f(1,n)*dx;
     end;
end