// Mark Barajas
// Assignment 6
// Date: 5-11-2020
// In this code, the user can control the map they would like to see by pressing key 1, 2, or 3 
// Also, the background can change between 2 modes: 
// The first mode keeps the background black and the second mode changes the background to the beat of the song
// The song used in this code is "You Only Live Once - instrumental version" - by farpras 
// https://www.youtube.com/watch?v=PKwt24qHsL0


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim; 
AudioPlayer song; 
FFT fft; // ... get us info on the "parts" (frequencies) of our sound
BeatDetect beat;   // won't be used unless the sections in backgroundChange are commented/uncommented
               
float r = 80;                         // initial radius of rings
float h, s, b;                        // hsb variables for hsb values
int m, k;                             // mouse and keyboard shortcut values
float thresh = 0;                     // threshold will start at 0 to capture highest value
int go = 0;                           // acts more like a boolean 
float multiplier = 1.3;               // multiplier for the frequency values   
float c = 0;                          // rotated angle from center 

void setup() {
  size(500, 500);   
  colorMode(HSB); 
  b = 100;                            // brightness value of 137 is approximately a neon color
  h = 0;                              // start at red
  s = 100;                            // saturation value of 100 is approximately a neon color
  m = 0;                              // mouse variable starts at black screen
  k = 1;                              // keyboard variable starts at normal sound bars

  minim = new Minim(this);                   // new minim object created
  song = minim.loadFile("once.mp3", 1024);   // new song loaded
  song.loop();                               // song will be looped

  // setup beat detector and set sensitivity
  beat = new BeatDetect(); 
  beat.setSensitivity(100);

  // get info about the song 
  fft = new FFT( song.bufferSize(), song.sampleRate());
}

void draw() {
  // depending on the m value it will play a different backgorund
  if (m == 1) {
    backgroundCheck();            // this will alternate the background color according to the beat 
    background(h, s, b);          // background is colored in 
  } else {
    background(0);                // this will keep the background black 
  }

  // fft and beat detector play and detect beats 
  fft.forward( song.mix ); 
  beat.detect(song.mix);
  thresh = 0;

  // if the value for k is 1, 2, or 3, then play the respective map
  if (k==1) {
    horizontalBars();
  } else if ( k == 2) {
    verticalBars();
  } else if (k ==3) {
    circleBeat();
  } else if (k ==4){
    circleBar(); 
  }
}

// when the mouse is released it will change value of m  
void mouseReleased() {
  if ( m == 0) { // if t is normal, switch to strobe background
    m++;
  } else {       // else switch back to strobes
    m = 0;
  }
}

// when the respective key on the keyboard is pressed it will set the k value to that number
void keyPressed() {
  if (key == '1') {
    k = 1;
  } else if (key == '2') {
    k = 2;
  } else if (key =='3') {
    k = 3;
  } else if (key == '4'){
   k = 4;  
  }
  
  if (key == 'p'){
    song.pause();                   // song will be paused at the press of 'p' 
  } else if (key == 'o'){
    song.play();                    // song will be resumed at the press of 'o'
  }
}
