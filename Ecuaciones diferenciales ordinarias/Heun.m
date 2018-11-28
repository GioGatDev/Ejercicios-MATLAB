%Para ejecutar 
%Heun([0,1], 0.5, 8, @Ej_Heun) 
%Los valores son respectivamente para la el intervalo de X inicial y final
%seguido de la altura y el n?mero de particiones, y la funcion a valuar que
%se le pasan los parametros desde la funcion Ej_Heun
function solucion = Heun(xini, h, N, f)
    
    D = length(xini);
    x = xini(1);
    y = xini(2:D);
    solucion = zeros(N+1,D);
    solucion(1,:) = [x,y];
    
    for k = 2:N+1
        %Predictor
        k1 = f(x,   y       );
        k2 = f(x+h, y + k1*h);
        %corrector
        x = x + h;
        y = y + (k1 + k2 )*h/2.0;
        solucion(k,:) = [x,y];
    end;
end