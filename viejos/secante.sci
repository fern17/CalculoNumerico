function y = f(x)
    y = x^2-6;
endfunction

function [p,it] = secante(p0,p1,tol,maxit)
    it = maxit;
    p = zeros(maxit,1);
    for i=1:maxit 
        p(i) = p1 - f(p1)*(p1 - p0)/(f(p1) - f(p0));
        if(abs(p(i)-p1)<tol)
            it = i;
            return;
        end
        p0 = p1;
        p1 = p(i);
    end
endfunction