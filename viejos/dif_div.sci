//Calcula los coeficientes de las diferencias divididas de Newton
// para el polinomio interpolante.
// x es la lista de puntos
// y es la lista de los valores de la funcion evaluada en esos puntos
function [d] = dif_div(x,y)
    n = length(x);
    for i=1:(n-1)
        y(i+1:n) = (y(i+1:n) - y(i))./(x(i+1:n)-x(i));
    end
    d=y
endfunction
