void pause() {

  if (key == 'p' || key == 'P' || mouseX>PlayButtonX && mouseX<PlayButtonX + PlayButtonWidth && mouseY>PlayButtonY && mouseY<PlayButtonY + PlayButtonHeight) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  soundEffect[currentSound].play();
}
  
}
