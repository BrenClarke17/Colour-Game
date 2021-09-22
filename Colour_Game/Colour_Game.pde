/*Brennan Clarke
 Colour Game Project
 */
PFont introtext;
PImage[] gif;
int n;
int i;
int mode;
int f;
//score
int score, timer, highscore;

//color puzzle functions
String[] words;
color[] colors;
int w, c;
color red = #F00008;
color blue = #2E63E5;
color green = #38ED16;
color orange = #E39012;
color yellow = #F5EE0C;
color purple = #FF1ACA;
//mode framework
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
void setup() {
  size(800, 600);
  introtext = createFont("Quarts Pachino Demo Version.otf", 150);
  mode = INTRO;

  n = 10;
  gif = new PImage [n] ;  

  int i = 0;
  while ( i < n ) {
    gif[i] = loadImage("frame_0"+i+"_delay-1s.gif"); // fix this
    i++;
  }

  //Color puzzle
  words = new String[6];
  colors = new color[6];
  //red
  words[0] = "red";
  colors[0] = red;
  //blue 
  words[1] = "blue";
  colors[1] = blue;
  //green
  words[2] = "green";
  colors[2] = green;
  //orange
  words[3] = "orange";
  colors[3] = orange;
  //yellow
  words[4] = "yellow";
  colors[4] = yellow;
  //purple
  words[5] = "purple";
  colors[5] = purple;

//timer 
timer = 150;

}// end of setup

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
} // end of draw
