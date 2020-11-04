class gangebokse {

  boolean gangefaktor1, gangefaktor2, gangefaktor3;

  void gangeboks() {
    fill(255);
    rect(width*0.01, height/100, 100, 50);
    rect(width*0.16, height/100, 100, 50);
    rect(width*0.31, height/100, 100, 50);

    fill(0);
    textSize(30);
    text("x1", width*0.01+20, height/100+35);
    text("x10", width*0.16+20, height/100+35);
    text("x100", width*0.31+20, height/100+35);


    if (mouseX > width*0.01 && mouseX < width * 0.01 + 100 && mouseY > height/100 && mouseY < height/100 + 50) {
      cursor = true;
      if (mousePressed) {
        gangefaktor1 = true;

        gangefaktor2 = false;
        gangefaktor3 = false;
        cursor = false;
      }
    }

    if (mouseX > width*0.16 && mouseX < width * 0.16 + 100 && mouseY > height/100 && mouseY < height/100 + 50) {
      cursor = true;
      if (mousePressed) {
        gangefaktor2 = true;

        gangefaktor1 = false;
        gangefaktor3 = false;

        cursor = false;
      }
    }

    if (mouseX > width*0.31 && mouseX < width * 0.31 + 100 && mouseY > height/100 && mouseY < height/100 + 50) {
      cursor = true;
      if (mousePressed) {
        gangefaktor3 = true;

        gangefaktor1 = false;
        gangefaktor2 = false;

        cursor = false;
      }
    }


    if (gangefaktor1 == true) {
      fill(0, 255, 0);
      rect(width*0.01, height/100, 100, 50);

      fill(0);
      textSize(30);
      text("x1", width*0.01+20, height/100+35);
      text("x10", width*0.16+20, height/100+35);
      text("x100", width*0.31+20, height/100+35);

      gangefaktor2 = false;
      gangefaktor3 = false;
    }

    if (gangefaktor2 == true) {
      fill(0, 255, 0);
      rect(width*0.16, height/100, 100, 50);

      fill(0);
      textSize(30);
      text("x1", width*0.01+20, height/100+35);
      text("x10", width*0.16+20, height/100+35);
      text("x100", width*0.31+20, height/100+35);

      gangefaktor1 = false;
      gangefaktor3 = false;
    }

    if (gangefaktor3 == true) {
      fill(0, 255, 0);
      rect(width*0.31, height/100, 100, 50);

      fill(0);
      textSize(30);
      text("x1", width*0.01+20, height/100+35);
      text("x10", width*0.16+20, height/100+35);
      text("x100", width*0.31+20, height/100+35);

      gangefaktor1 = false;
      gangefaktor2 = false;
    }




  }
}
