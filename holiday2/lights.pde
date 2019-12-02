float r, g, b;

class Light {
  Light() {
  }
  void show(int lx, int ly, int ls) {
    r=(int)(Math.random()*255);
g=(int)(Math.random()*255);
b=(int)(Math.random()*255);
frameRate(30);
fill(r,g,b);
    ellipse(lx, ly, ls, ls);
  }
  void flash() {
    r=(int)(Math.random()*255);
    g=(int)(Math.random()*255);
    b=(int)(Math.random()*255);
  }
}
