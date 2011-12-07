//Realiza la factorizacion LU de Doolittle, donde
// la diagonal de L es unitaria.
// L es matriz triangular inferior
// U es matriz triangular superior


function [L,U] = fact_doolittle(A)
    n = size(A,1);
    L = zeros(n,n);
    U = zeros(n,n);
    for k=1:n
        L(k,k) = 1;
        U(k,k) = A(k,k) - L(k,1:(k-1))*U(1:(k-1),k);
        for j=(k+1):n
            U(k,j) = (A(k,j) - L(k,1:(k-1))*U(1:(k-1),j));
        end
        for i=(k+1):n
            L(i,k) = (A(i,k) - L(i,1:(k-1))*U(1:(k-1),k))/U(k,k);
        end
    end
endfunction

    