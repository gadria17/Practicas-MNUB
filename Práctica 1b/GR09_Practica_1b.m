system('git init');
repo=gitrepo;

%%6. Usando la forma funcional del mandato load, cargue los datos del 
% fichero datos.txt en una matriz de nombre matrizDatos. Haga que, al 
% ejecutarse el script, se muestren por pantalla (en la ventana de mandatos)
% los valores almacenados en la matriz.

load datos.txt;

matrizDatos=datos

%%7. Use la notación de dos puntos (:) para leer los datos de la primera 
% columna de la matriz matrizDatos a un vector columna de nombre datosX y 
% los de la segunda columna a un vector columna de nombre datosY. Evite que
% los valores de datosX y datosY se muestren por pantalla (en la ventana de
% mandatos) al ejecutar el script.

datosX=matrizDatos(:,1);
datosY=matrizDatos(:,2);

%%8. Evalúe la función definida en GRxx_funcRR_Practica1b.m para los 
% valores de x dados por datosX y llame vectorF1 al vector resultante de 
% esta evaluación.

vectorF1=GR09_funcRR_Practica1b(datosX,)
























