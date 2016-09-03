void setup(){
  size(480, 120);
  smooth();
}

void draw(){
  if (mousePressed){
    fill(255, 0, 0);
  } else {
    fill(54, 48, 250);
  }
  ellipse(mouseX, mouseY, 80, 80);
}