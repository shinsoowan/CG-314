//Soowan Shin
//Group assignment

Cupcake cakey;

void setup () {
  size (800, 600);
  cakey = new Cupcake (width/2, height/2, 150);
}

void draw () {
  background(25, 87, 64);

  if (keyPressed) {
    cakey.move();
  }
    cakey.display();
  }