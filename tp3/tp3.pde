//VIDEO: https://youtu.be/9OQ6JxkiaLM

PImage Fotito;
color colorcito, colorcito2;
int tamañoCircle;

void setup() {
  size( 800, 400 );


  Fotito = loadImage("F_42.png");
  image(Fotito, 0, 0, 400, 400);
  colorcito = color(255);
  colorcito2 = color(0);
  tamañoCircle = 17;
}

void draw() {
  background ( 255 );
  
  image(Fotito, 0, 0, 400, 400);
  
  grillas( 20 );
  
}
