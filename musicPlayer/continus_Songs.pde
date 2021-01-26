void Contd_songs() {
  if ( song[currentSong].position() == song[currentSong].length() ) {
    CurrentSongCheck = true;
  }
  if (CurrentSongCheck == true) {
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
}
