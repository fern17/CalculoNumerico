//Realiza la substitucion hacia atras
//A es matriz de nxn y debe ser triangular superior
//b es el vector de terminos independientes
//x es el vector solucion

function [x] = sub_atras_idx(A,b,idx)
    n = length(b);
    x = zeros(n);
    x(n) = b(n)/A(n,n);
    for i=idx($:-1:1)
        suma = 0;
        for j=(i+1):n
            suma = suma + A(i,j)*x(j)
        end
        x(i) = (b(i) - suma)/A(i,i);
    end
    return
endfunction