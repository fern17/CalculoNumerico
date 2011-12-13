//Realiza la integración compuesta con el método de Simpson
// a,b: extremos del intérvalo
// M: número de segmentos (subdivisiones)
//  NOTA: este algoritmo no es exacto, quien sabe por qué?

function [y] = simpsonCompuesta(a,b,M)
    h = (b-a)/M;
    y0 = scf(a) + scf(b);
    y1 = 0;
    y2 = 0;
    for i=2:(M)
        x = a + (i-1)*h
        if(modulo(i,2) == 0)
            y2 = y2 + scf(x);
        else
            y1 = y1 + scf(x);
        end
    end
    y = (h/3)*(y0 + 2*y2 + 4*y1);
    
endfunction

function y = scf(x)
    y = 1;
endfunction