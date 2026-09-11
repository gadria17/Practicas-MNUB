%%Cree un vector fila, de nombre u, con componentes 1, 3, 5, y otro vector 
%fila v, con componentes 2, 4, 6. Calcule el producto escalar de ambos 
% vectores de dos formas, usando y sin usar el mandato dot.
u= [1,3,5];
v= [2,4,6];
%Sin el mandato dot
sin_dot = u*v'
pause
%Con el mandato dot
con_dot= dot(u,v)


%%Cree ahora un vector columna, de nombre w, con componentes 2, 4, 6, y calcule 
% el producto escalar de u y w, usando y sin usar el mandato dot.Cree ahora
% un vector columna, de nombre w, con componentes 2, 4, 6, y calcule el
%producto escalar de u y w, usando y sin usar el mandato dot.
w= [2;4;6];

%Usando el mandato dot
con_dot_2= dot(u,w)
pause
%Sin usar el mandato dot
sin_dot_2= u*w








