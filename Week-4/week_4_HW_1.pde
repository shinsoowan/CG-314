PImage Rilakkuma;
PFont liberator;

void setup() {
  size(800, 600);
  background(255);
  Rilakkuma = loadImage("Rilakkuma.png");
  liberator = createFont("liberator.otf", 60);
  textFont(liberator);

  // rect
  fill(255, 175, 13);
  rect(10, 10, 60, 60);
  fill(133, 73, 0);
  textSize(15);
  text("Press r", 16, 47);

  //ellipse
  fill(137, 220, 227);
  ellipse(40, 125, 65, 65);
  fill(0, 47, 97);
  textSize(15);
  text("Press e", 15, 131);

  //line 1
  strokeWeight(3);
  stroke(226, 106, 245);
  line(15, 200, 99, 200);
  fill(144, 0, 166);
  textSize(15);
  text("Press 1", 15, 228);

  //line 2
  strokeWeight(10);
  stroke(112, 183, 103);
  line(15, 250, 99, 250);
  fill(42, 125, 0);
  textSize(15);
  text("Press 2", 15, 280);

  //line 3
  strokeWeight(20);
  stroke(161, 199, 245);
  line(15, 311, 99, 311);
  fill(0, 60, 125);
  textSize(15);
  text("Press 3", 15, 346);

  //line 4
  strokeWeight(25);
  stroke(255, 88, 152);
  line(15, 374, 99, 374);
  fill(77, 0, 46);
  textSize(15);
  text("Press 4", 15, 408);

  //line 5
  strokeWeight(30);
  stroke(255, 232, 54);
  line(15, 440, 99, 440);
  fill(128, 102, 0);
  textSize(15);
  text("Press 5", 15, 480);

  //Rilakkuma
  fill(85, 59, 3);
  textSize(15);
  text("Press 6 to draw Rilakkuma", 15, 515);

  //Everything is AWESOME
  fill(224, 7, 134);
  textSize(15);
  text("Press 7 to text Everything is AWESOME", 15, 545);
  text("Color is changing~", 15, 560);

  //spacebar
  fill(0);
  textSize(15);
  text("Press Spacebar to delete", 15, 590);
}

void draw() {
  float tempColor = map(mouseX, 0, width, 0, 255);
  if (mousePressed) {
    if (key == 'r') {
      fill(255, 175, 13);
      strokeWeight(1);
      stroke(0);
      rect(mouseX, mouseY, 60, 60);
    } else if (key == 'e') {
      fill(137, 220, 227);
      strokeWeight(1);
      stroke(0);
      ellipse(mouseX, mouseY, 65, 65);
    } else if (key == '1') {
      strokeWeight(3);
      stroke(226, 106, 245);
      line(mouseX, mouseY, pmouseX, pmouseY);
    } else if (key == '2') {
      strokeWeight(10);
      stroke(112, 183, 103);
      line(mouseX, mouseY, pmouseX, pmouseY);
    } else if (key == '3') {
      strokeWeight(20);
      stroke(161, 199, 245);
      line(mouseX, mouseY, pmouseX, pmouseY);
    } else if (key == '4') {
      strokeWeight(25);
      stroke(255, 88, 152);
      line(mouseX, mouseY, pmouseX, pmouseY);
    } else if (key == '5') {
      strokeWeight(30);
      stroke(255, 232, 54);
      line(mouseX, mouseY, pmouseX, pmouseY);
    } else if (key == '6') {
      image (Rilakkuma, mouseX, mouseY);
    } else if (key == '7') {
      fill(tempColor, 0, 100);
      textSize(35);
      text("Everything is AWESOME", mouseX, mouseY);
    }
  }
  //spacebar
  if (keyPressed) {
    if (key == ' ') {
      print("Hello");
      background(255);
      strokeWeight(1);
      stroke(0);

      //when you press spacebar these menus will be reappeared

      // rect
      fill(255, 175, 13);
      rect(10, 10, 60, 60);
      fill(133, 73, 0);
      textSize(15);
      text("Press r", 16, 47);

      //ellipse
      fill(137, 220, 227);
      ellipse(40, 125, 65, 65);
      fill(0, 47, 97);
      textSize(15);
      text("Press e", 15, 131);

      //line 1
      strokeWeight(3);
      stroke(226, 106, 245);
      line(15, 200, 99, 200);
      fill(144, 0, 166);
      textSize(15);
      text("Press 1", 15, 228);

      //line 2
      strokeWeight(10);
      stroke(112, 183, 103);
      line(15, 250, 99, 250);
      fill(42, 125, 0);
      textSize(15);
      text("Press 2", 15, 280);

      //line 3
      strokeWeight(20);
      stroke(161, 199, 245);
      line(15, 311, 99, 311);
      fill(0, 60, 125);
      textSize(15);
      text("Press 3", 15, 346);

      //line 4
      strokeWeight(25);
      stroke(255, 88, 152);
      line(15, 374, 99, 374);
      fill(77, 0, 46);
      textSize(15);
      text("Press 4", 15, 408);

      //line 5
      strokeWeight(30);
      stroke(255, 232, 54);
      line(15, 440, 99, 440);
      fill(128, 102, 0);
      textSize(15);
      text("Press 5", 15, 480);

      //Rilakkuma
      fill(85, 59, 3);
      textSize(15);
      text("Press 6 to draw Rilakkuma", 15, 515);

      //Everything is AWESOME
      fill(224, 7, 134);
      textSize(15);
      text("Press 7 to text Everything is AWESOME", 15, 545);
      text("Color is changing~", 15, 560);

      //spacebar
      fill(0);
      textSize(15);
      text("Press Spacebar to delete", 15, 590);
    }
  }
}