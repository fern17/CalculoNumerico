// Realiza la iteracion de Euler hacia adelante
// para resolver un PVI en [a,b]
// con a<=t<=b y w0 = alfa
// haciendo n pasos, tamaño del paso = h

function z = f(t,y)
    z = y - t^2 + 1;
endfunction


function [w] = euler_adelante(a,b,n,alfa)
    h = (b-a)/n;
    w = zeros(n+1,1);
    w(1) = alfa;
    t = a;
    for i=2:(n+1)
        w(i) = w(i-1) + h*f(t,w(i-1));
        t = t+h;
    end
    disp(w);
endfunction