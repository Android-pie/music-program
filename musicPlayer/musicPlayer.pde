import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song1;

int loopIntNum;
void setup() {
  size(500, 400);
  minim = new Minim(this);
  song1 = minim.loadFile("../music/groove.mp3");
  song1.play();
  loopIntNum = 1;
}

void draw() {
}

void keyPressed() {
  if (key == 'p' || key == 'P') {
    if (song1.isPlaying()) {
      song1.pause();
    } else if ( song1.position() == song1.lenght() ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  

  if (key == 's' || key == 'S') {
    if (song1.isPlaying()) {
      song1.pause();
      song1.rewind();
    } else if ( song1.position() == song1.lenght() ) {
      song1.rewind();
    }
  }
  
  if (key == 'R' || key == 'r') song1.skip(-1000);
  if (key == 'F' || key == 'f') song1.skip(1000);
 
  if (key == 'l' || key == 'L') song1.loop(loopIntNum);
  
}
