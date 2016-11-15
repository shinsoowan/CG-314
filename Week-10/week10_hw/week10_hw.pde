int [] R;

void setup() {
  size(480, 120);
  Table stats = loadTable("Donaldson.csv", "header");
  R = new int [stats.getRowCount()-2];
  for (int i=0; i<stats.getRowCount()-2; i++) {
    R[i] = stats.getInt(i, 5);
  }
}

void draw() {
  background(3, 136, 213);
  stroke(252, 220, 1);
  noFill();
  
  beginShape();
    for (int i = 0; i < R.length; i++) {
    float x = map(i, 0, R.length-1, 20, 460);
    float y = map(R[i], 12, 115, 121, 32);
    stroke(69);
    line(x, 0, x, height);
    stroke(226, 246, 0);
    vertex(x, y);
  }
  endShape();
}