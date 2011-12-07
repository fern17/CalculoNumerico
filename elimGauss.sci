//Realiza la eliminacion de gauss para una matriz A y un vector b
// Devuelve: B matriz triangular superior resultado de aplicar eliminación 
// Gaussiana a A. NO REALIZA PIVOTEO.
function [B] = elimGauss(A,b)
    n = size(A,1);
    A = [A b];
    for i=1:(n-1)
        for j=(i+1):n
            if(A(i,i) == 0)
                disp("Division por cero. Se necesita pivoteo");
                return
            end
            m = A(j,i)/A(i,i);
            A(j,:) = A(j,:) - m * A(i,:);
        end
    end
    if(A(n,n) == 0)
        disp("No existe solucion unica");
        return
    end
    
    B = A; 
endfunction

    
    