//Soowan Shin
//Group assignment (Soowan, Gabrielle, Amanda, Toni)

Cupcake cakey;
Frosty sundae;
MacRoon Roon;
PImage Macaroon;

void setup () {
  size (800, 600);
  cakey = new Cupcake (width/1.95, height/2, 150);
  sundae = new Frosty(width/10, height/3.5, 150);
  Roon = new MacRoon (width/1.5, height/3, 200);
  cakey = new Cupcake (width/1.95, height/2, 150);
  
  Macaroon= loadImage("Macaroon.png");
}

void draw () {
  
  background(45, 50, 112);

  if (keyPressed) {
    
    sundae.move();
    Roon.move();
    cakey.move();
    
    sundae.hover();
    cakey.hover();
  }
  sundae.display();
  Roon.display();
  cakey.display();
}