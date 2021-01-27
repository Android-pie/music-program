void mute() {
  if ( key=='m' || key=='M' || mouseX>MutebuttonX && mouseX<MutebuttonX + MutebuttonWidth && mouseY>MutebuttonY && mouseY<MutebuttonY+MutebuttonHeight) {//Muted Button
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
  }
   soundEffect[currentSound].play();
}
