//Realiza el método de Runge Kutta de orden 4 para aproximar la solución
// de una ecuación diferencial ordinaria.
// a,b : Extremos del intervalo
// N: número de puntos
// y0: condición inicial

function [w] = rungeKutta4(a,b,N,y0)
    h = (b-a)/N;
    t = a;
    w = zeros(N+1,1);
    w(1) = y0;
    for i=2:(N+1)
        wi = w(i-1);
        k1 = h*rkf(t,wi);
        k2 = h*rkf(t+h/2, wi+k1/2);
        k3 = h*rkf(t+h/2, wi+k2/2);
        k4 = h*rkf(t+h, wi+k3);
        w(i) = wi + (1/6)*(k1 + 2*k2 + 2*k3 + k4);
        t = t + h;
    end
endfunction

function w = rkf(t,y)
    w = y - t^2 + 1;
endfunction
