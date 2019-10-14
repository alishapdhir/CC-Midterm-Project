class Face {
  
  //constructor
  Face () {
    translate(-399.23, -284.21);
    this.drawHead();
    this.drawEyes();
    this.drawNose();
    this.drawMouth();
  }
  void drawHead() {
    fill(255, 247, 225);
    strokeWeight(5);
    stroke(255, 242, 0);
    beginShape();
    vertex(337.88, 139.87);
    vertex(460.59, 139.87);
    vertex(547.37, 226.65);
    vertex(547.37, 349.37);
    vertex(460.59, 436.15);
    vertex(337.88, 436.15);
    vertex(251.1, 349.37);
    vertex(251.1, 226.65);
    endShape(CLOSE);
  }
  void drawEyes() {
    stroke(0);
    strokeWeight(20);
    point(335.94, 265.24);
    point(460.66, 265.24);
  }
  void drawNose() {
    fill(218, 80, 55);
    noStroke();
    beginShape();
    vertex(399.23, 284.21);
    vertex(380.55, 326.1);
    vertex(417.92, 326.1);
    endShape(CLOSE);
  }
  void drawMouth(){
    noFill();
    stroke(0);
    strokeWeight(5);
    arc(399.23, 378.99, 60, 20, 0, 0+PI, OPEN);
  }
}
