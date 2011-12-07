//Realiza las iteraciones del método SOR para una tolerancia y maximo de iteraciones dados
// Parte de un vector inicial solucion, x0 y tiene un argumento 0 < w < 2

function [x,it] = sor(A,b,x0,w,tol,maxit)
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
            x(i) = (1-w)*x0(i) + (b(i) - suma1 - suma2)*w/A(i,i);
        end
        
        if(norm(x0 - x) < tol)
            it = k;
            return;
        end;
        x0 = x;
    end
    return;
endfunction
