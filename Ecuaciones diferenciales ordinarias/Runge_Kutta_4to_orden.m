function Runge_Kutta_4to_orden
fprintf('\n \tMetodo RUNGE-KUTTA de ORDEN 4\n')
f=input('\n Ingrese la ecuacion diferencial\n','s');
x0=input('\n Ingrese el primer punto x0:\n'); %condici?n x inicial
x1=input('\n Ingrese el segundo punto x1:\n'); %condici?n x final
y0=input('\n Ingrese la condicion inicial y(x):\n');%condici?n de y(x)
n=input('\n Ingrese el numero de pasos N:\n');
h=(x1-x0)/n; %Calcula la altura
xs=x0:h:x1; %Variable temporal que guarda los valores iniciales
fprintf('\n K \tXk \t y(k)'); % Imprime la tabla de resultados 
for i=1:n
it=i-1;
x0=xs(i);
x=x0;
y=y0;
k1=h*eval(f);
x=x0+h/2;
y=y0+k1/2;
k2=h*eval(f);
x=x0+h/2;
y=y0+k2/2;
k3=h*eval(f);
x=x0+h;
y=y0+k3;
k4=h*eval(f);
y0=y0+(k1+2*k2+2*k3+k4)/6;
fprintf('\n%2.0f%10.6f%10.6f\n',it,x0,y0);
end
fprintf('\n El punto aproximado y(x) es = %8.6f\n',y0);