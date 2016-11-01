//Soowan Shin
//CG-314: Programming Concepts 
//10/26/2016


int xPos, yPos;
int xDir, yDir;
int padX, padWidth; //paddle
int [][]bricks = new int [6][10]; //list allows to assign multiple numbers
boolean dead, play;
PFont liberator;
PImage Image;

void setup() {
  size (500, 450);
  liberator = createFont("liberator.otf", 60);
  textFont(liberator);
  Image = loadImage ("kuma.png");
  GameReset(); //defualt value of the game
}

void draw() {
  int i, j;
  background(255, 214, 8);
  fill (13, 113, 250);
  strokeWeight(5);
  stroke(0);
  
  //nested loop
  for (i=0; i<6; i++) { // making bricks
    for (j=0; j<10; j++) { // making bricks
      if (bricks[i][j] == 1)
      rect (j*50, i*20, 50, 20); // bricks' size
    }
  }
  if (dead) {
    
    //image
    image(Image, 39, 154);
    
    //text
    fill(random(255), random(255), random(255), random(255));
    textSize(30);
    text ("Click to play again!!", 120, height/1.7);
    
    if (mousePressed == true) GameReset();
  }
  if (play) {
    //ball
    fill(random(255), random(255), random(255), random(255));
    ellipse(xPos, yPos, 20, 20);

    xPos += xDir; // ball's movement 
    yPos += yDir; // ball's movement
    padX = mouseX; // moving paddle
    if (padX > 300) padX = 300;
    strokeWeight(7);
    line (padX, height-65, padX+padWidth, height-65); // paddle
    if (xPos<10 || xPos>width-10) xDir *= -1; // when ball hits right and left walls, direction is changed
    if (yPos<120) {
      //when ball hits the bricks, ball changes the dircetion
      if (bricks[yPos/20][xPos/50] == 1) {
        yDir *= -1;
        bricks[yPos/20][xPos/50]=0;
      } else if (yPos<0) yDir *= -1;
    }
  }
  if (yPos>height-75 && xPos>=padX && xPos<=padX+padWidth) yDir *= -1; // when ball hits up, bottom walls and paddle, direction is changed
  if (yPos>height-10) {
    dead=true;
    play=false;
  }
}

void GameReset() {
  int i, j;

  xPos = width/2;
  yPos = height/2;

  xDir = 3;
  yDir = 4;

  padX = width;
  padWidth = 200;

  dead = false;
  play = true;

  for (i=0; i<6; i++) {
    for (j=0; j<10; j++) {
      bricks[i][j] = 1;
    }
  }
}