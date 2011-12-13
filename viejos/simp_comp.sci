function y = f(x)
    y = x;
endfunction

function fi = simp_comp(a,b,n)
    h = (b-a)/n;
    x = zeros(n+1,1);
    for i=0:n
        x(i+1) = a+i*h;
    end
    disp(x);
    //x=linspace(a,b,h)
    disp(x);
    suma1 = 0;
    for j=1:((n/2)-1)
        suma1 = suma1 + f(x(2*j));
    end
    
    suma2 = 0;
    for j=2:(n/2)
        suma2 = suma2 + f(x(2*j-1));
    end
    
    fi = h/3*(f(x(1)) + 2*suma1 + 4*suma2 + f(x(n)));
endfunction

    
        
    
    