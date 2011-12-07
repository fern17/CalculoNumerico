//Realiza la eliminacion de Gauss con Pivoteo
//A es matriz de nxn
//b es vector fila de n
//B es la matriz triangular superior resultado de la eliminacion
//si el elemento pivote es 0, busca el menor entero p tal que a_pi != 0.
//   Si no lo encuentra, arroja error.

function [B] = gauss_elim_pivoteo(A,b)
    A = [A,b'];
    M = zeros(size(A));
    n = length(b);
    for i=1:(n-1)
       for p=i:n
            if(A(p,i) <> 0)
                A([i p],:) = A([p i],:);
                break;
            end
        end
        
        if (A(i,i) == 0)
               disp("ERROR. No Existe Solucion Unica");
               return
        end
        
        for j=(i+1):n
            M(j,i) = A(j,i)/A(i,i);
            A(j,:) = A(j,:) - M(j,i)*A(i,:);
        end
        if A(n,n) == 0
            disp("ERROR. No Existe Solucion Unica");
            return
        end
    end
    B = A;
endfunction