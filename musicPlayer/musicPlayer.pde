import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;

int numberOfSongs = 3;
int NumOfSounds = 1;
int currentSound = NumOfSounds - NumOfSounds; 
float QuitX, QuitY, QuitWidth, QuitHeight;
float NextButtonX, NextButtonY, NextButtonWidth, NextButtonHeight;
float BackButtonX, BackButtonY, BackButtonWidth, BackButtonHeight;
float PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight;
float LoopButtonX, LoopButtonY, LoopButtonWidth, LoopButtonHeight;
float F1SecsButtonX, F1SecsButtonY, F1SecsButtonWidth, F1SecsButtonHeight;
float R1SecsButtonX, R1SecsButtonY, R1SecsButtonWidth, R1SecsButtonHeight;
float tittleRectX, tittleRectY, tittleRectWidth, tittleRectHeight;
float ImageButtonX, ImageButtonY, ImageButtonWidth, ImageButtonHeight; 
float StopButtonX, StopButtonY, StopButtonWidth, StopButtonHeight; 
float VolUpX, VolUpY, VolUpWidth, VolUpHeight;
float VolDownX, VolDownY, VolDownWidth, VolDownHeight;
float ampvol;
float ShufflebuttonX, ShufflebuttonY, ShufflebuttonWidth, ShufflebuttonHeight; 
float MutebuttonX, MutebuttonY, MutebuttonWidth, MutebuttonHeight;
float random1, random2, random3;
Boolean Title_song_1 = false;
Boolean Title_song_2 = false;
Boolean Title_song_3 = false;
Boolean CurrentSongCheck = false;
Boolean LOOP = false;
AudioPlayer[] song= new AudioPlayer[numberOfSongs]; 
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs]; 
AudioPlayer[] soundEffect = new AudioPlayer[NumOfSounds];
int currentSong = numberOfSongs - numberOfSongs; 
PFont lablefont;
color black = #000000;
color white = #FFFFFF, Red = #FA0808; 
PImage img1;
PImage img2;
PImage img3;

///////////////////////////////////////////////////////////////////////////////////////////

void setup() {
  size(500, 400); //fullScreen();
  minim = new Minim(this); 
  var();
  songs();
  song[currentSong].play();
  lablefont = createFont ("Harrington", 55); 
  fill(white);
   rect(ImageButtonX, ImageButtonY, ImageButtonWidth, ImageButtonHeight);
  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
  background (black);
  
}


void draw() {
 
  fill(black);
  rect(width*1/4, height*0, width*1/2, height*1/10);
  titles();
  buttons();
  fill(255);
  Lables();
  Contd_songs();
}

void keyPressed() {

  pause();
  back_Song();
  next_Song();
  quit();
  f15();
  r15();
  mute();
  vol();
  Loop();
  Contd_songs();
  Shuffle();
  Stop();
}

void mousePressed() {

  quit();
  next_Song();
  pause();
  back_Song();
  f15();
  r15();
  mute();
  vol();
  Loop();
  Contd_songs();
  Shuffle();
  Stop();
}
