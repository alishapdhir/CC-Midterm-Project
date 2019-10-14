class Droplet {
  
  float dropX;
  float dropPosY;
  float dropY;
  
  Droplet () {
    dropX = random(0, width); //choose random width within ralph
    dropY = random(10, 50); //random drop height
  }

  void drawDrop() {
    dropPosY ++;
    pushMatrix();
    strokeWeight(4);
    stroke(94, 110, 245);
    translate(dropX,dropPosY);
    line(0, 0, 0, dropY);
    line(0, 0, 0, dropY);
    popMatrix();
  }
}
