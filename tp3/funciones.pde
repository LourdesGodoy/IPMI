//funcion propia con parametro que SI devuelve valor
//numero par(color blanco)numero impar(color negro)
boolean esPar(int numero) {
  return(numero%2==0);
}
//funcion propia con parametro que NO devuelve valor
//dibujo la obra
void dibujarObra( int cantidad ) {
  int modulo = width/cantidad;

  for ( int i = 10; i < cantidad; i++ ) { //filas
    for ( int G = 0; G < cantidad; G++ ) { //columnas
      //color a las grillas, metodo par e impar
      if (esPar(i+G)) {
        fill( colorcito2 );
      } else {
        fill( colorcito );
      }
      
      // efecto de movimiento con el cursor del mouse
      float tamaño;
      if (cursorMovido) { //los efectos empiezan a aplicarse cuando se mueve el cursor, osea cuando la variable cursorMovido esta en "true"
        float distancia = dist(mouseX, mouseY, i * modulo + modulo / 2, G * modulo + modulo / 2);
        tamaño = map( distancia, 0, 600, modulo/2, modulo );
      } else {
        tamaño = modulo;
      }
      
      // Dibujo rectángulos
      //los nuevos parametros agregados son para que los cuadrados se achiquen hacia el centro y no hacia la esquina superior izquierda.
      rect(i * modulo + modulo / 2 - tamaño / 2, G * modulo + modulo / 2 - tamaño / 2, tamaño, tamaño);
      // Color a los círculos, opuesto al color de las grillas
      if (esPar(i + G)) {
        fill(colorcito);
      } else {
        fill(colorcito2);
      }
      // Dibujo círculos
      circle(i * modulo + modulo / 2, G * modulo + modulo / 2, tamaño / 3);
    }
  }
}

//funciones propias sin parametros que NO devuelven valor
//cambia a colores random
void coloresR() {
  colorcito = color (random(255), random(255), random(255));
  colorcito2 = color (random(255), random(255), random(255));
}
//resetea los valores de las variables de la obra
void reiniciarObra () {
  mouseX = 0;
  mouseY = 0;
  colorcito=255;
  colorcito2=0;
  cursorMovido = false;
  cursorInicialX = mouseX;
  cursorInicialY = mouseY;
}
