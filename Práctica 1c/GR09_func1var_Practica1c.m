function [y] = GR09_func1var_Practica1c(x);

if( x>=(-2)*pi && x<0)
    y=abs(x);
elseif (x>= 0 && x<= 2*pi)
    y=sin(x);
else
    disp("Mensaje de x no permitido");
end



