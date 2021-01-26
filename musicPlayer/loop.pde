void Loop() {
  if ( key == 'l' || key == 'L'|| mouseX>LoopButtonX && mouseX<LoopButtonX + LoopButtonWidth && mouseY>LoopButtonY && mouseY<LoopButtonY + LoopButtonHeight) song[currentSong].loop();
}
