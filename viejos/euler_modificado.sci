// Realiza la iteracion de Euler modificado
// para resolver un PVI en [a,b]
// con a<=t<=b y w0 = alfa
// haciendo n pasos, tamaño del paso = h

function z = f(t,y)
    z = y - t^2 + 1;
endfunction


function [w] = euler_modificado(a,b,n,alfa)
    h = (b-a)/n;
    w = zeros(n+1,1);
    w(1) = alfa;
    t = a;
    for i=2:(n+1)
        wa = w(i-1) + h/2*f(t,w(i-1));
        w(i) = w(i-1) + h*f(t+h/2,wa);
        t = t+h;
    end
//    disp(w);
endfunction