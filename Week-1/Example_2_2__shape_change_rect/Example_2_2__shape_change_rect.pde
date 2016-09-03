void setup(){
  size(480, 120);
  smooth();
}

void draw(){
  if (mousePressed){
    fill(71, 0, 188);
  } else {
    fill(199, 170, 247);
  }
  rect(mouseX, mouseY, 60, 90);
}