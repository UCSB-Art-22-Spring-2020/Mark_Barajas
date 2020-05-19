// Mark Barajas 
// Assignment 7 
// 5-18-2020
// This program will simulate two environments
// By default, the program will run a sunny day environment where the sun shines 
// While the mouse is clicked, the environment will simulate a rainy night
// When in the rainy night environment, there are options to control the speed of the rain falling by pressing either the 1,2, or 3 key


import peasy.*;
PeasyCam cam; 

PShape grass;
PImage green;
PShape sun; 
PShape cloud; 
PImage cloudMtrl; 
PShape droplet; 
PImage dropColor; 
PShape soil; 
PShape tulip;

int xBp, xBn, yBp, yBn, zBp, zBn; 
int i = 0; 
int grassQ = 5;
int rainQ  = 100; 
float m = 0; 
float rotX, rotY, rotZ, camX, camY, camZ;
int counter = 1; 

ArrayList<grass> glist = new ArrayList<grass>(); 
ArrayList<raindrop> rlist = new ArrayList<raindrop>(); 

void setup() {
  size(1000, 1000, P3D);

  // setting up cloud boundaries
  // these are set through rough estimates
  xBp = 90; 
  xBn = -350; 
  yBp = -140; 
  yBn = -150; 
  zBp = 100; 
  zBn = -100; 

  // building the grass
  green = loadImage("grass.JPG"); 
  grass = loadShape("grass.obj");
  grass.setTexture(green); 
  for (int i = 0; i < grassQ; i++) {     // building 5 patches of grass
    glist.add(new grass(
      random(-100, 100), 
      random(-100, 100)));
  }

  // building the sun
  noStroke();   
  sun = createShape(SPHERE, 50); 

  // building the cloud
  cloudMtrl = loadImage("clouds_alpha.png"); 
  cloud = loadShape("cloud.obj"); 
  cloud.setTexture(cloudMtrl); 

  // building the droplets
  dropColor = loadImage("droplet.JPG"); 
  droplet = loadShape("drop.obj"); 
  droplet.setTexture(dropColor); 
  for (int i = 0; i < rainQ; i++) {    // building 100 raindrops 
    rlist.add( new raindrop(
      random(xBn, xBp), 
      random(-690, yBp), 
      random(zBn, zBp)));
  } 

  // building the tulilp
  tulip = loadShape("tulip.obj");
  tulip.setTexture(loadImage("tulips_petals_Normal.png"));

  // setting up the camera 
  cam = new PeasyCam(this, 1000);
}


void draw() {
  background(146, 226, 253); 

  if (mousePressed) {       // when mouse is pressed it will switch to day time
    rainyNight();
  } else {                  // otherwise it will be on a rainy night
    sunnyDay(); 
  }

  if (keyPressed) {         // used to control the speed of the rain
    if (key == '1') {            // slow
      counter = 1;
    } else if (key == '2') {     // fast
      counter = 2;
    } else if (key == '3') {     // cats and dogs
      counter = 3;
    }
  }
  nav();                         // navigates via the keys 
}
