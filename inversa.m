function inv = inversa(A)
N = length(A);
Af = Factorizacion(A);
inv = zeros(N,N);
for k = 1: N
    b = zeros(N,1);
    b(k) = 1;
    y = sustitucion_hacia_adelante(Af, b);
    x = sustitucion_hacia_atras(Af, y);
    inv(:,k) = x;
end; 
end