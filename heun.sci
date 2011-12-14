//Realiza el método de Heun (RK2) para aproximar la solución
// de una ecuación diferencial ordinaria.
// a,b : Extremos del intervalo
// N: número de puntos
// y0: condición inicial

function [w] = heun(a,b,N,y0)
    h = (b-a)/N;
    t = a;
    w = zeros(N+1,1);
    w(1) = y0;
    for i=2:(N+1)
        wi = w(i-1);
        w1 = hef(t, wi);
        w2 = hef(t+h, wi + h*w1);
        w(i) = wi + (h/2)*(w1 + w2);
        t = t + h;
    end
endfunction

function w = hef(t,y)
    w = y - t^2 + 1;
endfunction
