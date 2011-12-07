//Realiza la factorización de Crout para una matriz Tridiagonal
//A es una matriz tridiagonal de nxn.
// U es matriz triangular superior con unos en la diagonal.
// L es matriz triangular inferior. 

function [L,U] = factCroutTridiagonal(A)
    n = size(A,1);
    U = eye(n,n);
    L = zeros(n,n);
    L(1,1) = A(1,1);
    U(1,2) = A(1,2)/L(1,1);
    for i=2:(n-1)
        L(i,i-1) = A(i,i-1);
        L(i,i) = A(i,i) - L(i,i-1)*U(i-1,i);
        U(i,i+1) = A(i,i+1)/L(i,i);
    end
    L(n,n-1) = A(n,n-1);
    L(n,n) = A(n,n) - L(n,n-1)*U(n-1,n);
endfunction
