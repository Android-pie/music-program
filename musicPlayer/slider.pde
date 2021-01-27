void Shuffle() {
  if (key == 'a'|| key == 'A'|| mouseX>ShufflebuttonX && mouseX<ShufflebuttonX + ShufflebuttonWidth && mouseY>ShufflebuttonY && mouseY<ShufflebuttonY+ShufflebuttonHeight) {
    song[currentSong].pause();
    song[currentSong].rewind();
    currentSong = int(random(0, numberOfSongs));
    song[currentSong].play();
    println(currentSong);
  }
}
