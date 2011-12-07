//Realiza la eliminacion de Gauss para una matriz A y un vector b
// Devuelve: B matriz triangular superior resultado de aplicar eliminación 
// Gaussiana a A. Realiza pivoteo parcial escalado.
//   Pivoteo Parcial Escalado: Busca el mejor candidato para pivote:
//   Calcula el mayor valor absoluto de cada fila y en cada iteracion utiliza 
//   como pivote el que tenga mejor relacion pivote/maxValorAbs

function [B] = elimGaussPPEscalado(A,b)
    n = size(A,1);
    A = [A b];
    s = zeros(n);
    
    //calculo de los mayores de cada fila
    for i=1:n
        s(i) = max(abs(A(i,:)));
    end
    
    for i=1:(n-1)
        for j=(i+1):n
            //Busqueda del mayor valor relativo
            maxValorRel = abs(A(i,i))/s(j); //valor
            fila = i;         //fila en la que se encuentra
            for k=(j+1):n
                if( abs(A(k,i))/s(k) > maxValorRel) 
                    //si encuentro un mejor candidato, guardo valor y fila
                    maxValorRel = A(k,i); 
                    fila = k;
                end
            end
            //intercambio
            A([fila i],:) = A([i fila],:);
            s([fila i],:) = s([i fila],:);
            
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

    
    