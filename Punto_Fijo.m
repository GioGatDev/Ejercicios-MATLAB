function r = Punto_Fijo(g, x1)
while 1
    x2 = g(x1)
    error = abs(norm((x2-x1)/x2));
    if(error < 0.0001) 
        break
    else
        x1 = x2;
    end;
end;
r = x2;