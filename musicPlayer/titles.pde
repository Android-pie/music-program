void titles () {
  if (currentSong + 1 ==  1 ) {
    Title_song_1 = true;
    Title_song_2 = false;
    Title_song_3 = false;
  }
  if (currentSong + 1 ==  2 ) {
    Title_song_2 = true;
    Title_song_1 = false;
    Title_song_3 = false;
  }
  if (currentSong + 1 ==  3 ) {
    Title_song_3 = true;
    Title_song_1 = false;
    Title_song_2 = false;
  }

  if (Title_song_1 == true && Title_song_2 == false && Title_song_3 == false) {
    fill(white);
    textFont(lablefont, 25);
    textAlign (CENTER, CENTER);
    text("Groove", tittleRectX, tittleRectY, tittleRectWidth, tittleRectHeight);
    Title_song_2 = false;
    Title_song_3 = false;
  }

  if (Title_song_2 == true && Title_song_1 == false && Title_song_3 == false) {
    fill(white);
    textFont(lablefont, 25);
    textAlign (CENTER, CENTER);
    text("Jingles", tittleRectX, tittleRectY, tittleRectWidth, tittleRectHeight);
    Title_song_1 = false;
    Title_song_3 = false;
  }

  if (Title_song_3 == true&& Title_song_2 == false && Title_song_1 == false) {
    fill(white);
    textFont(lablefont, 25);
    textAlign (CENTER, CENTER);
    text("Marcus", tittleRectX, tittleRectY, tittleRectWidth, tittleRectHeight);
    Title_song_1 = false;
    Title_song_2 = false;
  }
}
