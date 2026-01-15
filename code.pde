void setup() {
  size(800, 800);
  noStroke();
  noLoop();
}

void draw() {
  int sqSize = 600;
  translate(width/2, height/2);
  drawSquare(20, sqSize);
}
void drawSquare(int num, float initSize) {
  System.out.println(initSize);
  if (num % 2 == 0) {
    fill(255);
  } else {
    fill(0);
  }
  square((0 - initSize/2), (0 - initSize/2), initSize);
  rotate(PI/4);
  if(num > 1) {
    num--;
    float nextSize = sqrt((float)2 * (float) (Math.pow(initSize/2,2)));
    drawSquare(num, nextSize);
  }
}
