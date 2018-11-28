%Para ejecutar:
% Integracion_punto_Medio([0,1], 0.5, 8, @Ej_punto_medio)
%En donde los valores corresponden a:
% vector de valores iniciales, valor de h, numero de puntos, funcion

function solucion = Integracion_punto_Medio(xini, h, N, f)
       
    D = length(xini);
    x = xini(1);
    y = xini(2:D);
    solucion = zeros(N+1,D);
    solucion(1,:) = [x,y];
    
    for k = 2:N+1
        xm = x + h/2;
        ym = y + f(x, y)*h/2;
        x = x + h;
        y = y + f(xm, ym)*h;
        solucion(k,:) = [x,y];
    end;
end