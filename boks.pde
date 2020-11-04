class boks {
  int cost1, cost2, cost3;
  void bokse() {

    cost1 = 100;
    cost2 = 500;
    cost3 = 1000;

    //Købeboks 1
    fill(255);
    rect(160, 100, 60, 50);
    fill(0);
    textSize(25);
    text("x" + boks1, 165, 135);

    //Hvor mange gange er bokset købt?
    fill(255);
    rect(40, 100, 120, 50);

    fill(0);
    textSize(20);
    text("Power up 1", 45, 120);
    text("Cost: " + cost1, 45, 140);

    //Viser boksen som grøn
    if (point >= 100 && mouseX>40 && mouseX<160 && mouseY>100 && mouseY<150 ) {
      fill(0, 255, 0);
      rect(40, 100, 120, 50);

      fill(0);
      textSize(20);
      text("Power up 1", 45, 120);
      text("Cost: " + cost1, 45, 140);
    }
    //Viser boksen som grå
    if (point < 100 && mouseX>40 && mouseX<160 && mouseY>100 && mouseY<150 ) {
      fill(200);
      rect(40, 100, 120, 50);

      fill(0);
      textSize(20);
      text("Power up 1", 45, 120);
      text("Cost: " + cost1, 45, 140);
    }

    if (point >= 100 && up && mouseX>40 && mouseX<160 && mouseY>100 && mouseY<150) {
      cursor = true;
      if (mousePressed) {
        klik = klik + 1.2;
        point = point - cost1;
        boks1++;
        fill(0);
        up = false;
        cursor = false;
      }
    }
    //___________________________________________________________________________________________________________________________

    //boks2
    //int d rykker boksen nedenunder, så boksene ikke står oven i hinanden
    if (boks1 >= 3) {
      fill(255);
      rect(160, 100+d, 60, 50);
      fill(0);
      textSize(25);
      text("x" + boks2, 165, 135+d);

      //Hvor mange gange er bokset købt?
      fill(255);
      rect(40, 100+d, 120, 50);

      fill(0);
      textSize(20);
      text("Power up 2", 45, 120+d);
      text("Cost: " + cost2, 45, 140+d);

      //Viser boksen som grøn
      if (point >= 500 && mouseX>40 && mouseX<160 && mouseY>100+d && mouseY<150+d ) {
        fill(0, 255, 0);
        rect(40, 100+d, 120, 50);

        fill(0);
        textSize(20);
        text("Power up 2", 45, 120+d);
        text("Cost: " + cost2, 45, 140+d);
      }
      //Viser boksen som grå
      if (point < 500 && mouseX>40 && mouseX<160 && mouseY>100+d && mouseY<150+d ) {
        fill(200);
        rect(40, 100+d, 120, 50);

        fill(0);
        textSize(20);
        text("Power up 2", 45, 120+d);
        text("Cost: " + cost2, 45, 140+d);
      }

      if (point >= 500 && up && mouseX>40 && mouseX<160 && mouseY>100+d && mouseY<150+d) {
        cursor = true;
        if (mousePressed) {
          klik = klik + 2;
          point = point - cost2;
          boks2++;
          fill(0);
          up = false;
          cursor = false;
        }
      }
    }


    //_____________________________________________________________________________________________________
    //boks3
    //int d rykker boksen nedenunder, så boksene ikke står oven i hinanden

    if (boks2 >= 3) {
      fill(255);
      rect(160, 100+d+d, 60, 50);
      fill(0);
      textSize(25);
      text("x" + boks3, 165, 135+d+d);

      //Hvor mange gange er bokset købt?
      fill(255);
      rect(40, 100+d+d, 120, 50);

      fill(0);
      textSize(20);
      text("Power up 3", 45, 120+d+d);
      text("Cost: " + cost3, 45, 140+d+d);

      //Viser boksen som grøn
      if (point >= 1000 && mouseX>40 && mouseX<160 && mouseY>100+d+d && mouseY<150+d+d ) {
        fill(0, 255, 0);
        rect(40, 100+d+d, 120, 50);

        fill(0);
        textSize(20);
        text("Power up 3", 45, 120+d+d);
        text("Cost: " + cost3, 45, 140+d+d);
      }
      //Viser boksen som grå
      if (point < 1000 && mouseX>40 && mouseX<160 && mouseY>100+d+d && mouseY<150+d+d ) {
        fill(200);
        rect(40, 100+d+d, 120, 50);

        fill(0);
        textSize(20);
        text("Power up 3", 45, 120+d+d);
        text("Cost: " + cost3, 45, 140+d+d);
      }

      if (point >= 1000 && up && mouseX>40 && mouseX<160 && mouseY>100+d+d && mouseY<150+d+d) {
        cursor = true;
        if (mousePressed) {
          klik = klik + 5;
          point = point - cost3;
          boks3++;
          fill(0);
          up = false;
          cursor = false;
        }
      }
    }
    if (boks3 >= 3) {
      text("Tillykke Ejnar. Du har gennemført mit program.", width/100, height*0.9); 
      text("Ps håber du finder denne besked.", width/100, height*0.93);
    }
  }
}
