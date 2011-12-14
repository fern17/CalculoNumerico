//Realiza el método de Euler Modificado para aproximar la solución
// de una ecuación diferencial ordinaria.
// a,b : Extremos del intervalo
// N: número de puntos
// y0: condición inicial

function [w] = eulerModificado(a,b,N,y0)
    h = (b-a)/N;
    t = a;
    w = zeros(N+1,1);
    w(1) = y0;
    for i=2:(N+1)
        ww = eumf(t,w(i-1));
        w(i) = w(i-1) + h*eumf(t+h/2,w(i-1)+h/2*ww);
        t = t + h;
    end
endfunction

function w = eumf(t,y)
    w = y - t^2 + 1;
endfunction
