function r = reglafalsa(f, a, b)
 while abs((b - a)/a) > 0.0001
     c = a - f(a)*(b-a)/(f(b) - f(a));
   if(f(c) == 0)
       r = c;
return; 
   end;
   if f(a)*f(c) < 0
     b = c;
else
a = c;
   end; 
end;
r= c;