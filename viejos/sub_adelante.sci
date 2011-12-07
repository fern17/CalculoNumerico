//Realiza la substitucion hacia adelante
//A es matriz de nxn y debe ser triangular inferior
//b es el vector de terminos independientes
//x es el vector solucion

function [x] = sub_adelante(A,b)
    n = length(b);
    x = zeros(n);
    x(1) = b(1)/A(1,1);
    for i=(2):(n)
        suma = 0;
        for j=1:(i-1)
            suma = suma + A(i,j)*x(j)
        end
        x(i) = (b(i) - suma)/A(i,i);
    end
    return
endfunction