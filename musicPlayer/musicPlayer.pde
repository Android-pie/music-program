import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;

int numberOfSongs = 3;
float QuitX, QuitY, QuitWidth, QuitHeight;
float NextButtonX, NextButtonY, NextButtonWidth, NextButtonHeight;
float BackButtonX, BackButtonY, BackButtonWidth, BackButtonHeight;
float PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight;
Boolean Title_song_1 = false;
Boolean Title_song_2 = false;
Boolean Title_song_3 = false;
AudioPlayer[] song= new AudioPlayer[numberOfSongs]; //"Song One"
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs]; //"Song Meta One"
int currentSong = numberOfSongs - numberOfSongs; //Uses formula or FileIO Memory
PFont lablefont;
color black = #000000;
color white = #FFFFFF; 
void setup() {
  size(500, 400); //fullScreen();
  minim = new Minim(this); 
  var();
  songs();
  lablefont = createFont ("Harrington", 55); 
  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
}

void draw() {
  background (black);
  fill(black);
  rect(width*1/4, height*0, width*1/2, height*1/10);
  titles();
  buttons();
  fill(255);
}//End draw()

void keyPressed() {
  println ("Current Song before the next or back button, ", "Number: "+currentSong); //For Debugging
  println(Title_song_1);
  pause();
  back_Song();
  next_Song();
  quit();
}

void mousePressed() {
  quit();
  next_Song();
  pause();
  back_Song();
}
