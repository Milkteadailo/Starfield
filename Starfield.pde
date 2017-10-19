Particle [] bob= new Particle[30];
void setup()
{
  size (1000, 1000);
  background (255,255,255);
  frameRate(25);
  for (int i = 0; i< bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
  bob [0]= new OddballParticle();
  bob[1]= new JumboParticle();
  }
void draw ()
{
  fill(0);
  rect(0,0,1000,1000);
  for (int i = 0; i <bob.length; i++)
  {
    bob [i].show();
    bob [i].move();
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
    speed= (float) (Math.random()*50);
    angle= (float)(Math.random()*2*PI);
  }
  public void move()
  {
    myX+=(Math.sin(angle)*7*PI);
    myY+=(Math.cos(angle)*7*PI);
    angle=angle+0.1;
  }
  public void show()
  {
    //Mercury
    fill (211,211,211);
    ellipse ((float)myX, (float)myY-200, 10, 10);
    //Venus
    fill (218,165,32);
    ellipse((float)myX,(float)myY-150 , 10, 10);
    //Earth
    fill (50,205,50);
    ellipse((float)myX,(float)myY-100 , 20, 20);
    //Mars
    fill (255,69,0);
    ellipse ((float)myX, (float)myY-50, 20, 20);
    //Jupiter
    fill(210,105,30);
    ellipse((float)myX,(float)myY , 30, 30);
    //Saturn
    fill(255,228,181);
    ellipse ((float)myX, (float)myY+50, 25, 25);
    //Uranus
    fill (135,206,250);
    ellipse((float)myX,(float)myY+100 , 25, 25);
    //Neptune
    fill(65,105,225);
    ellipse ((float)myX, (float)myY+150, 20, 20);
    //Pluto
    fill(25,25,112);
    ellipse((float)myX,(float)myY-250 , 5, 5);
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
    fill(255,255,0);
    rect(random(width),random(height),20,20);
  }
}
class JumboParticle extends NormalParticle
{

  public void show()
  {
  
    fill(255,0,0);
    ellipse((float)myX-250, (float)myY-100, 60, 60);
    ellipse((float)myX+150, (float)myY-100, 60, 60);
    fill(255,255,0);
    ellipse(500,500,50,50);
  }
}
