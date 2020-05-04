class particle {
  // variables 
  float x, y; 
  float size; 
  float speedX, speedY; 
  float r, g, b; 

  // constructor 
  particle(float x_, float y_, float size_, float speedX_, float speedY_, float r_, float g_, float b_) {
    x = x_; 
    y = y_;
    size = size_; 
    speedX = speedX_; 
    speedY = speedY_;
    r = r_; 
    g = g_; 
    b = b_;
  }

  // methods 
  void display() {
    strokeWeight(size); 
    stroke(r,g,b); 
    point(x, y); 
    x = x + speedX; 
    y = y + speedY;
  }
}
