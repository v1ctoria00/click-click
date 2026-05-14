void intro() {
  background(background);
    
    //HELLO BIGGY EARS
  fill(255);
  ellipse(70, 350, 100, 300);
  circle(140, 350, 200);
  circle(120, 300, 150);
  circle(100, 300, 100);
  circle(100, 260, 100);
  
  ellipse(730, 350, 100, 300);
  circle(660, 350, 200);
  circle(680, 300, 150);
  circle(700, 300, 100);
  circle(700, 260, 100);
  
    //HELLO BIG KITTY
  fill(255);
  strokeWeight(3);
  stroke(255);
  ellipse(400, 900, 1200, 1200);
  
    //HELLO BIGGY BOW
  fill(

  
  textSize(72);
  fill(VintagePink);
  textAlign(CENTER, CENTER);
  text("HELLOKITTY CLICKER", 400, 350);
  
  //CLICK OPTIONS
  textSize(60);
  fill(WarmPink);
  text("START", 200, 500);
}

void introClicks() {
  
  mode = GAME;
}
