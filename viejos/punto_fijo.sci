function y = g(x)
    y = (10/(4+x))^0.5;
endfunction


function [x,h] = punto_fijo(x0,kmax,tol)
    h = zeros(kmax,1);
    x = x0;
    for i=1:kmax
        res = abs(g(x) - x);
        h(i) = res
        if(res < tol)
            return;
        end
        x = g(x);
    end
    disp("maximo iteraciones alcanzadas");
endfunction
