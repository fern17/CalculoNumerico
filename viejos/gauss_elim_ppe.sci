//Realiza la eliminacion de Gauss con Pivoteo Parcial Escalado
//A es matriz de nxn
//b es vector fila de n
//B es la matriz triangular superior resultado de la eliminacion
//Calcula el maximo de cada fila.
//  Luego usa como pivote: abs(a_pi/s_p) = max(1,n) abs( a_ki/s_k )

function [B] = gauss_elim_ppe(A,b)
    A = [A,b'];
    M = zeros(size(A));
    n = length(b);
    s = zeros(n);
    for i=1:n
        s(i) = max(abs(A(i,:)));
        if s(i) == 0
            disp("No existe solucion unica");
            return
        end
    end
    
    for i=1:(n-1)
        maxi = i;
        for p=(i+1):n
           if( abs(A(maxi,i)/s(maxi)) > abs(A(p,i)/s(p)))
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