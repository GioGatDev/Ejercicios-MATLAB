function C = resta(A, B)
  [N, M] = size(A);
  [R, S] = size(B);
if N~=R || M~=S
    fprintf('Las dimensiones tienen que ser iguales\n');
    return;
end;
C = zeros(N, M);
for n=1:N
    for m = 1:M
        C(n,m) = A(n,m)-B(n,m);
    end;
end
end
