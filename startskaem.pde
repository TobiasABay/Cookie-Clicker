class startskaerm {

  void start() {
    background(255, 80, 0);
    textFont(Font1);
    textSize(40);
    fill(50, 255, 50);
    text("Velkommen til Cookie Bay", width/2-250, 50);

    fill(0);
    rect(width/2-100, height/2-200, 200, 50);
    rect(width/2-100, height/2-140, 200, 50);
    rect(width/2-100, height/2-80, 200, 50);

    fill(50, 255, 50);
    textSize(30);
    text("START", width/2-45, height/2-165);
    text("Indstillinger", width/2-85, height/2-165+60);
    text("Score", width/2-35, height/2-165+120);



    if (mouseX > width/2-100 && mouseX < width/2-100 + 200 && mouseY > height/2-200 && mouseY < height/2-200 + 50) {
      cursor = true;
      fill(20);
      rect(width/2-100, height/2-200, 200, 50);

      fill(50, 255, 50);
      textSize(30);
      text("START", width/2-45, height/2-165);

      if (mousePressed && mouseX > width/2-100 && mouseX < width/2-100 + 200 && mouseY > height/2-200 && mouseY < height/2-200 + 50 ) {
        startspil = true;
      }
    } 
    if (mouseX > width/2-100 && mouseX < width/2-100 + 200 && mouseY > height/2-140 && mouseY < height/2-140 + 50) {
      cursor = true;
      fill(20);
      rect(width/2-100, height/2-140, 200, 50);

      fill(50, 255, 50);
      textSize(30);
      text("Indstillinger", width/2-85, height/2-165+60);
    } 
    if (mouseX > width/2-100 && mouseX < width/2-100 + 200 && mouseY > height/2-80 && mouseY < height/2-80 + 50) {
      cursor = true;
      fill(20);
      rect(width/2-100, height/2-80, 200, 50);

      fill(50, 255, 50);
      textSize(30);
      text("Score", width/2-35, height/2-165+120);
    } 
    if (!(mouseX > width/2-100 && mouseX < width/2-100 + 200 && mouseY > height/2-80 && mouseY < height/2-80 + 50) && !(mouseX > width/2-100 && mouseX < width/2-100 + 200 && mouseY > height/2-140 && mouseY < height/2-140 + 50) && !(mouseX > width/2-100 && mouseX < width/2-100 + 200 && mouseY > height/2-200 && mouseY < height/2-200 + 50)) {
      cursor = false;
    }
  }
}
