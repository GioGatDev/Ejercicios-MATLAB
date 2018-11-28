%Para ejecutar 
%Euler([0,1], 0.5, 8, @Ej_Euler) 
%Los valores son respectivamente para la el intervalo de X inicial y final
%seguido de la altura y el n?mero de particiones, y la funcion a valuar que
%se le pasan los parametros desde la funcion Ej_Euler
function solucion = Euler(xini, h, N, f)
    
    D = length(xini);
    x = xini(1);
    y = xini(2:D);
    solucion = zeros(N+1,D);
    solucion(1,:) = [x,y];
       
    for k = 2:N+1
        x = x + h;
        y = y + f(x, y)*h;
        solucion(k,:)=[x, y];
    end;
end
