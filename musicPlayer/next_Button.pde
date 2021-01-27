void next_Song() {
  if (key == 'n' || key == 'N'|| mouseX>NextButtonX && mouseX<NextButtonX + NextButtonWidth && mouseY>NextButtonY && mouseY<NextButtonY+NextButtonHeight && mousePressed) {
    CurrentSongCheck =false;
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong += 1;
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong += 1;
      }
    }
  }
   soundEffect[currentSound].play();
}
