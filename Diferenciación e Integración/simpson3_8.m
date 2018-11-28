%Para ejecutar: simpson3_8(@f1, 0, 0.8, 1)
%Donde f1 es la ecuacion establecida en la funcion del mismo nombre, 
%0 es el valor que toma a, 0.8 el valor de b y 1 el numero de divisiones

function I = simpson3_8(f, a, b, N)
    
    h = abs(b-a)/N;
    suma =0;
    
    for k=0:N-1
        x0 = a + h*k;
        x1 = x0 + h/3;
        x2 = x0 + 2*h/3;
        x3 = x0 + h;
        suma = suma + f(x0) + 3*f(x1) + 3*f(x2) + f(x3);
    end;
    
    I = h*suma/8;
end