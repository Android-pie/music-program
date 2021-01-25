void mute() {
  if ( key=='m' || key=='M' ) {//Muted Button
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
  }
}
