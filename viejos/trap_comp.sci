function y = f(x)
    y = sin(x);
endfunction

function fi = trap_comp(a,b,M)
    h = (b-a)/(M);
    x = linspace(a,b,M+1);
    suma1 = 0;
    for j=2:M
        suma1 = suma1 + f(x(j));
    end
    fi = h/2*(f(a) + f(b) + 2*suma1);
endfunction

    
        
    
    