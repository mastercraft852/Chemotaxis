Bacteria [] colony;
void setup()   
{     
  background(255);
  size(400,400);
  colony = new Bacteria[(int)(Math.random()*20)+5];
  for(int i=0;i<colony.length;i++)
  {
    colony[i]=new Bacteria();
  }
}   
void draw()   
{    
  for(int i=0;i<colony.length;i++)
  {
    colony[i].erase();
    colony[i].walk();
    colony[i].show();
  }
}  
class Bacteria    
{
  int startx;
  int starty;
  int endx;
  int endy;
  int bColor;
	Bacteria()
  {
    startx=(int)(Math.random()*401);
    starty=(int)(Math.random()*401);
    fill(bColor);
  }
  void walk()
  {
    endx = startx +(int)(Math.random()*5)-2;
    endy = starty+(int)(Math.random()*5)-2; 
  }
  void show()
  {
    bColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    fill(bColor);
    stroke(bColor);
    // line(startx,starty,endx,endy);
    ellipse(endx,endy,10,10);
    startx=endx;
    starty=endy;
  }
  void erase()
  {
    fill(255);
    stroke(255);
    ellipse(endx,endy,10,10);
  }
}
