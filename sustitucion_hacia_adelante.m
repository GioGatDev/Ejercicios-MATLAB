function y = sustitucion_hacia_adelante(l,b)
     N = length(l(:,1));
     y = zeros(N,1);
     for k = 1: N
          suma = 0;
          for n = 1: k-1
               suma = suma + (l(k,n)*y(n));
               
          end;
          disp(l);
          disp(b);
          y(k) = (b(k) - suma);
     end;
end