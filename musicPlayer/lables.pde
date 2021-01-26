void Lables() {
  fill(Red); 
  textAlign (CENTER, CENTER);
  textFont(lablefont, 25);
  text("X", QuitX, QuitY, QuitWidth, QuitHeight);
  text("Next", NextButtonX, NextButtonY, NextButtonWidth, NextButtonHeight);
  text("Play/Pause", PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight);
  text("Back", BackButtonX, BackButtonY, BackButtonWidth, BackButtonHeight);
  textFont(lablefont, 15);
  text("For.1Sec", F1SecsButtonX, F1SecsButtonY, F1SecsButtonWidth, F1SecsButtonHeight);
  text("Rev.1Sec", R1SecsButtonX, R1SecsButtonY, R1SecsButtonWidth, R1SecsButtonHeight);
  text("Loop", LoopButtonX, LoopButtonY, LoopButtonWidth, LoopButtonHeight);
  //text();
}
