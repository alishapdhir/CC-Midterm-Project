class Light {
  Light() {
  }

 void drawLight () {
  noStroke();
  fill(random(50, 255), random(50, 255),random(50, 255), 100);
  beginShape();
  vertex(300, -100);
  vertex(500, -100);
  vertex(700, 600);
  vertex(100, 600);
  endShape(CLOSE);  
  }
  
  void playSound () {
    soundfile4.play();
  }
}
