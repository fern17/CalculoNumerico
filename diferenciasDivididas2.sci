//Calcula los coeficientes del polinomio interpolante usando diferencias
// divididas de Newton, aplicando el algoritmo dado en las diapositivas
// x : Vector de puntos x
// y : Valores de la función en los puntos. y_i = f(x_i)
// z : Coeficientes del polinomio interpolante.
function [z] = diferenciasDivididas2(x,y)
    n = length(x);
    Q = zeros(n,n);
    Q(:,1) = y;
    for i=1:n
        for j=2:i
            Q(i,j) = (Q(i,j-1) - Q(i-1,j-1))/(x(i) - x(i-j+1));
        end
    end
    z = diag(Q);
endfunction
