
ArrayList<Light> lights= new ArrayList<Light>();
float grow=30;
float grow2=30;
boolean day;
int x=900;
int red;
int green;
int blue;
Sled sled1;
Backsled sled2;
SnowFlake [] sf2 = new SnowFlake[150];
void setup() {
  size(1200, 800);

  for (int i=0; i<sf2.length; i++) {
    sf2[i]=new SnowFlake();
  }
  sled1=new Sled();
  sled2=new Backsled();
}
void draw() {
  clear();
  background(red, green, blue);
  planet();
  for (int i=0; i<sf2.length; i++) {
    sf2[i].move();
    sf2[i].show();
    //sf2[i].grow();
  }

  sled1.show(sled);
  sled1.move();
  if (sled1.ios()) {
    sled2.show(dels);
    sled2.move();
    if(sled2.ios()){
     sled1.reset();
     sled2.reset();
    }
  } 
  words();
  grow(); 

  button();
  button2();

  fill(255, 0, 0);
  stroke(200);

  //house
  fill(148, 0, 211);
  rect(400, 800, 500, -400);

  //door
  fill(150, 75, 0);
  rect(750, 650, 75, 150);
  fill(218, 165, 32);
  ellipse(810, 720, 10, 10);



  //window
  fill(0);
  rect(450, 630, 225, 150);
  fill(255, 255, 255);
  line(565, 630, 565, 780);
  line(450, 700, 365+310, 700);



  //chimney
  stroke(0);
  fill(186, 32, 13);
  rect(750, 300, 70, 100);
  //bricks
  line(750, 350, 820, 350);
  line(750, 325, 820, 325);
  line(750, 375, 820, 375);
  line(785, 300, 785, 325);
  line(770, 325, 770, 350);
  line(800, 325, 800, 350);
  line(785, 350, 785, 375);
  line(770, 375, 770, 400);
  line(800, 375, 800, 400);

  for (int i=0; i<10; i++) {
    for (int j=0; j<500; j+=10) {
      lights.add(i, new Light());
      lights.get(i).show(400+j+5, 500, 10);
    }
  }
  for (int i=0; i<10; i++) {
    for (int j=0; j<500; j+=10) {
      lights.add(i, new Light());
      lights.get(i).show(400+j+5, 550, 10);
    }
  }
  for (int i=0; i<10; i++) {
    for (int j=0; j<500; j+=10) {
      lights.add(i, new Light());
      lights.get(i).show(400+j+5, 450, 10);
    }
  }
  println(lights.size());
  for (int b=0; b<10; b++) {
   lights.get(b).flash();
  }
 
}
void sign() {
  //noStroke();
  fill(170, 85, 0);
  //102 51 0
  //153-102- 0
  rect(550, 280, 120, 60);
  rect(600, 340, 20, 60);
}
void planet() {
  noStroke();
  if (day==true) {
    fill(255, 255, 0);
  } else {
    fill(153, 153, 153);
  }
  ellipse(0, 0, 160, 175);
}
void grow() {    
  fill (255, 255, 255);
  rect(0, height, width, (float)grow);

  if (grow<-25) {
    grow=-25;
  } else {
    grow-=.07;
  }
}
void grow2() {
  fill (255, 255, 255);
  rect(550, 280, 120, (float)grow2);

  if (grow2<-10) {
    grow2=-10;
  } else {
    grow2-=.07;
  }
}

void mousePressed() {
  if (day==true) {
    red=0;
    green=0;
    blue=0;
    day=false;
  } else if (day==false) {
    red=140;
    green=200;
    blue=230;
    day=true;
  }
}



void words() {
  textSize(30);
  fill(160, 32, 240);
  text("Happy Holidays!", x, 770);
  if (x<-250) {
    x=850;
  }
  x-=.9;
  textSize(45);
  fill(130, 0, 170);
}

void button() {  
  fill(102, 102, 102);
  rect(1100, 20, 75, 25);
  if (mouseX<775&&mouseX>700&&mouseY<45&&mouseY>20) {
    cursor(HAND);
  } else {
  }
}
void button2() {
  textSize(14); 
  fill(255, 255, 255);
  text("Day/Night", 1103, 37);
}
