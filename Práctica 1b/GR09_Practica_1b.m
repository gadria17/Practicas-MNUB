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

vectorF1=GR09_funcRR_Practica1b(datosX);

%%9. Usando los mandatos max, min, mean y std calcule los valores máximo, 
% mínimo, medio y desviación estándar, respectivamente, de vectorF1, 
% llamando a los resultados correspondientes maximoF1, minimoF1, mediaF1, y
% desvestF1 (NOTA: no debe confundirse el mandato mean, que calcula la 
% media de una serie de valores, con el mandato median, que calcula su 
% mediana). Deje que se muestren por pantalla los resultados.

maximoF1=max(vectorF1);
minimoF1=min(vectorF1);
mediaF1=mean(vectorF1);
desvestF1=std(vectorF1);

%%10. Usando el mandato fprintf, haga que se muestre por pantalla el 
% mensaje "El valor medio de vectorF1 es", seguido del valor de la variable
% mediaF1. Introduzca un salto de línea.

fprintf('El valor medio de vectorF1 es \n %f',mediaF1);

%%11. Evalúe ahora la función definida en GRxx_R2R_Practica1b.m para los 
% valores de x e y dados por datosX y datosY y llame vectorF2 al vector 
% resultante de esta evaluación.

vectorF2=GR09_funcR2R_Practica1b(datosX,datosY);

%%12. Evalúe a continuación la función definida en GRxx_R2R2_Practica1b.m 
% para los valores de x e y dados por datosX y datosY y llame vectorF3 y 
% vectorF4 a los vectores resultantes de esta evaluación.

[vectorF3,vectorF4]= GR09_funcR2R2_Practica1b(datosX,datosY);


%%13. Usando un mandato save, guarde todas las variables del workspace en 
% un fichero de nombre DatosGuardados.mat (la terminación mat la añadirá el
% propio Matlab).

save('DatosGuardados');

%%14. Usando un mandato disp, escriba por pantalla "FIN DE LA PRÁCTICA".

disp("FIN DE LA PRÁCTICA");

%%15. Ejecute el script y, una vez terminado correctamente, borre todas las
% variables del workspace usando un mandato clear all. A continuación, vea 
% que al ejecutar un mandato load DatosGuardados se regeneran todas las 
% variables que antes hemos salvado con save.

% Ejecutar load DatosGuardados.mat en la ventana de mandatos

























