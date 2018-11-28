function yint = interpolacionLagrange(xint, x, y)

suma = 0;
N = length(x);

for n=1:N
    producto = y(n);
    for m = 1:N
        if n~=m
        producto = producto*(xint -x(m))/(x(n) - x(m));
        end;
    end;
    suma = suma + producto;
end;

yint = suma;

end