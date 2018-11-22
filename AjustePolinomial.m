function a = AjustePolinomial (x, y, grado)
    N = length(x);
    M = ones(N, 1);
    for k=1:grado
        M = [M,x.^k];
        disp(M);
    end
    a=inv(M'*M)*M'*y;
    plot(a)
end
