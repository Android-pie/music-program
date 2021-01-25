void vol() {
if ( key=='v' || key=='V' ) { //Will amplify the volume, not control it
    ampvol = ampvol+song[currentSong].getGain();
    song[currentSong].setGain(ampvol);
}
}
