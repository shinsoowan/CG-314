//Press 1, 2, 3, 4, 5 to change color of video!!
//If you press other keys, it will return to normal color.


import processing.video.*;
Movie video;


void setup() {
  size(640, 360);
  
  fill(77, 0, 46);
  textSize(15);
  text("Press 4", 15, 408);
  
  video = new Movie(this, "Chibi_Jotaro.mov");
  video.loop();
}


void draw() {
  background(255);
  loadPixels();
  video.loadPixels();

  for (int x = 0; x<(width-1); x++) {
    for (int y=0; y<(height-1); y++) {
      int theIndex = x + y * width;
      float r = (red(video.pixels[theIndex]));
      float g = (green(video.pixels[theIndex]));
      float b = (blue(video.pixels[theIndex]));
      if (keyPressed) {
        if (key == '1')
          pixels[theIndex] = color(r*2, g, b);
      } else if (key == '2') {
        pixels[theIndex] = color(r, g*2, b);
      } else if (key == '3') {
        pixels[theIndex] = color(r, g, b*0);
      } else if (key == '4') {
        pixels[theIndex] = color(r*2, g*1, b*3);
      } else if (key == '5') {
        pixels[theIndex] = color(r/2, g*10, b*2);
      } else {
        pixels[theIndex] = color(r, g, b);
      }
    }
  }
  updatePixels();
  video.updatePixels();
}

void movieEvent(Movie video) {
  video.read();
}