//Realiza el método de Euler hacia Adelante para aproximar la solución
// de una ecuación diferencial ordinaria.
// a,b : Extremos del intervalo
// N: número de puntos
// y0: condición inicial

function [w] = eulerAdelante(a,b,N,y0)
    h = (b-a)/N;
    t = a;
    w = zeros(N+1,1);
    w(1) = y0;
    for i=2:(N+1)
        w(i) = w(i-1) + h*euf(t,w(i-1));
        t = t + h;
    end
endfunction

function w = euf(t,y)
    w = y - t^2 + 1;
endfunction
