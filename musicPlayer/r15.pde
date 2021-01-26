void r15() {
  if ( key == 'r' || key == 'R' || mouseX>R1SecsButtonX && mouseX<R1SecsButtonX + R1SecsButtonWidth && mouseY>R1SecsButtonY && mouseY<R1SecsButtonY + R1SecsButtonHeight) {
    song[currentSong].skip(-1000);
  }
}
