function C = multiplica(A, B)
   [N,M] = size(A);
   [R,S] = size(B);
if M~=R
    fprintf('El numero de renglones no es igual al numero de columnas\n');
    return;
end;
C = zeros(N, S);
for n=1:N
    for m= 1:S
        suma = 0;
        for k = 1:M
            suma = suma + A(n,k)*B(k,m);
        end;
        C(n,m) = suma;  
      end;
  end; 
end
        
