//Realiza la iteracion de Gauss-Seidel para resolver un SEAL.
// A: matriz de nxn
// b: termino independiente
// x0: aproximacion inicial
// tol: tolerancia del metodo. 
// maxit: limite de iteraciones a realizar si no se alcanza la tolerancia prevista

//x: vector solucion Ax = b
//it: cantidad de iteraciones efectuadas

//El criterio de corte es:
// norm(x(k) - x(k-1))/norm(x(k)) < tol

function [x,it] = gaussSeidel(A,b,x0,tol,maxit)
    x = x0;
    n = size(A,1);
    for k=1:maxit
        for i=1:n
            x(i) = (b(i) - A(i,1:(i-1))*x(1:(i-1)) - A(i,(i+1):n)*x0((i+1):n))/A(i,i);
        end
        
        if(norm(x-x0)/norm(x) < tol)
            it = k;
            return;
        end
        x0 = x;
    end
    disp("Maximo de iteraciones alcanzadas");
    it = maxit;
endfunction

    