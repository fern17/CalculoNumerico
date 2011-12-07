//Realiza la factorizacion LU de Crout, donde
// la diagonal de U es unitaria.
// L es matriz triangular inferior
// U es matriz triangular superior


function [L,U] = fact_crout(A)
    n = size(A,1);
    L = zeros(n,n);
    U = zeros(n,n);
    for k=1:n
        U(k,k) = 1;
        L(k,k) = A(k,k) - L(k,1:(k-1))*U(1:(k-1),k);
        for j=(k+1):n
            U(k,j) = (A(k,j) - L(k,1:(k-1))*U(1:(k-1),j))/L(k,k);
        end
        for i=(k+1):n
            L(i,k) = (A(i,k) - L(i,1:(k-1))*U(1:(k-1),k));
        end
    end
endfunction

    