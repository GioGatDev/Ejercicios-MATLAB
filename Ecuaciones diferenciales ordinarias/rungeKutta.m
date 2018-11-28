%los valores que toma el m?todo son:
% vector de valores iniciales, valor de h, numero de puntos, funcion

function solucion = rungeKutta(xini, h, N, f)
    
    D = length(xini);
    x = xini(1);
    y = xini(2:D);
    solucion = zeros(N+1,D);
    solucion(1,:) = [x,y];
    
    for k = 2:N+1
        k1 = f(x, y);
        k2 = f(x + 3*h/4, y+3*h*k1/4);
        x = x + h;
        y = y + (k1/3 + 2*k2/3)*h;
        solucion(k,:) = [x,y];
    end;
end