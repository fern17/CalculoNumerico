//Calcula los coeficientes del polinomio interpolante usando diferencias
// divididas de Newton
// x : Vector de puntos x
// y : Valores de la función en los puntos. y_i = f(x_i)
// d : Coeficientes del polinomio interpolante.
function [d] = diferenciasDivididas(x,y)
    n = length(x);
    for i=1:(n-1)
        y(i+1:n) = (y(i+1:n) - y(i))./(x(i+1:n)-x(i));
    end
    d = y;
endfunction
