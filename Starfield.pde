Particle [] cow= new Particle[30];
void setup()
{
  size (500, 500);
  background (0.6);
  frameRate(20);
  for (int i = 0; i< cow.length; i++)
  {
    cow[i] = new NormalParticle();
  }
  cow [0]= new OddballParticle();
  cow [1]= new JumboParticle();
  }
void draw ()
{
  fill(0,0,0,20);
  rect(0,0,800,800);
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
    myX=250;
    myY=250;
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
    int a = (int)(Math.random()*255);
    int r = (int)(Math.random()*255);
    int t = (int)(Math.random()*255);
    fill (a, r, t);
    ellipse ((float)myX, (float)myY, 10, 10);
  }
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

