//Realiza el método de la Bisección
//[a,b] extremos del intérvalo. Deben cumplir f(a)*f(b) < 0
// Tol: tolerancia a buscar
// maxit: numero maximo de iteraciones

function [x,it] = biseccion(a,b,tol,maxit)
    fa = sign(bf(a));
    fb = sign(bf(b));
    x = 0;
    if (fa*fb > 0)
        disp("Intervalo incorrecto");
        return;
    end
    for i=1:maxit
        p = a + (b-a)/2;
        fp = bf(p);
        if(abs(fp) < tol) 
            x = p;
            it = i;
            return;
        end
        fa = sign(bf(a));
        fb = sign(bf(b));
        if(sign(fp)*fa < 0)
            b = p;
        else
            a = p;
        end
    end
    disp("Maximo numero de iteraciones alcanzadas");
    it = maxit;
endfunction

function y = bf(x)
    y = x^2 - 1;
endfunction       