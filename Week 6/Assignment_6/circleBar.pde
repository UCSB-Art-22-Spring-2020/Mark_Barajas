void circleBar() {
  for (int i = 0; i < fft.specSize(); i++) {                          // for every frequency in the spectrum 
    stroke(map(i, 0, fft.specSize(), 0, 255), 170, 170);              // stroke of line will change depending on far the line is drawn from the left
    strokeWeight(5);                                                  // line will have a stroke of 5 pixels
    pushMatrix();                                                     // this matrix allows the lines to be drawn in a circle
    translate(width/2, height/2);                                     // translate the lines so that the center is the middle of the window
    c = map(i, 0, fft.specSize(), 0, 360);                            // rotation angle is calculated
    rotate(radians(c));                                               // lines are roatated around the center of the window
    line(0, -height/4, 0, -height/4-fft.getBand(i)*5);                // line will be drawn 
    popMatrix();                                                      // reset the transformation matrix 
  }
}
