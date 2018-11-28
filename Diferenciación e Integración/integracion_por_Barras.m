%Para su ejecucion: integracion_por_Barras(@f1, 0, 0.8, 1)
%Donde f1 es la ecuacion establecida en la funcion del mismo nombre, 
%0 es el valor que toma a, 0.8 el valor de b y 1 el numero de divisiones
function I = integracion_por_Barras(f, a, b, N)
h = abs(b-a)/N;
suma = 0;

for k=0:N-1
    suma = suma + f(a+h*k);
end;

I = suma*h;

end