//Realiza la eliminacion de Gauss con Pivoteo Parcial
//A es matriz de nxn
//b es vector fila de n
//B es la matriz triangular superior resultado de la eliminacion
//Busca el elemento pivote de mayor valor absoluto

function [B] = gauss_elim_piv_par(A,b)
    A = [A,b'];
    M = zeros(size(A));
    n = length(b);
    for i=1:(n-1)
        maxi = i;
        for p=(i+1):n
           if(abs(A(p,i)) > abs(A(maxi,i)))
               maxi = p;
           end
        end
        A([i maxi],:) = A([maxi i],:);
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