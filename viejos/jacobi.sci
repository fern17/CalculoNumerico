//Realiza las iteraciones de Jacobi para una tolerancia y maximo de iteraciones dados
// Parte de un vector inicial solucion, x0.

function [x] = jacobi(A,b,x0,tol,maxit)
    n = length(b);
    x = x0;
    for k=1:maxit
        for i=1:n
            suma = 0;
            for j=1:n
                if (j==i)
                    continue;
                end
                suma = suma + A(i,j)*x0(j);
            end         
            x(i) = (b(i) - suma)/A(i,i);
        end
        
        if(norm(x0 - x) < tol)
                x = x0;
                return;
        end;
        x0 = x;
    end
    return;
endfunction

            
                
            
    