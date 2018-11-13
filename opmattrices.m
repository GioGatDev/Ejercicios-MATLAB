suma = a+b 
resta = a - b 
mult =a.*b 
div = a ./ b
for i=1:3
   for j=1:3
      suma(i,j) = a(i,j) + b(i,j);
   end
end
%suma
for i=1:3
   for j=1:3
      resta(i,j) = a(i,j) - b(i,j);
   end
end
%resta
for i=1:3
   for j=1:3
      mult(i,j) = a(i,j) * b(i,j);
      end
end
%multiplicaci ?on
for i=1:3
   for j=1:3
      div(i,j) = a(i,j) / b(i,j);
   end
end
%divisi?n
pause;
