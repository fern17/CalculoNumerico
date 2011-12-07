function z = f(t,w)
    z = w - t^2 + 1;
endfunction

function [w] = runge_kutta4(a,b,n,alfa)
    h = (b-a)/n;
    w = zeros(n+1,1);
    w(1) = alfa;
    t = a;
    for i=2:(n+1)
        wi = w(i-1);
        k1 = h*f(t,wi);
        k2 = h*f(t+h/2,wi+k1/2);
        k3 = h*f(t+h/2,wi+k2/2);
        k4 = h*f(t+h,wi+k3);
        w(i) = wi + (k1 + 2*k2 + 2*k3 + k4)/6;
        t = t+h;
    end
endfunction
