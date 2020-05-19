void rainyNight() {
  background(19, 31, 57);            // turns the background to a dark night 

  translate(camX, camY, camZ);       // used for navigation

  rotateX( radians(rotX) );          
  rotateY( radians(rotY) );
  rotateZ( radians(rotZ) );
  
  fill(0);                           // fills in the sphere with white like the moon 
  sun();                             // displays the sun 
  tulip();                           // displays the flower
  soil();                            // displays the soil
  cloud();                           // displays the cloud

  for (grass g : glist) {            // displays the grass
    g.display();
  }

  for (raindrop r : rlist) {         // displays the raindrops
    r.display();
  }
}
