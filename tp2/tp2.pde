//variable global de texto
String estado;
String texto, texto1, texto2, texto3, texto4, texto5; 
//variable de imagen
PImage Nenes, Juego, Abuelos, Torre, Papa; 
PFont fuente; //variable de fuente tipografica
 //variable de num flotantes
int ancho;
int alto;
int esquinaX1;
int esquinaY1;
int MiVariable;

void setup(){
  size( 640, 480 );
 //asignacion de valores a las variables
  estado = "diapositiva1";
  texto = "JENGA";
  texto1 = "El juego consiste en quitar las piezas de \n madera, e ir colocándolas en la parte superior \n de la torre, consiguiendo que esta \n se mantenga en pie";
  texto2= "Si un jugador saca una pieza \n y la torre se derrumba";
  texto3= "¡¡pierde la partida!!";
  texto4= "El ganador es la última persona en eliminar \n y colocar un bloque en la torre con éxito";
  texto5= "Es un juego muy divertido \n y apto para toda la familia";
  Nenes = loadImage ("nenesJugando.jpg");
  Juego = loadImage ("jenga.jpg");
  Abuelos = loadImage ("abuelosJugando.jpg");
  Torre = loadImage ("torreAbajo.jpg");
  Papa = loadImage ("papaJugando.jpg");
  fuente = loadFont("Carlito-BoldItalic-22.vlw");
  ancho = 350;
  alto = 500;
  esquinaX1 = 450;
  esquinaY1= 445;
  MiVariable = 1;
}

void draw(){
  background(255, 0, 0);
  MiVariable = frameCount;

if( estado == "diapositiva1"){
  // estado #1
  image(Juego, 0, 0);
  fill(255, 255, 0);
  textFont (fuente);
  textSize(50);
  text(texto, MiVariable, 200);
  fill(0);
  text(texto, 500-MiVariable, 300);
  
  if ( frameCount/60 >= 10 )
  estado = "diapositiva2";
}
 
  println (frameCount/50);
  MiVariable = frameCount /4;
  
  if( estado == "diapositiva2") { 
    // estado #2
     image(Nenes, 0, 0);
     textSize( 30 );
     textAlign(CENTER, CENTER);
     fill(255, 255, 0);
     text(texto1, 330, MiVariable);
     
   if ( frameCount/60 >= 27 )
   estado = "diapositiva3";
}
  if( estado == "diapositiva3") { 
    // estado #3
     image(Torre, 0, 0);
     textSize( 30 );
     textAlign(CENTER, CENTER);
     fill(255, 255, 0);
     text( texto2, MiVariable, 100);
     fill(0);
     text( texto3, MiVariable, 220);
  }     
  if ( frameCount/60 >= 37 ) 
   estado = "diapositiva4";
   
     if( estado == "diapositiva4") { 
    // estado #4
     image(Papa, 0 , 0);
     fill(255, 255, 0);
     text( texto4, 330, 1000-MiVariable);
}
   
   if ( frameCount/60 >= 47 ) 
   estado = "diapositiva5";

   if( estado == "diapositiva5" ){
     // estado #5
    image(Abuelos, 0, 0);
    fill(255, 255, 0);
    text( texto5, 1000-MiVariable, 220 );
    // boton de reinicio
  fill (255, 255, 0);
  rect (esquinaX1, esquinaY1, ancho, alto);
  fill(0);
  text("Reiniciar", 548, 460);
 mousePressed(); {
  if (mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
    println("se presiono el boton");
    estado = "diapositiva1";
    frameCount = 0;
   }
  }
 }
}
  
  
  
  
