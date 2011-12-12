//Realiza la interpolación con un trazador cubico sujeto
// x : Puntos donde se tiene la función
// y : Valor de la función en esos puntos
// fp0 : Valor de la derivada de la funcion en x0
// fpn : Valor de la derivada de la funcion en xn

// Cada trazador S_j se define en [x_j , x_j+1]
// S_j = a_j + b_j(x - x_j) + c_j(x - x_j)^2 + d_j(x-x_j)^3
// a = a_j de 0 a n
// b = b_j de 0 a n-1
// c = c_j de 0 a n-1
// d = d_j de 0 a n-1

function [a,b,c,d] = trazCubicoSujeto(x,y,fp0,fpn)
    a = y';
    n = length(x);
    h = zeros(n-1,1);
    for i=1:(n-1)
        h(i) = x(i+1) - x(i);
    end
    A = zeros(n,n);
    f = zeros(n,1);
    
    A(1,1) = 2*h(1);
    A(1,2) = h(1);
    A(n,n-1) = h(n-1);
    A(n,n) = 2*h(n-1);
    for i=2:(n-1)
        A(i,i) = 2*(h(i-1) + h(i));
        A(i,i-1) = h(i-1);
        A(i,i+1) = h(i);
        f(i) = 3/h(i)*(a(i+1) - a(i)) - 3/h(i-1)*(a(i) - a(i-1));
    end
    f(1) = (3/h(1))*(a(2) - a(1)) - 3*fp0;
    f(n) = 3*fpn - (3/h(n-1))*(a(n) - a(n-1));
    c = A\f;
    
    b = zeros(n-1,1);
    for i=1:(n-1)
        b(i) = (1/h(i)) * (a(i+1) - a(i)) - (h(i)/3) * (2*c(i) + c(i+1));
    end
    
    d = zeros(n-1,1);
    for i=1:(n-1)
        d(i) = (c(i+1) - c(i))/(3*h(i));
    end
endfunction
