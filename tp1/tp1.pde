PImage Paisaje;

void setup(){
 size (800, 400);
 background (114, 169, 234); 

  Paisaje = loadImage ("piramides.jpg");

}

void draw(){
 image ( Paisaje, 0, 0);
 
 println ("X:");
 println (mouseX);
 println ("Y:");
 println (mouseY);
  
  fill (255, 169, 8);
  rect (400, 313, 800, 100);
  
  //cielo
  stroke (255, 255, 255);
  line(644, 111, 800, 95);
  line(655, 131, 800, 120);
  line(515, 147, 800, 144);
  line(400, 138, 466, 145);
  line(500, 160, 600, 170);
  line(400, 156, 475, 160);
  line (400, 166, 451, 180);
  line (400, 183, 800, 160);
  line (400, 202, 800, 177);
 
  
  //triangulo1
  stroke (0, 0 ,0);
  fill(216, 136, 7);
  triangle (400, 313, 500, 227, 440, 350);
  fill(250, 209, 43);
  triangle (440, 350, 500, 227, 580, 350);
  
  //triangulo3
  fill(250, 209, 43);
  triangle (690, 350, 750, 230, 850, 350);
  fill(216, 136, 7);
  triangle (718, 294, 750, 230, 700, 280);
  
  //triangulo2
  fill(250, 209, 43);
  triangle (535, 350, 600, 170, 770, 350);
  fill(216, 136, 7);
  triangle (530, 270, 600, 170, 551, 305);
  
  fill (255, 169, 8);
  triangle (585, 212, 600, 170, 646, 218);
  triangle (566, 217, 600, 170, 585, 212);
  
 //triangulo chiquito 1
 fill(250, 209, 43);
 triangle (450, 370, 475, 322, 510, 370 );
 fill(216, 136, 7);
 triangle (435, 360, 475, 322, 450, 370 );
 
 //triangulo chiquito2
 fill (250, 209, 43);
 triangle (530, 370, 551, 305, 600, 370);
 fill(216, 136, 7);
 triangle (511, 350, 551, 305, 530, 370 );
 
}
