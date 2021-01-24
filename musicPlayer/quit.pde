void quit() {
  if (  key == 'q'|| mouseX>QuitX && mouseX<QuitX + QuitWidth && mouseY>QuitY && mouseY<QuitY+QuitHeight ) {
    exit();
  }
}
