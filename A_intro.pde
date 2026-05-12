void intro() {
  background(background);
  textSize(72);
  fill(VintagePink);
  textAlign(CENTER, CENTER);
  text("HELLOKITTY CLICKER", 400, 350);
  
  //HELLO BIG KITTY
  fill(255);
  strokeWeight(3);
  stroke(OUTLINE);
  ellipse(400, 900, 1200, 1200);
  
  //CLICK OPTIONS
  textSize(60);
  fill(WarmPink);
  text("START", 200, 500);
}

void introClicks() {
  
  mode = GAME;
}
