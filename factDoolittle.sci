//Realiza la factorización de Doolittle.
//A es una matriz de nxn.
// U es matriz triangular superior
// L es matriz triangular inferior con unos en la diagonal.

function [L,U] = factDoolittle(A)
    n = size(A,1);
    L = eye(n,n);
    U = zeros(n,n);
    for k=1:n
        U(k,k) = A(k,k) - L(k,1:(k-1))*U(1:(k-1),k);
        for j=(k+1):n
            U(k,j) = A(k,j) - L(k,1:(k-1))*U(1:(k-1),j);
            L(j,k) = (A(j,k) - L(j,1:(k-1))*U(1:(k-1),k))/U(k,k);
        end
    end
endfunction
