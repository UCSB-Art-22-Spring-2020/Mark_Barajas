void backgroundCheck() {
  // uncommenting this will cause the beatDetect to be used 
  if ( beat.isOnset() ) { // if the beat is detected or the radius of the cirlce surpasses 300 pixels
    h = random(0, 255);             // background hue value will change from 0 255
  }
}
