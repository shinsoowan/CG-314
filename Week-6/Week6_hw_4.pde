float x, y;
float headSize = 200.0;
float g = 255;

//Robot variables
float whiteeyeSize = 3.0/20 * headSize;
float blackeyeSize = 1.0/10 * headSize;
float widthmouthSize = 49.0/200 * headSize;
float heightmouthSize = 21.0/200 * headSize;
float heightteethSize = 5.0/200 * headSize;
float noseSize = 1.0/20 * headSize;
float widthneckSize = 29.0/200 * headSize;
float heightneckSize = 3.0/25 * headSize; 
float widtharmSize = 31.0/100 * headSize;
float handSize = 1.0/4 * headSize;
float circleconnectionSize = 1.0/5 * headSize;
float widthbodySize = 3.0/4 * headSize;
float heightbodySize = 3.0/5 * headSize;
float widthtopbodySize = 110.0/200 * headSize;
float heighttopbodySize = 80.0/200 * headSize;
float widthlegSize = 34.0/200 * headSize;
float heightlegSize = 61.0/200 * headSize;
float widthfootSize = 66.0/200 * headSize;
float heightfootSize = 26.0/200 * headSize;
float wheelSize = 3.0/40 * headSize;

void setup () {
  background(255, 170, 0);
  noStroke();
  size(800, 600);
  x = width/2;
  y = height/2;
}

void draw () {
  drawFace(x, y, headSize, g);
  drawFace(width/4, height/5, headSize, 255);
  drawFace(width/10, height/7, headSize, 255);
  drawFace(width/100, height/100, headSize, 255);
  drawFace(width/1, height/5, headSize, 255);
  drawFace(width/1.3, height/2.5, headSize, 255);
}

void drawFace(float tempX, float tempY, float tempSize, float green){

  //head
  fill(168, 96, 168);
  rect(tempX - 27.0/100 * tempSize, tempY - 147.0/200 * tempSize, 117.0/200 * tempSize, 1.0/2 * tempSize);

  //white eyes
  fill(green);
  ellipse(tempX - 1.0/8 * tempSize, tempY - 111.0/200 * tempSize, whiteeyeSize, whiteeyeSize);
  ellipse(tempX + 33.0/200 * tempSize, tempY - 111.0/200 * tempSize, whiteeyeSize, whiteeyeSize);

  //black eyes
  fill(0, 0, 0);
  ellipse(tempX - 1.0/8 * tempSize, tempY - 111.0/200 * tempSize, blackeyeSize, blackeyeSize);
  ellipse(tempX + 33.0/200 * tempSize, tempY - 111.0/200 * tempSize, blackeyeSize, blackeyeSize);

  //nose
  fill(0, 0, 0);
  ellipse(tempX + 1.0/40 * tempSize, tempY - 47.0/100 * tempSize, noseSize, noseSize);

  //mouth
  fill(158, 31, 3);
  rect(tempX - 1.0/10 * tempSize, tempY - 2.0/5 * tempSize, widthmouthSize, heightmouthSize);

  //teeth
  fill(255, 255, 255);
  rect(tempX - 1.0/10 * tempSize, tempY - 2.0/5 * tempSize, widthmouthSize, heightteethSize);
  rect(tempX - 1.0/10 * tempSize, tempY - 64.0/200 * tempSize, widthmouthSize, heightteethSize);

  //neck
  fill(112, 30, 112);
  rect(tempX - 9.0/200 * tempSize, tempY - 47.0/200 * tempSize, widthneckSize, heightneckSize);

  //arms
  fill(168, 96, 168);
  rect(tempX - 142.0/200 * tempSize, tempY - 9.0/200 * tempSize, widtharmSize, whiteeyeSize);
  rect(tempX + 92.0/200 * tempSize, tempY - 9.0/200 * tempSize, widtharmSize, whiteeyeSize);

  //hands
  fill(112, 112, 112);
  ellipse(tempX - 146.0/200 * tempSize, tempY + 6.0/200 * tempSize, handSize, handSize);
  ellipse(tempX + 159.0/200 * tempSize, tempY + 6.0/200 * tempSize, handSize, handSize);

  //highlight
  fill(255, 255, 255);
  ellipse(tempX - 142.0/200 * tempSize, tempY - 2.0/200 * tempSize, noseSize, noseSize);
  ellipse(tempX + 153.0/200 * tempSize, tempY - 2.0/200 * tempSize, noseSize, noseSize);

  //circle connections
  fill(112, 30, 112);
  ellipse(tempX - 68.0/200 * tempSize, tempY + 6.0/200 * tempSize, circleconnectionSize, circleconnectionSize);
  ellipse(tempX + 81.0/200 * tempSize, tempY + 6.0/200 * tempSize, circleconnectionSize, circleconnectionSize);

  //body
  fill(168, 96, 168);
  rect(tempX - 68.0/200 * tempSize, tempY - 23.0/200 * tempSize, widthbodySize, heightbodySize);

  //top of body
  fill(0, 0, 0);
  rect(tempX - 48.0/200 * tempSize, tempY - 4.0/200 * tempSize, widthtopbodySize, heighttopbodySize);

  //Soowan
  fill(255, 255, 255);
  textSize(25.0/200 * tempSize);
  text("Soowan", tempX - 40.0/200 * tempSize, tempY + 45.0/200 * tempSize);

  //legs
  fill(112, 30, 112);
  rect(tempX - 47.0/200 * tempSize, tempY + 97.0/200 * tempSize, widthlegSize, heightlegSize);
  rect(tempX + 29.0/200 * tempSize, tempY + 97.0/200 * tempSize, widthlegSize, heightlegSize);

  //foot
  fill(168, 96, 168);
  rect(tempX - 74.0/200 * tempSize, tempY + 158.0/200 * tempSize, widthfootSize, heightfootSize);
  rect(tempX + 24.0/200 * tempSize, tempY + 158.0/200 * tempSize, widthfootSize, heightfootSize);

  //wheels
  fill(0, 0, 0);
  ellipse(tempX - 64.0/200 * tempSize, tempY + 191.0/200 * tempSize, wheelSize, wheelSize);
  ellipse(tempX - 41.0/200 * tempSize, tempY + 191.0/200 * tempSize, wheelSize, wheelSize);
  ellipse(tempX - 18.0/200 * tempSize, tempY + 191.0/200 * tempSize, wheelSize, wheelSize);
  ellipse(tempX + 34.0/200 * tempSize, tempY + 191.0/200 * tempSize, wheelSize, wheelSize);
  ellipse(tempX + 58.0/200 * tempSize, tempY + 191.0/200 * tempSize, wheelSize, wheelSize);
  ellipse(tempX + 81.0/200 * tempSize, tempY + 191.0/200 * tempSize, wheelSize, wheelSize);

  }