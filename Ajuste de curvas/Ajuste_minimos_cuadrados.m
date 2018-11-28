%Para ejecutar solo correr la funcion y darle el numero de grado de
%ecuacion
function a = Ajuste_minimos_cuadrados ()
    g = input('\n Ingrese el grado:\n');
    x = [1,2,3,4,5,6,7]';
    y = [0.5, 2.5, 2, 4, 3.5, 6, 5.5]';
    N = length(x);
    M = ones(N, 1);
    for k=1:g
        M = [M,x.^k];
        disp(M);
    end
    a=inv(M'*M)*M'*y;
    plot(a,'b')
    title('Resultado')
end

%Forma de ejecuci?n: Ajuste_minimos_cuadrados(1) Dentro del par?ntesis solo
%se le da el grado, si se quiere cambiar los vectores, se puede hacer
%directamente desde la funci?n
