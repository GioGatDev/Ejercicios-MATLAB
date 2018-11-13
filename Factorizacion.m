function a = Factorizacion(A)
   N = length(A);
   a = A;
   for n = 1:N
      for m = 1: n-1
        suma = 0;
for k = 1:m-1
          suma = suma + a(n,k) * a(k,m);
end;
        a(n,m) = (a(n,m) - suma)/ a(m,m);
      end;
      for m = n:N
        suma = 0;
        for k = 1: n-1
          suma = suma + a(n,k) * a(k,m);
        end;
        a(n,m) = a(n,m) - suma;
      end;
end; 
end
