class SnowFlake {

  int x; 
  int y; 
  int xspeed; 
  int yspeed; 
  int size; 
  double grow;
  PShape snow;
  int i; 


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

    /*
    snow = createShape();
     
     snow.beginShape();
     
     snow.translate(-22, -50);
     
     snow.fill( 153, 255, 255 );
     
     snow.stroke( 0, 190, 200 );
     
     //snow.noStroke(); 
     
     
     snow.vertex( 22, 50 ); //lower point
     
     snow.vertex( 17, 42 ); //begin left side
     
     snow.vertex( 17, 23 );
     
     snow.vertex( 0, 16 );
     
     snow.vertex( 0, 10 );
     
     snow.vertex( 4, 7 );
     
     snow.vertex( 17, 12 );
     
     snow.vertex( 17, 2 ); //end left side
     
     snow.vertex( 22, 0 ); //top point
     
     snow.vertex( 27, 2 ); //begin right side
     
     snow.vertex( 27, 12 );
     
     snow.vertex( 40, 7 );
     
     snow.vertex( 44, 10 );
     
     snow.vertex( 44, 16 );
     
     snow.vertex( 27, 23 );
     
     snow.vertex( 27, 42 ); //end right side
     
     snow.endShape(CLOSE);
     
     
     
     
     translate(width/2, height/2);
     
     
     shape(snow, x, y);
     
     stroke(255, 2, 2);
     point(0, 0);
     
     snow.rotate(radians(60));
     
     i++;
     
     if (i>6) { 
     noLoop();
     }*/
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
PImage gift;
int sx;
int sx2;
int gx, gy;
class Sled {
  Sled() {
    gift=loadImage("gift.jpg");
    sled=loadImage("sled2.png");
    dels=loadImage("sled1.png");
    sx=-400;
    sled.resize(360, 140);
    gx=500;
    gy=150;
  }
  void show(PImage key) {
    image(key, sx, 125);
  }
  void reset() {
    sx=-400;
  }
  void move() {
    sx+=3;
    if(sx==400){
       image(gift,gx,gy);
       gy-=1;
    }
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
  void reset() {
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
