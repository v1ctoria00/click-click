void game() {
  background(background);
  
  fill(LightRose);
  stroke(White);
  strokeWeight(5);
  circle(x, y, d);
  
  fill(White);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
  x = x + vx;
  y = y + vy;
  
  if(x < 0 || x > width) {
    vx = vx * -1;
  }
  if(y < 0 || y > height) {
     vy = vy * -1;
  }
}


void gameClicks() {
  
  if (dist (mouseX, mouseY, x, y) < 100) {
    score = score + 1;
  } else { 
    lives = lives - 1;
    if(lives == 0)  mode = GAMEOVER;
  }
}
