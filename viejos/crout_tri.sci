//Realiza la factorizacion de Crout para Sistemas tridiagonales
// A debe ser una matriz tridiagonal
// L es una matriz triangular inferior con elementos distintos de cero 
//   en la diagonal principal y en la diagonal bajo la principal (i,i-1)
// U es una matriz triangular superior con unos en la diagonal,
//   elementos distintos de cero en la diagonal superior (i+1,i)
//   y el resto igual a cero.

function [L,U] = fact_crout_tri(A)
    n = size(A,1);
    L = zeros(n,n);
    U = zeros(n,n);
    for i=1:n
        U(i,i) = 1;
    end
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

    