function Ainv = inversa(A)
N = length(A);
Af = Factorizacion(A);
Ainv = zeros(N,N);
for k = 1: N
    b = zeros(N,1);
    b(k) = 1;
    y = sustitucion_hacia_adelante(Af, b);
    x = sustitucion_hacia_atras(Af, y);
    Ainv(:,k) = x;
end; 
end