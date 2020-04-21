void update() {
  if (xPos < 300) {
    xVel = xVel * xDirection;   // make sure xVel is in the correct direction (right or left) 
    xPos += xVel;  // add x velocity  to our x position 
    xVel +=xGravity; // add gravity to velocity
  } else {
    xVel = xVel * xDirection;   // make sure xVel is in the correct direction (right or left) 
    xPos += xVel;  // add x velocity  to our x position 
    xVel +=0; // add gravity to velocity
  }

  if (yPos < 300) {
    yVel = yVel * yDirection;   // make sure yVel is in the correct direction (up or down) 
    yPos += yVel;  // add y velocity  to our y position 
    yVel +=yGravity; // add gravity to velocity
  } else {
    yVel = yVel * yDirection;   // make sure yVel is in the correct direction (up or down) 
    yPos += yVel;  // add y velocity  to our y position 
    yVel +=0; // add gravity to velocity
  }
}
  
