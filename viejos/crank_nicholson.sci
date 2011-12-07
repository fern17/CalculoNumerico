//Realiza una iteracion de Crank-Nicholson
// Toma un valor de w previamente calculado para este paso
// y lo corrige usando ese w y el w anterior (w0) junto al t anterior (t0)

function z = f(t,y)
    z = y - t^2 + 1;
endfunction


function r = crank_nicholson(t,w,t0,w0)
    r = w0 + h/2*(f(t0,w0) + f(t,w));
endfunction