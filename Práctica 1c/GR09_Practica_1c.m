
%Usando un mandato linspace, cree un vector, de nombre x, con 101 valores 
%equiespaciados entre −2𝜋 y 2𝜋 y evalúe la función y en ese conjunto de 
%valores de x (llame y al resultado de esta evaluación).
x=linspace(-2*pi,2*pi,101);
y=zeros(1,length(x));
for k=1:length(x) 
    y(k) = GR09_func1var_Practica1c(x(k));   
end

%Evalúe ahora la función 𝑢(𝑥) = 𝑥 + 3.5 para los valores del vector x antes
%definido (llame u al vector de valores resultantes de esta evaluación).

u=zeros(1,length(x));
for k=1:length(x)
    u(k) = x(k) + 3.5;
end

%Dibuje, usando un mandato plot, la función 𝑦(𝑥), usando línea continua de 
%color azul. Etiquete los ejes como x e y (mandatos xlabel, ylabel). 
%Limite los valores de x entre -3.5 y 3.5 (mandato xlim). Añada rectas 
%perpendiculares (ejes) que pasen por el origen de coordenadas 
%(mandatos xline(0), yline(0)); vea el efecto de añadir estos mandatos.

xlabel('x');
ylabel('y');
plot(x,y,'b-');
xlim([-3.5 3.5]);
xline(0);
yline(0); %% Se añaden el eje de las abscisas y el eje de coordenadas

%Emita un mandato hold on.
hold on;

%Dibuje, usando un nuevo mandato plot, la función 𝑢(𝑥), usando línea 
%punteada de color rojo. Usando un mandato legend, añada una leyenda que 
%indique qué gráfica corresponde a y y cuál a u.
plot(x,u,'r--');
legend("Gráfica de y","Gráfica de u")

%Emita un mandato hold off.
hold off;

%Emita un mandato figure. Este mandato hará que la gráfica generada a 
%continuación se abra en una nueva ventana. Vamos a realizar a continuación 
%una figura con cuatro subfiguras. En primer lugar, lo haremos con cuatro 
%parejas de mandatos sublot y plot. Después, lo automatizaremos mediante el
%uso de un bucle for (aunque sin incluir títulos de gráfica).
figure;

%Usando los mandatos subplot y plot, cree un gráfica con cuatro subgráficas,
%dispuestas en dos filas y dos columnas, de las funciones 𝑦 = sin (𝑥), 
%𝑦 = sin (2𝑥), 𝑦 = sin (3𝑥), 𝑦 = sin (4𝑥), usando el mismo vector x definido
%anteriormente. Límite (mandato axis) los valores de x mostrados en la 
%gráfica entre 0 y 2𝜋, y los de y entre -1.5 y 1.5, añada a los ejes 
%etiquetas x e y, y titule (mandato title) las gráficas correspondientes 
% como "seno(x)", "seno(2x)", "seno(3x)" y "seno(4x)".

subplot(2,2,1);
plot(x,sin(x)); 
axis([0 2*pi -1.5 1.5]); 
xlabel('x'); ylabel('y');
title('seno(x)');
subplot(2,2,2);
plot(x,sin(2*x)); 
axis([0 2*pi -1.5 1.5]);
xlabel('x'); ylabel('y');
title('seno(2x)');
subplot(2,2,3);
plot(x,sin(3*x)); 
axis([0 2*pi -1.5 1.5]); 
xlabel('x');ylabel('y');
title('seno(3x)');
subplot(2,2,4);
plot(x,sin(4*x)); 
axis([0 2*pi -1.5 1.5]);
xlabel('x'); ylabel('y');
title('seno(4x)');

figure;

%%Vamos ahora a repetir la figura múltiple anterior, pero automatizando el 
%proceso usando un bucle for con índice k variando de 1 a 4, en el que se 
% realicen las siguientes operaciones:
% -Emita un mandato subplot que haga referencia a la k-ésima subgráfica.
% -Emita un mandato plot que dibuje, en la k-ésima subgráfica, la gráfica 
%  de la función sin(k*x). Añada a este plot los mismos mandato axis, 
%  xlabel e ylabel del caso anterior, pero elimine ahora los títulos (title).

for k=1:4
    subplot(2,2,k);
    plot(x,sin(k*x)); 
    axis([0 2*pi -1.5 1.5]);
    xlabel('x');ylabel('y');
end

%Usando un doble bucle for, cree una matriz z cuyos componentes sean el 
%resultado de aplicar la función GRxx_func2var_Practica1c antes definida a 
%los vectores x e y. Use sendos mandatos length en la definición de los 
%rangos de variación de los bucles for.


for i=1:length(x)
    for j = 1:length(y)
        z(j,i) = GR09_func2var_Practica1c(x(i), y(j));
    end
end

figure;

% Dibuje, usando un mandato surf, la superficie 𝑧 = 𝑓(𝑥, 𝑦) , siendo f la 
% función definida en GRxx_func2var_Practica1c. Etiquete los ejes como x, 
% y, z.
surf(x,y,z);
xlabel('x'); ylabel('y'); zlabel('z');

%Usando un mandato meshgrid, cree una malla de valores de x e y (llame 
%[X ,Y] a la matriz correspondiente).
[X, Y] = meshgrid(x,y);

%Calcule los valores de una matriz Z para los puntos de esa malla usando la
%función GRxx_func2var_Practica1c.
Z=GR09_func2var_Practica1c(X,Y);

figure;

surf(X,Y, Z);
xlabel('x'); ylabel('y'); zlabel('z');