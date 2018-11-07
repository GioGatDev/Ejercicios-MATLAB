function x = Eliminacion_Gaussiana(A, b)
    a = A; 
    N = length(b);
  for k =1:N-1
    for n = k+1:N
        b(n) = b(n) - a(n,k)*b(k)/a(k,k);
        for m=N:-1:k
            a(n,m) = a(n,m) - a(n,k)*a(k,m)/a(k,k);
        end; 
    end;
  end;
  disp(a);
  disp(b);
  x = sustitucion_hacia_atras(a, b);
end