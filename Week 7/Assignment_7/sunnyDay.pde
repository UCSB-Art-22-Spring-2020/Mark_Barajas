void sunnyDay() {
  background(146,226,253);             // turns the background to a light blue

  //ambient yellow light like the sun 
  ambientLight(255,255,0);             

  translate(camX, camY, camZ);         // used for navigation

  rotateX( radians(rotX) ); 
  rotateY( radians(rotY) );
  rotateZ( radians(rotZ) );

  fill(255,255,0);                     // fills in the sun yellow 
  sun();                               // displays the sun
  tulip();                             // displays the flower
  soil();                              // displays the soil 
  cloud();                             // displays the cloud
  
  for (grass g : glist) {              // displays the grass
    g.display();
  }
}
