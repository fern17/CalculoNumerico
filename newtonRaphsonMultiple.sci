//Realiza la iteración del método de Newton-Raphson para funciones
// con raíces múltiples.
// p0: aproximación inicial
// tol: tolerancia a buscar
// maxit: cantidad máxima de iteraciones a hacer.
function [p,it] = newtonRaphsonMultiple(p0,tol,maxit)
    for i=1:maxit
        fp = nrmf(p0);
        
        if(abs(fp) < tol)
            it = i;
            return;
        end
        fpp  = nrmfp(p0);
        fppp = nrmfpp(p0);
        p = p0 - (fp*fpp) / (fpp^2 - fp*fppp);;
        p0 = p;
    end
    disp("Maximo de iteraciones alcanzadas");
    it = maxit;
endfunction

function y = nrmf(x)
    y = exp(x) - x - 1;
endfunction

function y = nrmfp(x)
    y = exp(x) - 1;
endfunction

function y = nrmfpp(x)
    y = exp(x);
endfunction