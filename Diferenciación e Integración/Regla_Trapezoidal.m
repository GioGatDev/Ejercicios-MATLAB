%Para ejecutar: Regla_Trapezoidal(@f1, 0, 0.8, 1)
%Donde f1 es la ecuacion establecida en la funcion del mismo nombre, 
%0 es el valor que toma a, 0.8 el valor de b y 1 el numero de divisiones
function I = Regla_Trapezoidal(f, a, b, N)
    h = abs(b-a)/N;
    suma = f(a);
   
    for k=1:N-1
        suma = suma + 2*f(a+h*k);
    end;
    
    suma = suma + f(b);
    I = (b-a)*suma/(2*N);
end