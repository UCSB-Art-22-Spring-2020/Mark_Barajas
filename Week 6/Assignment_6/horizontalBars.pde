void horizontalBars() {
  for (int i = 0; i < fft.specSize(); i++) {                           // for every frequency in the spectrum 
    stroke(map(i, 0, fft.specSize(), 0, 255), 170, 170);               // stroke of line will change depending on far the line is drawn from the left
    strokeWeight(5);                                                   // line will have a stroke of 5 pixels
    line(i, height, i, height-fft.getBand(i)*10);                      // line will be drawn
  }
}
