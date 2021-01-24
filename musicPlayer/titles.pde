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
    text("Groove", width*1/4, height*0, width*1/2, height*1/10);
    Title_song_2 = false;
    Title_song_3 = false;
  }

  if (Title_song_2 == true && Title_song_1 == false && Title_song_3 == false) {
    fill(white);
    textFont(lablefont, 25);
    textAlign (CENTER, CENTER);
    text("Jingles", width*1/4, height*0, width*1/2, height*1/10);
    Title_song_1 = false;
    Title_song_3 = false;
  }

  if (Title_song_3 == true&& Title_song_2 == false && Title_song_1 == false) {
    fill(white);
    textFont(lablefont, 25);
    textAlign (CENTER, CENTER);
    text("Marcus", width*1/4, height*0, width*1/2, height*1/10);
    Title_song_1 = false;
    Title_song_2 = false;
  }
}
