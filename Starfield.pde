Particle [] cow= new Particle[30];
void setup()
{
  size (1000, 1000);
  background (255,255,255);
  frameRate(25);
  for (int i = 0; i< cow.length; i++)
  {
    cow[i] = new NormalParticle();
  }
  cow [0]= new OddballParticle();
 // cow [1]= new JumboParticle();
  }
void draw ()
{
  fill(65,105,225);
  rect(0,0,1000,1000);
  for (int i = 0; i <cow.length; i++)
  {
    cow [i].show();
    cow [i].move();
  }
}
interface Particle
{
  public void show();
  public void move();
}
class NormalParticle implements Particle
{
  float myX, myY, speed, angle;
  NormalParticle()
  {
    myX=500;
    myY=500;
    speed= (float) (Math.random()*30);
    angle= (float)(Math.random()*2*PI);
  }
  public void move()
  {
    myX+=(Math.sin(angle)*5*PI);
    myY+=(Math.cos(angle)*5*PI);
    angle=angle+0.1;
  }
  public void show()
  {
    int a = (int)(Math.random()*1);
    int r = (int)(Math.random()*1);
    int t = (int)(Math.random()*1);
    fill (a, r, t);
    ellipse ((float)myX, (float)myY, 20, 20);
    ellipse((float)myX,(float)myY+50 , 20, 20);
    ellipse((float)myX,(float)myY-50 , 20, 20);
    ellipse ((float)myX, (float)myY+100, 10, 10);
    ellipse((float)myX,(float)myY-100 , 20, 20);
    ellipse ((float)myX, (float)myY+150, 10, 10);
    ellipse((float)myX,(float)myY-150 , 20, 20);
    ellipse ((float)myX, (float)myY-200, 10, 10);
    ellipse((float)myX,(float)myY-250 , 10, 10);
  }
}
class OddballParticle implements Particle
{
    float myX, myY,angle;
  OddballParticle()
{
  myX=width;
  myY=height;

}
  public void move()
  {}
  public void show()
  {
    fill(255,255,255);
    rect(random(width),random(height),10,10);
  }
}
class JumboParticle implements Particle
{
   float myX, myY,angle;
  JumboParticle()
  {
    myX=width;
    myY=height;

  }
  public void move()
  {}
  public void show()
  {
    fill(255, 0, 0);
    ellipse(myX, myY, 50, 50);
  }
}