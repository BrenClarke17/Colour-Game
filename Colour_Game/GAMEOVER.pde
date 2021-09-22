void gameover() {
  background(255, 0, 0);
  textAlign(CENTER, CENTER);
  textFont(introtext);
  textSize(120);
  fill(0);
  text("GAMEOVER", 400, 200);
  fill(255);
  text("GAMEOVER", 390, 190);
  fill(0);
  text("click to reset", 400, 500);
  fill(0);
  textSize(70);
  //actual score
  text(score, 460, 300);
  fill(255);
  text(score, 455, 295);
  //score text
  textSize(100);
  fill(0);
  text("score", 330, 300);
  fill(255);
  text("score", 325, 295);
  //high score
  textSize(70);
  fill(0);
  text(highscore, 460, 400);
  fill(255);
  text(highscore, 455, 395);
  
  //high score text
    textSize(100);
  fill(0);
  text("highscore", 290, 400);
  fill(255);
  text("highscore", 285, 395);

  //high score code
  if (score > highscore) {
    highscore = score;
  }
}
void gameoverClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
    mode = INTRO;
    score = 0;
    timer = 150;
  }
}
