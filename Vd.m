function V = Vd(Vf, I)
% V = Vd(Vf, I)
% %
  Vf voltaje de la Fuente
  I Corriente en el circuito
Is = 1e-12;
Vt = 25.85e-3;
if I>=0
    V = log(I/Is+1)*Vt;
else
V = Vf;
end
end
