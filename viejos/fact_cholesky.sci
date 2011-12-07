//Realiza la factorizacion LLt de Cholesky, donde
// L es matriz triangular inferior
// y la matriz de entrada es simetrica y definida positiva


function [L] = fact_cholesky(A)
    n = size(A,1);
    L = zeros(n,n);
    for k=1:n
        suma = 0;
        for s=1:(k-1)
            suma = suma + L(k,s)^2;
        end
        L(k,k) = sqrt(A(k,k) - suma);
        for i=(k+1):n
            L(i,k) = (A(i,k) - L(i,1:(k-1))*L(k,1:(k-1)))/L(k,k);
        end
    end
endfunction

    