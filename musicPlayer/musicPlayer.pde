import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
int numOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numOfSongs];
int loopIntNum;
int currentSong = numOfSongs - numOfSongs;
void setup() {
  size(500, 400);
  minim = new Minim(this);
  song[currentSong] = minim.loadFile("../music/groove.mp3");
  song[currentSong += 1] = minim.loadFile("../music/groove1.mp3");
  song[currentSong += 1] = minim.loadFile("../music/groove2.mp3");
  //
  songMetaData[0] = song[0].getMetaData();
  songMetaData[1] = song[1].getMetaData();
  songMetaData[2] = song[2].getMetaData();
  //
  println("Start of console");
  println("Click the console to finish Starting this program");
  println("Press keyboard to test: P, etc");
  //
  for(int i=currentSong; i<numOfSongs;) {
  println("File name:", songMetaData[i].fileName());
  println("Song lenght (in milliseconds); ", songMetaData[i].length() );
  println("Song Lenght (in second): ", songMetaData[i].length()/1000);
  println("Song Lenght (in minutes and seconds): ", songMetaData1.length()/1000/60, "minutes", (.length()/1000)-(.length()/1000/60 *60),"seconds" );
  println("Author", songMetaData[i].author() );
  println("Composer", songMetaData[i].composer() );
  println("Orchestra", songMetaData[i].orchestra() );
  println("Album", songMetaData[i].album() );
  println("Disk", songMetaData[i].disc() );
  println("Publisher", songMetaData[i].publisher() );
  println("Date Release", songMetaData[i].date() );
  println("Copyright", songMetaData[i].copyright() );
  println("comments", songMetaData[i].comment() );
  println("Lyrics", songMetaData[i].lyrics() );
  println("Track", songMetaData[i].track() );
  println("Genre", songMetaData[i].genre() );
  println("Encoded", songMetaData[i].encoded() );
  }
  //
}

void draw() {
}

void keyPressed() {
  if (key == 'p' || key == 'P') {
    if (song1.isPlaying()) {
      song1.pause();
    } else if ( song1.position() == song1.length() ) {
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
    } else if ( song1.position() == song1.length() ) {
      song1.rewind();
    }
  }
  
  if (key == 'R' || key == 'r') song1.skip(-1000);
  if (key == 'F' || key == 'f') song1.skip(1000);
 
  if (key == 'l' || key == 'L') song1.loop(loopIntNum);
  //
  //next button
  //
  if (key == 'n' || key == 'N'){
    if (song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong++;
    }else{
      song[currentSong].rewind();
     currentSong ++;
    }
   
  }
  
  if (key == 'b' || key == 'B'){
    currentSong --;
  }


}
