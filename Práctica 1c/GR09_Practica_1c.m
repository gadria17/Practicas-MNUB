
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
    u = x + 3.5
end

%Dibuje, usando un mandato plot, la función 𝑦(𝑥), usando línea continua de 
%color azul. Etiquete los ejes como x e y (mandatos xlabel, ylabel). 
%Limite los valores de x entre -3.5 y 3.5 (mandato xlim). Añada rectas 
%perpendiculares (ejes) que pasen por el origen de coordenadas 
%(mandatos xline(0), yline(0)); vea el efecto de añadir estos mandatos.

