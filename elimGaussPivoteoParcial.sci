//Realiza la eliminacion de Gauss para una matriz A y un vector b
// Devuelve: B matriz triangular superior resultado de aplicar eliminación 
// Gaussiana a A. Realiza pivoteo parcial.
//   Pivoteo Parcial: Busca el mejor candidato para pivote, que es el que
//    tenga mayor valor absoluto.

function [B] = elimGaussPivoteoParcial(A,b)
    n = size(A,1);
    A = [A b];
    for i=1:(n-1)
        for j=(i+1):n
            //Busqueda del mayor valor absoluto
            maxValorAbs = abs(A(i,i)); //valor
            fila = i; //fila en la que se encuentra
            for k=(j+1):n
                if( abs(A(k,i)) > maxValorAbs) 
                    //si encuentro un mejor candidato, guardo valor y fila
                    maxValorAbs = A(k,i); 
                    fila = k;
                end
            end
            //intercambio
            A([fila i],:) = A([i fila],:);
            
            if(A(i,i) == 0) //todos los pivotes restantes son 0
                disp("Error, no hay solucion");
                return;
            end
            
            //Procesos de elimGauss normal
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

    
    