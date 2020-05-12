void circleBeat() {

  for (int i = 0; i < fft.specSize(); i++) {                       // for every frequency in the spectrum
    r = fft.getBand(i)*multiplier;                                // radius will change to value of frequency times 3
    stroke(map(r, 0, fft.specSize(), 0, 254), 200, 170);           // color of ring will change according to distance from center
    strokeWeight(7);                                               // stroke weigth will remain at 7
    noFill();                                                      // inside of cirlce will remain clear to be able to see the rings
    circle(width/2, height/2, r);                                  // the circles will be drawn from the center
  }
}
