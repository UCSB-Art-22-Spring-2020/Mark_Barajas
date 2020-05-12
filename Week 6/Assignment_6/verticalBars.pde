void verticalBars() {
  // loop through all frequencies in the fft and draw lines for each "Band" 
  for (int i = 0; i < fft.specSize(); i++) {
    if (fft.getBand(i)*5 > 10) {
      stroke(map(height-fft.getBand(i), 0, fft.specSize(), 255, 0), 170, 170);                 // color will be dependent on height
      strokeWeight(5);                                                                         // line thickness is 5 pixels
      line(0, height-fft.getBand(i)*multiplier, width, height-fft.getBand(i)*multiplier);      // line will be drawn
    }
  }
}
