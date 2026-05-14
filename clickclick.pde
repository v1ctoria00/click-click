//colour set up
color background = #facdd8;
color PaleBlush = #FADAD9;
color LightRose = #F3C3C5;
color SoftCoralPink = #E9ABAE;
color WarmPink = #E0959C;
color MutedRaspberry = #D78289;
color AntiqueRose = #CE6F79;
color VintagePink = #C65C69;
color White = #FFFFFF;
color SLIDEPINK = #f2b3c6;
color OUTLINE = #f7cdd4;
color SELECTOUTLINE = #fae3ed;
color eyes = #5c3927;

//Modes
int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//setup
void setup() {
  size(800, 800);
  mode = INTRO;
}

//draw
void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game(); 
  } else if (mode == PAUSE) {
    //pausescreen();
  } else if (mode == GAMEOVER) {
    //gameover();
  } else { 
    println("Error: Mode = " + mode);
  }
}

void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks(); 
  } else if (mode == PAUSE) {
    //pauseClicks();
  } else if (mode == GAMEOVER) {
    //gameoverClicks();
  } else { 
    println("Error: Mode = " + mode);
  }
  
}
