import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
int numbOfSongs = 3;
int numbOfSoundEffects = 1;
AudioPlayer[] song = new AudioPlayer[numbOfSongs];
int currentSong = numbOfSongs - numbOfSongs; //Zero starting index
int currentSoundEffect = numbOfSoundEffects - numbOfSoundEffects; //Zero starting index
AudioMetaData songMetaData1; //needs to be an array
int loopNum = 1; //Able to connect this variable to buttons, increasing the loop number

void setup() {
  size(500, 400);
  minim = new Minim(this);
  song[0] = minim.loadFile("../music/grove.mp3");
  song[1] = minim.loadFile("../music/Grove2.mp3");
  song[2] = minim.loadFile("../music/Grove3.mp3");
    songMetaData1 = song[currentSong].getMetaData();
  //
  //songMetaData[0] = song[0].getMetaData();
  //songMetaData[1] = song[1].getMetaData();
  //songMetaData[2] = song[2].getMetaData();
  //
  println("Start of console");
  println("Click the console to finish Starting this program");
  println("Press keyboard to test: P, etc");
  //
  for(int i=currentSong; i<numbOfSongs;) {
println("File name:", songMetaData1.fileName());
println("Song lenght (in milliseconds); ", songMetaData1.length() );
println("Song Lenght (in second): ", songMetaData1.length()/1000);
println("Song Lenght (in minutes and seconds): ", songMetaData1.length()/1000/60, "minutes", (song[currentSong].length()/1000)-(song[currentSong].length()/1000/60 *60),"seconds" );
println("Author", songMetaData1.author() );
println("Composer", songMetaData1.composer() );
  //println("Orchestra", songMetaData[i].orchestra() );
  //println("Album", songMetaData[i].album() );
  //println("Disk", songMetaData[i].disc() );
  //println("Publisher", songMetaData[i].publisher() );
  //println("Date Release", songMetaData[i].date() );
  //println("Copyright", songMetaData[i].copyright() );
  //println("comments", songMetaData[i].comment() );
  //println("Lyrics", songMetaData[i].lyrics() );
  //println("Track", songMetaData[i].track() );
  //println("Genre", songMetaData[i].genre() );
  //println("Encoded", songMetaData[i].encoded() );
  }
  //
}

void draw() {
}

void keyPressed() {
  if (key == 'p' || key == 'P') {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
  

  if (key == 's' || key == 'S') {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
    }
  }
  
  if (key == 'R' || key == 'r') song[currentSong].skip(-1000);
  if (key == 'F' || key == 'f') song[currentSong].skip(1000);
 
  if (key == 'l' || key == 'L') song[currentSong].loop(loopNum);
  //
  //next button
  //
  if (key == 'n' || key == 'N'){
    if (song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if (currentSong == numbOfSongs - 1){
        currentSong = numbOfSongs - numbOfSongs;
      }else{
      currentSong++;
      }
      song[currentSong].play();
    }else{
      
      song[currentSong].rewind();
     currentSong ++;
    }
   
  }
  
  if (key == 'b' || key == 'B'){
    currentSong --;
  }


}
