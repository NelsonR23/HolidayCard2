class SnowFlake {

  int x; 
  int y; 
  int xspeed; 
  int yspeed; 
  int size; 
  double grow;


  public SnowFlake() {
    x=(int)(Math.random()*1200); 
    y=(int)(Math.random()*800)-210; 
    xspeed=(int)(Math.random()*3)-2; 
    yspeed=(int)(Math.random()*3)+1; 
    size=(int)(Math.random()*10)+1;
  }


  void show() {
    //(float)(Math.random()*255)
    fill (255, 255, 255); 
    ellipse (x, y, size, size);
  }

  void move() {
    x+=xspeed; 
    y+=yspeed; 
    if (y>810) {
      y=-20; 
      x=(int)(Math.random()*width);
    }
  }
}

PImage sled, dels;
int sx;
int sx2;

class Sled {
  Sled() {

    sled=loadImage("sled2.png");
    dels=loadImage("sled1.png");
    sx=-400;
    sled.resize(360, 140);
  }
  void show(PImage key) {
    image(key, sx, 125);
  }
  void reset(){
    sx=-400;
  }
  void move() {
    sx+=3;
  }
  boolean ios() {
    if (sx>1500) {
      return true;
    } else {
      return false;
    }
  }
}

class Backsled {
  Backsled() {
    sled=loadImage("sled2.png");
    dels=loadImage("sled1.png");
    sx2=1300;
    dels.resize(360, 140);
    sled.resize(360, 140);
  }
  void show(PImage key) {
    image(key, sx2, 125);
  }
  void move() {
    sx2-=3;
  }
  void reset(){
    sx2=1300;
  }
  boolean ios() {
    if (sx2<-400) {
      return true;
    } else {
      return false;
    }
  }
}
