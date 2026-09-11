system('git init')
repo=gitrepo

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

A_tras=A'

B=A'*I

%%4.Usando la notación ":" cree ahora un vector columna, de nombre AC2, con 
% el contenido de la segunda columna de la matriz A, y un vector fila, de 
% nombre AF3, con el contenido de la tercera fila de la matriz A.

AC2=A(:,2)
AF3=A(3,:)

%%5.Usando el operador .^, cree una matriz cuyos elementos sean, uno a uno, 
% los de la matriz A elevados al cuadrado. Compare este resultado con el de
% la operación A.*A (y verá que son iguales) y con el del producto 
% matricial A*A (y verá que son distintos). Este último, sin embargo, 
% coincidirá con el de A^2.

A_elevado=A.^2
A_elevado2=A.*A
A_matricial=A*A
A_3=A^2

%%6. Extraiga la componente (2,3) (fila 2, columna 3) de la matriz A y 
% multiplíquela por un vector que tenga por componentes los elementos de la
% diagonal principal de la matriz B (mandato diag). Llame P al resultado. 
% Fíjese en si éste es un vector fila o columna. Calcule las dimensiones 
% (longitud) del vector P (mandato length).

A23=A(2,3)
Bdiag=diag(B)
P=A23*Bdiag
%P es un vector columna y por tanto su dimensión es 3
dim_P=length(P)

%%7. Cree una matriz 2x3, de nombre C, cuyos componentes sean todos 1, y 
%multiplíquela por una matriz 3x3, de nombre Aleat, con componentes 
%escogidos aleatoriamente por Matlab. Llame E a la matriz resultante. 
%Fíjese en si los elementos de Aleat tienen todos el mismo signo y entre 
%qué valores varían. Calcule las dimensiones de la matriz E (mandato size).

C=ones(2,3)
Aleat=rand(3,3)
E=C*Aleat
dimensiones_E=size(E)
%Los valores de los elementos de Aleat varían entre 0 y 1, todos ellos
%positivos

%%8. Usando el mandato linspace, cree un vector, de nombre U, con 11 
% elementos (incluyendo los extremos) equiespaciados entre 0 y 1. Realice 
% la misma operación (llame ahora V al vector) usando la notación ":".
U=linspace(0,1,11)
V=[0:0.1:1]

%%9.







