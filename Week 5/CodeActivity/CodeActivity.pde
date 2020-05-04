// in this code activity, I added values for the rgb of the particle and changes everytime the mouse clicks

particle p; // initialize a particle name p 
particle q; 
int index = 1; // starts with green 


void setup() {
  size(600, 600);

  p = new particle(width/2, height/2, 10, 2, 1, 0, 78, 56); 
  q = new particle(random(0, width), random(0, height), 10, -2, -1, 0, 78, 56);
}

void draw() {
  background(0); 


  p.display(); 
  q.display();

  if (index == 1) { // change to green 
    q.r = 0;
    q.g = 78; 
    q.b = 56;
  } else if (index ==2) { // change to violet
    q.r = 151;
    q.g = 123; 
    q.b = 182;
  } else { // change to blue
    q.r = 0;
    q.g = 0; 
    q.b = 128;
  }
}

void mouseReleased() {  
  q.size+=5;
  if (index<3) {
    index++;
  } else {
    index = 1;
  }
}
