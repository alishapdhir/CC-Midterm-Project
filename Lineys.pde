class Lineys {

  float rectY;
  float rectX = 50;

  Lineys() {
  }
  
  void reset() {
    rectY = 0;
  }
  
  void lineyLoop() {
    this.playSound();
    this.drawLines();
  }
  
  void playSound() {
    soundfile1.play();
    soundfile1.amp(.15);
  }

  void drawLines() {
      pushMatrix();
      translate(280, 380);
      rotate(PI/4);
      noStroke();
      fill(255, 0, 255);
      rect(0, 20, rectX, rectY);
      rectY ++;
      popMatrix();
      
      pushMatrix();
      translate(480, 420);
      rotate(0-PI/4);
      noStroke();
      fill(0, 255, 255);
      rect(0, 20, rectX, rectY);
      rectY ++;
      popMatrix();
      
      pushMatrix();
      translate(520, 210);
      rotate(0-(PI*3)/4);
      noStroke();
      fill(255, 255, 0);
      rect(0, 20, rectX, rectY);
      rectY ++;
      popMatrix();
      
      pushMatrix();
      translate(300, 190);
      rotate(0-PI*5/4);
      noStroke();
      fill(0, 255, 255);
      rect(0, 20, rectX, rectY);
      rectY ++;
      popMatrix();
   } 
} 
