function r = Regla_Falsa(f, a, b, p)
%ReglaFalsa(f, a, b, p)
% f : funci ?on a evaluar
%   a : inicio del intervalo
%   b : fin frl intervalo
%   p : parametros
 while 1
     c = a - f(a,p)*(b-a)/(f(b,p) - f(a,p));
     if(abs(f(c,p)) <= 1e-06)
break; end;
     if f(a,p)*f(c,p) < 0
         b = c;
     else
        a = c;
     end; 
 end;
r = c; 
end