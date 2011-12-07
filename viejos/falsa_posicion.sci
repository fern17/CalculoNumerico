function y = f(x)
    y = x^2 - 6;
endfunction

function [p,it] = falsa_posicion(p0,p1,tol,maxit)
    it = maxit;
    p = zeros(maxit,1);
    q0 = f(p0);
    q1 = f(p1);
    for i=1:maxit 
        p(i) = p1 - q1*(p1 - p0)/(q1 - q0);
        if(abs(p(i)-p1)<tol)
            it = i;
            return;
        end
        q = f(p(i));
        if(q*q1 < 0)
            p0 = p1;
            q0 = q1;
        end
        p1 = p(i);
        q1 = q;
    end
endfunction