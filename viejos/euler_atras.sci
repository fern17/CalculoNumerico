//Realiza una iteracion de Euler hacia atras
// Toma un valor de w previamente calculado para este paso
// y lo corrige usando ese w y el w anterior (w0)

function z = f(t,y)
    z = y - t^2 + 1;
endfunction


function r = euler_atras(t,w,w0)
    r = w0 + h*f(t,w);
endfunction