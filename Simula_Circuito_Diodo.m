function Simula_Circuito_Diodo()
    % Paramentros del Cicuito
    Vmax = 10;  % Volts;
    R    =  1.8; % ohm
    %tiempo de evaluaci?n
    t = [0:0.001:0.1];
    %Voltaje en funci ?on del tiempo v = Vmax*sin(377*t);
    for k = 1:length(t)
        I(k) = ReglaFalsa(@Circuito_Diodo, -Vmax/R, Vmax/R, [v(k), R]);
    end
    plot(t, v, t, I);
    title('Soluci?n de un circuito con Diodo'); xlabel('tiempo s');
    legend('Voltaje', 'Corriente');
    end