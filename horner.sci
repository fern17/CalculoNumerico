//Realiza el método de Horner para evaluar un polinomio y su derivada en un punto.
// P : Coeficientes del polinomio, en la forma [x0 x1 ... xn]
// x0: punto en donde evaluar
// y = P(x0)
// z = P'(x0)

function [y,z] = horner(P,x0)
    n = max(size(P));
    y = P(n);
    z = P(n);
    for j=(n-1):-1:2
        y = x0*y + P(j);
        z = x0*z + y;
    end
    y = x0*y + P(1);
endfunction
   
       
   