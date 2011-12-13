//Realiza la integración compuesta con el método del Trapecio
// a,b: extremos del intérvalo
// M: número de segmentos (subdivisiones)

function [y] = trapecioCompuesta(a,b,M)
    h = (b-a)/(M);

    y = (tcf(a) + tcf(b)) * (h/2);
    for k=1:(M-1)
        y = y + h*tcf(a+k*h);
    end
    
endfunction

function y = tcf(x)
    y = log(x);
endfunction