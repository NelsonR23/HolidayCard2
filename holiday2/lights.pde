float r,g,b;
class Light{
  Light(){
    r=(int)(Math.random()*255);
    g=(int)(Math.random()*255);
    b=(int)(Math.random()*255);
  }
  void show(int lx,int ly,int ls){
    ellipse(lx,ly,ls,ls);
  }
  void flash(){
    r=(int)(Math.random()*255);
    g=(int)(Math.random()*255);
    b=(int)(Math.random()*255);
  }
}
