//////VIDEO: https://youtu.be/rsa1dg4nQ1Q /////

PImage Fotito;
color colorcito, colorcito2;
boolean cursorMovido = false;
int cursorInicialX, cursorInicialY;

void setup() {
  size( 800, 400 );

  Fotito = loadImage("F_42.png");
  image(Fotito, 0, 0, 400, 400);
  colorcito = color(255);
  colorcito2 = color(0);
}

void draw() {
  background ( 255 );

  //al mover el cursor por primera vez cambia el valor de cursorMovido a "true"
  if (mouseX != cursorInicialX || mouseY != cursorInicialY) {
    cursorMovido = true;
  }

  println ("X:");
  println (mouseX);
  println ("Y:");
  println (mouseY);

  image(Fotito, 0, 0, 400, 400);

  dibujarObra( 20 );
}
//cambia a colores random
void mousePressed() {
  coloresR();
}
//reinicia la obra
void keyPressed () {
  if (key == 'r' || key == 'R');
  {
    reiniciarObra();
  }
}
