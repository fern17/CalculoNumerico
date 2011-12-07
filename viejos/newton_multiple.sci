function y = f(x)
    y = exp(x) - x - 1;
endfunction

function y = fp(x)
    y = exp(x) - 1;
endfunction

function y = fpp(x)
    y = exp(x);
endfunction



function [p,it] = newton_multiples(p0,tol,maxit)
    it = maxit;
    for i=1:maxit
        p(i) = p0 - (f(p0)*fp(p0))/(fp(p0)^2 - f(p0)*fpp(p0));
        if(abs(p(i)-p0)<tol)
            it = i;
            return;
        end
        p0 = p(i);
    end
endfunction
 
    
    
