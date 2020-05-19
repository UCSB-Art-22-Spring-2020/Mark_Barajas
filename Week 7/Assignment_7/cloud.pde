void cloud() {

  // uses a matrix to scale the cloud object that is drawn a bit to the left of the center
  pushMatrix(); 
  scale(0.05); 
  shape(cloud, -100, 0); 
  popMatrix();
}
