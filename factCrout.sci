//Realiza la factorización de Crout
//A es una matriz de nxn.
// L es matriz triangular inferior
// U es matriz triangular superior con unos en la diagonal.

function [L,U] = factCrout(A)
    n = size(A,1);
    U = eye(n,n);
    L = zeros(n,n);
    for k=1:n
        L(k,k) = A(k,k) - L(k,1:(k-1))*U(1:(k-1),k);
        for j=(k+1):n
            U(k,j) = (A(k,j) - L(k,1:(k-1))*U(1:(k-1),j))/L(k,k);
            L(j,k) = A(j,k) - L(j,1:(k-1))*U(1:(k-1),k);
        end
    end
endfunction
