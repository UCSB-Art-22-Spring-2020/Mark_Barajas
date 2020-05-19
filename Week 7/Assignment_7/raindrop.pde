class raindrop {
  float x, y, z;

  raindrop(float x_, float y_, float z_) {
    x = x_; 
    y = y_; 
    z = z_;
  }

  void display() {
    pushMatrix(); 
    rotate(PI);
    translate(x, y, z); 
    scale(5); 
    shape(droplet); 
    popMatrix(); 

    if (counter == 1) {            // slow
      y-= 10;
    } else if (counter == 2) {     // hard 
      y -= 15;
    } else {                       // cats and dogs
      y -= 15;
      x+= 7;
    }


    if (y < -690 ) {                // if the drop reaches the ground then restart in the clouds
      x = random(xBn, xBp); 
      y = random(yBn, yBp); 
      z = random(zBn, zBp);
    }
  }
}
