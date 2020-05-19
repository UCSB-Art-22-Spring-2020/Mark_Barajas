class grass {
  float x, z;                    // creates variables x and z for placement of grass

  grass(float x_, float z_) {    // takes in variables for x and z; these are going to be randomly set in the setup()
    x = x_; 
    z = z_;
  }

  void display() {               // this will display the patches of grass
    pushMatrix();
    rotate(PI);                  // rotated so that they stand upright 
    translate(x, -700, z);       // translated to be under the clouds
    scale(20);                   // scaled so that they are visible 
    shape(grass);  
    popMatrix();
  }
}
