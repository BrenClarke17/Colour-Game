void game() {

  fill(255);
  rect(0, 0, 400, 600);
  fill(0);
  rect(400, 0, 400, 600);
  textSize(60);
  fill(0);
  text("MATCHING", 200, 100);
  fill(255);
  text("NOT MATCHING", 600, 100);
  fill(colors[c]);
  textSize(150);
  text(words[w], 400, 300);
  //scoreboard
  fill(#7C7D81);
  textSize(80);


  //timer
  rect(300, 500, timer, 50);
  textSize(50);
  text(score, 400, 50);
  timer = timer -1;
  if (timer < 0) {
    mode = GAMEOVER;
  }
}

void gameClicks() {
  if (mouseX < 400) { // Matching
    if (w==c) {
      w = int(random(0, 6));
      c = int(random(0, 6));
      timer = 150;
      //score
      score = score + 1;
    } else {
      mode = GAMEOVER;
    }
  } else { // Not matching
    if (mouseX > 400) {
      if (w==c) {
        mode = GAMEOVER;
      } else {
        timer = 150;
        w = int(random(0, 6));
        c = int(random(0, 6));
        //score
        score = score + 1;
      }
    }
  }


  //if (mouseX > 0 && mouseX < 400 && mouseY > 0 && mouseY < 600 ) {
  //mode = GAMEOVER;
}



// end of gameclicksclicks
