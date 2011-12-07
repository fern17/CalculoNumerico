
function w = f(t,y)
    w = 2 * cos(t) - y;
endfunction

function w = euler(h,t,y)
    w = y + h*f(t,y);
endfunction



function [w] = cn_euler(a,b,h,alfa)
    n = (b-a)/h;
    w = zeros(n,1);
    w(1) = alfa;
    t = a+h;
    for i=2:n
        w(i) = w(i-1) + h/2*(f(t,w(i-1)) + euler(h,t,w(i-1)));     
        t = t+h;
    end
endfunction

    