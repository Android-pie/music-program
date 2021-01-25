void Cont_songs() {
  if ( song[currentSong].position() == song[currentSong].length() ) {
   CurrentSongCheck = true;
   println(CurrentSongCheck);
  }
}
