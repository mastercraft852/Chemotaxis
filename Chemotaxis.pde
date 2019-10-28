Bacteria [] colony;
void setup()   
{     
  background(255);
  size(1000,1000);
  colony = new Bacteria[(int)(Math.random()*20)+5];
  for(int i=0;i<colony.length;i++)
  {
    colony[i]=new Bacteria();
  }
}   
void draw()   
{   
  background(255);
  for(int i=0;i<colony.length;i++)
  {
    //colony[i].erase();
    colony[i].walk();
    colony[i].show();
  }
}  
void mousePressed()
{ 
  colony = new Bacteria[(int)(Math.random()*100)+5];
  for(int i=0;i<colony.length;i++)
  {
    colony[i]=new Bacteria();
  }
}
class Bacteria    
{
  int startx, starty, endx, endy, bColor;
	Bacteria()
  {
    startx=(int)(Math.random()*(width+1));
    starty=(int)(Math.random()*(width+1));
    fill(bColor);
  }
  void walk()
  {
    endx = startx+(int)(Math.random()*5)-2;
    endy = starty+(int)(Math.random()*5)-2; 
  }
  void show()
  {
    bColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    fill(bColor);
    stroke(bColor);
    ellipse(endx,endy,10,10);
    startx=endx;
    starty=endy;
  }
  //void erase()
  //{
  //  fill(255);
  //  stroke(255);
  //  ellipse(endx,endy,10,10);
  //}
}
