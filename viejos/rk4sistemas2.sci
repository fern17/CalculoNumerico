function y = f1(t,u1,u2)
    y = -4*u1-2*u2+cos(t)+4*sin(t);
endfunction

function y = f2(t,u1,u2)
    y = 3*u1+u2-3*sin(t);
endfunction


function [u1,u2] = rk4sist(a,b,h,u10,u20)
    [t] = a:h:b;
    u1 = zeros(length(t))
    u2 = zeros(length(t))
    u1(1) = u10;
    u2(1) = u20;
    for i=1:(length(t)-1)
        k11 = h*f1(t(i),u1(i),u2(i));
        k12 = h*f2(t(i),u1(i),u2(i));
        
        k21 = h*f1(t(i)+h/2,u1(i)+k11/2,u2(i)+k12/2);
        k22 = h*f2(t(i)+h/2,u1(i)+k11/2,u2(i)+k12/2);
        
        k31 = h*f1(t(i)+h/2,u1(i)+k21/2,u2(i)+k22/2);
        k32 = h*f2(t(i)+h/2,u1(i)+k21/2,u2(i)+k22/2);
        
        k41 = h*f1(t(i)+h,u1(i)+k31,u2(i)+k32);
        k42 = h*f2(t(i)+h,u1(i)+k31,u2(i)+k32);

        u1(i+1) = u1(i) + 1/6*(k11 + 2*(k21+k31) + k41);
        u2(i+1) = u2(i) + 1/6*(k12 + 2*(k22+k32) + k42);
    end
    
endfunction
