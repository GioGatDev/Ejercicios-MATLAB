function r = NewtonRaphson(f, J, x1)
while 1
    x2 = x1 - inv(J(x1))* f(x1);
    if norm((x1-x2)./x2) < 0.0001 break;
    else x1 = x2;
    end;
end;
r = x2;
