//My cupcake!!

class Cupcake {
  float x;
  float y;
  float size;

  Cupcake(float tempX, float tempY, float tempSize) {
    x = tempX;
    y = tempY;
    size = tempSize;
  }

  void move(){
    x+=2;
    
    if (x > width+size){
      x = -size;
    }
  }
  
  void hover(){
    x+=random(-1, 1);
    y+=random(-1, 1);
    
  }
   
  void display() {
    noStroke();
    
    //bottom part
    fill(255, 167, 245);
    rect(x-53, y+20, size/1.4, size/2);
    
    //triangle parts
    fill(255, 167, 245);
    triangle(x+54, y+95, x+64, y+7, x+27, y+95);
    fill(255, 167, 245);
    triangle(x+-53, y+94, x+-64, y+19, x+27, y+95);
    
    //stripes on bottom part
    fill(246, 95, 230);
    rect(x-40, y+95, size-157, size-224);
    rect(x-13, y+95, size-157, size-224);
    rect(x+20, y+95, size-157, size-224);
    rect(x+48, y+95, size-157, size-224);
    
    //bread
    fill(175, 108, 44);
    ellipse(x-1, y+3, size, size/1.5);
    
    //chocolate chips
    fill(79, 21, 21);
    ellipse(x-44, y-7, size-167, size-166);
    ellipse(x+45, y+6, size-167, size-166);
    ellipse(x-35, y+21, size-163, size-163);
    ellipse(x+5, y+28, size-165, size-163);
    ellipse(x+42, y-20, size-167, size-166);
    
    //cream
    fill(253, 250, 250);
    ellipse(x-2, y-29, size-234, size-213);
    
    //cherry
    fill(228, 4, 4);
    ellipse(x-2, y-44, size-103, size-106);
    
    //highlight on cherry
    fill(255);
    ellipse(x-8, y-54, size-139, size-138);

    }
  }