//Realiza la factorización de Cholesky
//A es una matriz de nxn.
// L es matriz triangular superior
// Lt es la transpuesta de L

function [L,Lt] = factCholesky(A)
    n = size(A,1);
    L = zeros(n,n);
    for k=1:n
        L(k,k) = sqrt(A(k,k) - sum(L(k,1:(k-1))^2));
        for i=(k+1):n
            L(i,k) = (A(i,k) - L(i,1:(k-1))*L(k,1:(k-1)))/L(k,k);
        end
    end
    Lt = L';
endfunction