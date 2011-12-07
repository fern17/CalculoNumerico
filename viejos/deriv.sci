function y = f(x)
    y = sin(1/x);
endfunction


function y = deriv2(x0,h)
    y = (f(x0+h)-f(x0))/h;
endfunction

function y = deriv_cent(x0,h)
    y = (f(x0+h) - f(x0-h))/(2*h);
endfunction


function [x,r] = funcion(x0)
    n = 100;
    x = zeros(n,1);
    for i=1:n
        x(i) = deriv_cent(x0,1/(10^i));
    end
endfunction
