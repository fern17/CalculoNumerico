//Realiza el método de Newton-Rapshon
// p0: aproximación inicial
// Tol: tolerancia a buscar
// maxit: numero maximo de iteraciones

function [p,it] = newtonRaphson(p0,tol,maxit)
    for i=1:maxit
        efp = nrf(p0);
        efpp = nrfp(p0);
        if (abs(efpp) < tol)
            disp("derivada igual a 0, abortando");
            it = i;
            return;
        end
        p = p0 - efp/efpp;
        if(abs(p-p0) < tol)
            it = i;
            return;
        end
        p0 = p;
        
    end
    disp("Maximo numero de iteraciones alcanzadas");
    it = maxit;
endfunction

function y = nrf(x)
    y = cos(x) - x;
endfunction

function y = nrfp(x)
    y = -sin(x) - 1;
endfunction

    