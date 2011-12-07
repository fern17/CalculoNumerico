//Realiza la eliminacion de Gauss
//A es matriz de nxn
//b es vector fila de n
//B es la matriz triangular superior resultado de la eliminacion
//si se necesita pivoteo, arroja error

function [B] = gauss_elim(A,b)
    A = [A,b'];
    M = zeros(size(A));
    n = length(b);
    for i=1:(n-1)
        for j=(i+1):n
            if A(i,i) == 0
                disp("ERROR. Se necesita pivoteo");
                return
            end
            
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

            