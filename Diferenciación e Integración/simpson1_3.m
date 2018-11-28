%Para ejecutar: simpson1_3(@f1, 0, 0.8, 2)
%Donde f1 es la ecuacion establecida en la funcion del mismo nombre, 
%0 es el valor que toma a, 0.8 el valor de b y 1 el numero de divisiones

function I = simpson1_3(f, a, b, N)
    
    h = abs(b-a)/N;
    s_par = 0;
    s_impar = 0;
    
    for k=1:N-1
        if mod(k,2) == 1
            s_impar = s_impar + f(a+h*k);
        else
            s_par = s_par + f(a+h*k);
        end;
    end;
    
    I = (b-a)*(f(a) + 4*s_impar + 2*s_par + f(b))/(3*N);
    
end