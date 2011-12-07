//Realiza la eliminacion de Gauss para una matriz A y un vector b
// Devuelve: B matriz triangular superior resultado de aplicar eliminación 
// Gaussiana a A. Realiza pivoteo básico
// Pivoteo Básico: Si el pivote es 0, busca un pivote en las filas inferiores 
//   que sea distinto a 0.
function [B] = elimGaussPivoteo(A,b)
    n = size(A,1);
    A = [A b];
    for i=1:(n-1)
        for j=(i+1):n
            if(A(i,i) == 0)
                for k=(i+1):n
                    if (A(k,i) <> 0)
                        A([i k],:) = A([k i],:);
                        break;
                    end
                end
                if (A(i,i) == 0)
                    disp("Todos los pivotes son 0. No se puede resolver");
                    return
                end
                
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

    
    