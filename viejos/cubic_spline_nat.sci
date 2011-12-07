function [a,b,c,d] =  cubic_spline_nat(x,f)
    n = length(x);
    h = zeros(n,1);
    a = f;
    for i=1:n-1
        h(i) = x(i+1) - x(i);
    end
    for i=2:n-1
        alfa(i) = 3/h(i) * (a(i+1) - a(i))- 3/h(i-1) * (a(i) - a(i-1));
    end
    l = ones(n,1);
    mu = zeros(n,1);
    zeta = zeros(n,1);
    for i=2:n-1
        l(i) = 2 * (x(i+1) - x(i-1)) - h(i-1)*mu(i-1);
        mu(i) = h(i)/l(i);
        zeta(i) = (alfa(i) - h(i-1) * zeta(i-1)) / l(i);
    end
    b = zeros(n,1);
    c = zeros(n,1);
    d = zeros(n,1);
    for j=(n-1):-1:1
        c(j) = zeta(j) - mu(j)*c(j+1);
        b(j) = (a(j+1) - a(j)) / h(j) - (h(j)/3) * (c(j+1) + 2*c(j));
        d(j) = (c(j+1) - c(j)) / (3*h(j));
    end
endfunction
