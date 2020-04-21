void init(){
  
  xPos = width/2; 
  yPos = height/2; 

  xVel = 6;           // velocity of xPos 
  yVel = 3;           // velocity of yPos 
  yDirection = 1;     // initial y direction 
  xDirection = 1;     // initial x direction
  xGravity = 0.5;       //  inital x acceleration 
  yGravity = 0.5;     // initial y acceleration 
  background(200, 30, 30);
}
