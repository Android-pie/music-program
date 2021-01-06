import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song1;
void setup() {
  size(500, 400);
  minim = new Minim(this);
  song1 = minim.loadFile("../music/groove.mp3");
  song1.play();
}

void draw() {
}
