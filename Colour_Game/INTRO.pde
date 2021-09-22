void intro() {
  background(0);
  image(gif[f], 0, 0, width, height);
  if (frameCount % 20 == 0) {
    f = f + 1;
  }

  if ( f == n) f = 0;

  textAlign(CENTER, CENTER);
  textSize(150);
  textFont(introtext);
  fill(0);
  text("Color Game", 400, 300);
  fill(255);
  text("Color Game", 390, 290);
  w = int(random(0, 6));
 c = int(random(0, 6));
}

void introClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
    mode = GAME;
  }
}
