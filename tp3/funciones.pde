//dibujo grillas
void grillas( int cantidad ) {
  int modulo = width/cantidad;
  for ( int i = 10; i < cantidad; i++ ) {
    for ( int G = 0; G < cantidad; G++ ) {
      //color a las grillas, par o impar
      if ((i+G)%2 == 0 ) {
        fill( colorcito2 );
      } else {
        fill( colorcito );
      }
      //efecto de movimiento
      float distancia = dist( mouseX, mouseY, i*modulo, G*modulo);
      float tamaño = map( distancia, 0, 848, modulo/2, modulo*2 );
      //dibujo rect
      rect( i*modulo, G*modulo, tamaño, tamaño );
      //color a los circle, opuesto al color de las grillas
      if ((i+G)%2 == 0 ) {
        fill( colorcito );
      } else {
        fill( colorcito2 );
      }
      //dibujo circle
      circle(i*modulo+modulo/2, G*modulo+modulo/2, tamañoCircle);
    }
  }
}
//cambio a colores random
void mousePressed() {
  colorcito = color (random(255), random(255), random(255));
  colorcito2 = color (random(255), random(255), random(255));
}
//agranda y achica los circle
void keyPressed () {
  if (key=='g'|| key == 'G') {
    tamañoCircle++;
  } else if (key == 'c' || key == 'C') {
    tamañoCircle--;
  }
  //reinicia la obra y los colores
  if (key == 'r' || key == 'R');{
  mouseX = 0;
  mouseY = 0;
  colorcito=255;
  colorcito2=0;
}
}
