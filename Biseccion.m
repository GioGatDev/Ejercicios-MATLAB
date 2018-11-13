function r = Biseccion(f, inicio, fin)
 mitad = 0;
 while abs((fin - inicio)/fin) > 0.0001
     mitad = (fin+inicio)/2.0;
   if(f(mitad) == 0)
       r = mitad;
return; end;
   if f(inicio)*f(mitad) < 0
       fin = mitad;
   else
     inicio = mitad;
   end;
 end;
 r= mitad;