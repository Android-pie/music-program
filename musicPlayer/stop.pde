void Stop() {
  if (key == 't' || key == 'T') {

    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = numberOfSongs - numberOfSongs;
      song[currentSong].pause();
    } else {
      song[currentSong].rewind();
      currentSong = numberOfSongs - numberOfSongs;
      song[currentSong].pause();
    }
  }
}
