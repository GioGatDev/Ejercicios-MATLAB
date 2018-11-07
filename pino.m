% Dibujar el follaje del pino, de altura ?a?
a=10; %altura del follaje del pino
n=12; %Posici?n horizontal del v?tcice
t=3; %altura del tronco del pino
d=4; %di?metro del tronco del pino
for i=1:a
   clear cad2 cad1
   num_ast= 2*i-1;
   num_esp= n-i;
   cad1(1:num_esp)=' ';
   cad2(1:num_ast)='*';
   fprintf('%s%s\n',cad1,cad2)
end
% Dibujar el tronco del pino, de altura ?t?
   clear cad2 cad1
   num_ast=d;
   num_esp=n-d/2;
   cad1(1:num_esp)=' ';
   cad2(1:num_ast)='I';
 for i=1:t
   fprintf('%s%s\n',cad1,cad2)
end