function y = f(x)
    y = 1 + x^2;
endfunction

function y = fp(x)
    y = 2*x; 
endfunction


function [p,it] = newton_raphson(p0,tol,maxit)
    p = zeros(maxit,1);
    it = maxit;
    for i=1:maxit 
        p(i) = p0 - f(p0)/fp(p0)
        if(abs(p(i)-p0)<tol)
            it = i;
            return;
        end
        p0 = p(i);
    end
endfunction
 
    
    
    