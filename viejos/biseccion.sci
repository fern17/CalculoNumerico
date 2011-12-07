function y = f(x)
    y = x^3 + x - 4;
endfunction

function [p,it] = biseccion(a,b,tol,maxit)
    fa = f(a);
    fb = f(b);
    if(fa*fb > 0)
        disp("intervalo incorrecto");
        return;
    end
    it = maxit;
    for i=1:maxit 
        p = a + (b-a)/2;
        fp = f(p)
        if((abs(fp)<tol) | ((b-a)/2 < tol))
            it = i;
            return;
        end
        if(fa*fp > 0)
            a = p;
            fa = fp;
        else
            b = p;
        end
    end
endfunction
 
    
    
    