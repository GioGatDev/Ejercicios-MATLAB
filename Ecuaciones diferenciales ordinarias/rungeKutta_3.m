%Para ejecutar:
% rungeKutta_3([0,1], 0.5, 8, @ej_funcion_RK_1_y_3)
% vector de valores iniciales, valor de h, numero de puntos, funcion

function solucion = rungeKutta_3(xini, h, N, f)
    D = length(xini);
    x = xini(1);
    y = xini(2:D);
    solucion = zeros(N+1,D);
    solucion(1,:) = [x,y];
    
    for k = 2:N+1
        k1 = f(x,       y);
        k2 = f(x + h/2, y + k1*h/2);
        k3 = f(x + h,   y - k1*h + 2*k2*h);
        x = x + h;
        y = y + (k1 + 4*k2 + k3)*h/6;
        solucion(k,:) = [x,y];
    end;
end