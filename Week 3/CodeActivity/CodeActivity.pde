float xPos, yPos;             // position variables for geometry 
float xVel, yVel, xDirection, yDirection; // velocity and direction variables for geometery 
float xGravity, yGravity; //accceleration variables 


void setup() {
  size(600, 600);
  init();
}

void draw() {
  render(); // run the render function 

  update(); // run/call the "update" function 

  boundaries(); // ...

  interaction(); // ...
}
