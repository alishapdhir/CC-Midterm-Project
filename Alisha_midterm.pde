import processing.sound.*; //<>//

SoundFile soundfile1;
SoundFile soundfile2;
SoundFile soundfile3;
SoundFile soundfile4;

int fc = 0;
boolean playedSound = false;

Droplet[] d = new Droplet[0];
Lineys l = new Lineys();
Light p = new Light();

void setup(){
  size(800, 600);
  soundfile1 = new SoundFile(this, "chord1.wav");
  soundfile2 = new SoundFile(this, "water.wav");
  soundfile3 = new SoundFile(this, "3Note.wav");
  soundfile4 = new SoundFile(this, "coolKidSong.mp3");
}

void draw() {
 background(167, 220, 223);

  if (keyPressed && key == 'a') { //press a for lines
    l.lineyLoop(); //play sound and draw lines
  } else {
    l.reset(); //reset the lines when you let go
  }
  
   if (keyPressed && key == 's') { //press s for rain
    //add a new droplet to the array of droplets
    Droplet droplet = new Droplet();
    d = (Droplet[])append(d, droplet);
    soundfile2.play();
   }
   for (int i = 0; i < d.length; i++) {
    d[i].drawDrop(); //drawnewdrops
  }
  

  translate(width/2, height/2);//translate the face to the middle so it rotates around itself
  if (keyPressed && key == 'd') { //press d for spin
    int nowc = frameCount; 
    if (fc == 0 || nowc - fc > 30) { //basically makes a timer so the sound plays again after 30 frames have gone by
      soundfile3.play();
      soundfile3.amp(.15);
      fc = frameCount;
    }
    float rotationSpeed = 5;
    float angleInDegrees = (frameCount * rotationSpeed) % 360;
    float angle = radians(angleInDegrees);
    rotate(angle);  
  }
    Face f = new Face(); //rotatethefacearounditself

  if (keyPressed && key == 'f') { //press f for disco!
   p.drawLight();
   int nowc = frameCount;
    if (fc == 0 || nowc - fc > 200) { //timer so after 200 frames the sound can play again
      soundfile4.play();
      fc = frameCount;
    }
  }
}
