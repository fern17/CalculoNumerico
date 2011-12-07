//Realiza las iteraciones de Gauss Seidel para una tolerancia y maximo de iteraciones dados
// Parte de un vector inicial solucion, x0.

function [x,it] = gauss_seidel(A,b,x0,tol,maxit)
    n = length(b);
    x = x0;
    it = maxit;
    for k=1:maxit
        for i=1:n
            suma1 = 0;
            for j=1:(i-1)
                suma1 = suma1 + A(i,j)*x(j);
            end
            suma2 = 0;
            for j=(i+1):n
                suma2 = suma2 + A(i,j)*x0(j);
            end
            x(i) = (b(i) - suma1 - suma2)/A(i,i);
        end
        if(norm(x0 - x) < tol)
                x = x0;
                it = k;
                return;
        end;
        x0 = x;
    end
    return;
endfunction
