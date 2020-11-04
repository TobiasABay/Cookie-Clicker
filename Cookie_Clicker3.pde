PFont Font1;

//floats
float reduce;
float point;
float klik;
float a, b, c;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

//ints
int cx, cy;
int cirkel;
int boks1, boks2, boks3;
int d;
int auto;
int m, n;

//booleans
boolean stop = false;
boolean up;
boolean loadingbar;
boolean startspil;
boolean cursor;
boolean ready, igang;

//Arraylists
ArrayList<FadeText> fadeText;

//classes
startskaerm ss;
boks koebeboks;
clock klok;
gangebokse kasse; 

//Images
PImage img;

void setup() {
  size(600, 600);
  background(255);

  cirkel = 100;
  klik = 1;
  point = 0;
  d = 60;
  auto = 1;

  //particles = new ArrayList<Particle>();
  fadeText = new ArrayList<FadeText>();

  koebeboks = new boks();
  klok = new clock();
  kasse = new gangebokse();
  ss = new startskaerm(); 

  //klokken
  int radius = 50;
  secondsRadius = radius * 0.72;
  minutesRadius = radius * 0.60;
  hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.8;

  cx = 550;
  cy = 550;

  //___________________________________________LoadingBar
  ready = true;
  igang = false;
  m = 0;
  n = 300;
  a = random(1, width);
  b = random(1, 10);
  c = random(1, 10);
  //___________________________________________LoadingBar

  //___________________________________________Start Skærm
  Font1 = createFont("Arial Bold", 18);
  //___________________________________________Start Skærm

  img = loadImage("423480-200.png");
}

void draw() {
  if (cursor == true) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
  
  ss.start();

  if (startspil == true) {
    background(255);
    cursor = false;

    image(img, 20, 510, 70, 70);
    if (mouseX > 20 && mouseX < 90 && mouseY > 510 && mouseY < 580 ) {
      cursor = true;
      if (mousePressed) {
        startspil = false;
        cursor = false;
      }
    }

    //Spillets oplysninger
    fill(0);
    textSize(32);
    text("Points: " + float(int(point*100))/100, width/3+150, height/12);
    text("Click: " + float(int(klik*100))/100, width/3+150, height/7);
    textSize(20);
    text("Game By Tobias Bay", width/2-100, height*0.9+40);

    //Cirkels størrelse
    fill(0);
    circle(width/2, height/2, cirkel+reduce); 
    reduce=0.70*reduce;
    if (dist(mouseX, mouseY, width/2, height/2) < 50) {
      cursor = true;
      if (mousePressed) {
        if (!stop)
        {
          fadeText.add(new FadeText());
          point = point + klik;
          stop = true;
        }  
        reduce = 20;
        cursor = false;
      }
    }
    /*
    //partikelsystem
     if (mousePressed && !(mouseX>40 && mouseX<160 && mouseY>100 && mouseY<150)) {
     if (dist(mouseX, mouseY, width/2, height/2) < 50) {
     
     particles.add(new Particle(new PVector(width/2, height/2)));
     
     for (int i = particles.size()-1; i >= 0; i--) {
     Particle p = particles.get(i);
     p.run();
     if (p.isDead()) {
     particles.remove(i);
     }
     }
     }
     }
     */
    //input fra klasserne
    koebeboks.bokse();
    klok.klok();
    kasse.gangeboks();

    //___________________________________________LoadingBar
    fill(80);
    circle(a, b+c, 30);
    c++;
    if (c > height+30) {
      c = random(-100, -20); 
      a = random(30, width-30);
    }

    if (dist(mouseX, mouseY, a, c) < 30) {
      cursor = true;
      if (mousePressed) {
        igang = true;
        loadingbar = true;
        cursor = false;

        a = random(30, width-30);
        c = random(-100, -20);
      }
    }

    if (igang == true) {
      n--;
      point++;
    }
    if (n < 300 && n > 0) {
      ready = false;


      if (!ready) {
        m++;

        if (m > 200) {
          m = 0; 
          ready = !false;
          n = 300;
          igang = false;
          loadingbar = false;
        }
      }
    }

    if (loadingbar == true) {
      fill(255);
      rect(width/6+100, height*0.8, 200, 50);
      fill(0);
      rect(width/6+100, height*0.8, m, 50);
    }
    if (fadeText.size() >= 0) {
      fadeText();
    }
  }
  //___________________________________________LoadingBar
}
void mouseReleased() {
  stop = false;
  up = true;
}

void fadeText()
{
  // Looping through array of objects displaying text when clicking
  for (int i = fadeText.size()-1; i >= 0; i--)
  {
    // Assign object to a variable
    FadeText f = (FadeText) fadeText.get(i);
    // Call fade function from class
    f.fade(klik);
    // If text object is invisible (Fade <= 0)
    if (f.isFaded())
    {
      println("GONE");
      // Remove text object
      fadeText.remove(i);
    }
  }
}
