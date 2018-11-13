function di = Circuito_Diodo(I, p)
   V = p(1);
R = p(2);
   di = V - R*I - Vd(V, I);
end