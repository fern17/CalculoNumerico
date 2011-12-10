//Realiza el método de la Posicion Falsa
//p0 y p1: Aproximaciones iniciales
// Tol: tolerancia a buscar
// maxit: numero maximo de iteraciones

function [p,it] = posicionFalsa(p0,p1,tol,maxit)
    p = 0;
    for i=1:maxit
        fp0 = pff(p0);
        fp1 = pff(p1);        
        if (abs(fp1-fp0) < tol)
            disp("Aproximaciones cercanas a 0. Abortando");
            it = i;
            return;
        end
        p = p1 - fp1*(p1-p0)/(fp1-fp0);
        if(abs(p-p1) < tol)
            it = i;
            return;
        end
        q = pff(p);
        if(sign(q)*sign(fp1) < 0)
            p0 = p1;    
        end
        p1 = p;
    end
    disp("Maximo numero de iteraciones alcanzadas");
    it = maxit;
endfunction
        
function y = pff(x)
    y = cos(x) - x;
endfunction