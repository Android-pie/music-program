void vol() {
if ( key=='=' || key=='+' || mouseX>VolDownX && mouseX<VolUpX + VolUpWidth && mouseY>VolUpY && mouseY<VolUpY+ VolUpHeight) { 
    ampvol = ampvol+song[currentSong].getGain();
    song[currentSong].setGain(ampvol);
}

if ( key=='-' || key=='_' || mouseX>VolDownX && mouseX<VolDownX + VolDownWidth && mouseY>VolDownY && mouseY<VolDownY+ VolDownHeight) { 
    ampvol = song[currentSong].getGain() - 5.0;
    song[currentSong].setGain(ampvol);
}

}
