void next_Song() {
  if (key == 'n' || key == 'N'|| mouseX>NextButtonX && mouseX<NextButtonX + NextButtonWidth && mouseY>NextButtonY && mouseY<NextButtonY+NextButtonHeight) {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); 
        currentSong = numberOfSongs - numberOfSongs;
        println ("Current Song is now the first song, ", "Number: " + currentSong);
      } else {
        currentSong += 1; 
        println ("Current Song after the next or back button, but not the last song", "\tNumber: "+currentSong);
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); 
        currentSong = numberOfSongs - numberOfSongs;
        println ("Current Song is now the first song or song, ", "Number: " + currentSong);
      } else {
        currentSong += 1;
        println ("Current Song after the next or back button, but not the last song, ", "Number: " + currentSong);
      }
    }
  }
}
