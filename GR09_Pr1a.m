%%1. Cree un vector fila, de nombre u, con componentes 1, 3, 5, y otro vector 
%fila v, con componentes 2, 4, 6. Calcule el producto escalar de ambos 
% vectores de dos formas, usando y sin usar el mandato dot.
u= [1,3,5];
v= [2,4,6];
%Sin el mandato dot
sin_dot = u*v'

%Con el mandato dot
con_dot= dot(u,v)
    

%%2. Cree ahora un vector columna, de nombre w, con componentes 2, 4, 6, y calcule 
% el producto escalar de u y w, usando y sin usar el mandato dot.Cree ahora
% un vector columna, de nombre w, con componentes 2, 4, 6, y calcule el
%producto escalar de u y w, usando y sin usar el mandato dot.
w= [2;4;6];

%Usando el mandato dot
con_dot_2= dot(u,w)
    
%Sin usar el mandato dot
sin_dot_2= u*w
    
%%3.Cree una matriz 3x3, de nombre A, cuyas filas tengan componentes 1,2,3 
% (1ª fila), 4,5,6 (2ª fila) y 7,8,9 (3ª fila), y una matriz identidad 3x3 
%(utilice para esto último el mandato eye), de nombre I. Calcule la 
% traspuesta de A y multiplíquela por la matriz I. llame B al resultado de 
% esta operación.

A=[1,2,3;
   4,5,6;
   7,8,9]

I= eye(3,3)











