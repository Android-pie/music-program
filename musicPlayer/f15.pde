void f15() {
  if ( key == 'f' || key == 'F' || mouseX>F1SecsButtonX && mouseX<F1SecsButtonX + F1SecsButtonWidth && mouseY>F1SecsButtonY && mouseY<F1SecsButtonY + F1SecsButtonHeight) {
    song[currentSong].skip(1000);
  }
}
