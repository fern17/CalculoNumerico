//Evalua el polinomio P = a_0 + a_1*x +....+ a_n*x^n
// y su derivada en el punto x0
// y = P(x0)
// z = P'(x0)

function [y,z] = horner(P,x0)
    n = length(P);
    b = zeros(n,1);
    y = P(n);
    z = P(n);
    for i=(n-1):-1:2
        y = y*x0+P(i);
        z = z*x0 + y;
    end
    y = y*x0 + P(1);
endfunction
