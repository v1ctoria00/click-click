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
final int LEVELS = 4;
final int WIN = 5;
final int OPTIONS = 6; 

float x, y, d = 100;
float vx, vy;

int score, lives, highScore;

PFont chunky_playful;
PFont cute_notes;


//setup
void setup() {
  size(800, 800);
  mode = INTRO;
  
  chunky_playful = createFont("Chunky Playful.otf", 72);
  cute_notes = createFont("Cute Notes copy.ttf", 50);

  x = 500;
  y = 500;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);

  score = 0;
  lives = 5;
  highScore = 0;
}

//draw
void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game(); 
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == LEVELS) {
    levels();
  } else if (mode == WIN) {
    win();
  } else { 
    println("Error: Mode = " + mode);
  }
  
  OptionsButton(415, 130);
  StartButton(120, 130);
}

void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks(); 
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else { 
    println("Error: Mode = " + mode);
  }
}

  void StartButton(int x, int y) {
  if (mouseX > x && mouseX < x + 100 && mouseY > y && mouseY < y + 30) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(OUTLINE);
  fill(PaleBlush);
  rect(x, y, 200, 70);
  fill(MutedRaspberry);
  textSize(50);
  textFont(cute_notes);
  text("START", x + 100, y + 30);
  }

  void OptionsButton(int x, int y) {
  if (mouseX > x && mouseX < x + 140 && mouseY > y && mouseY < y + 30) {
    stroke(SELECTOUTLINE);
  } else {
    stroke(OUTLINE);
  }
  fill(OUTLINE);
  fill(PaleBlush);
  rect(x, y, 280, 70);
  fill(MutedRaspberry);
  textSize(50);
  textFont(cute_notes);
  text("OPTIONS", x + 140, y + 30);
  }
