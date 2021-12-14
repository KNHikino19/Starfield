ArrayList <Particle> jonathon = new ArrayList <Particle>();
void setup()
{
  size(1000,1000);
  for(int i = 0; i < 1000; i++)
  {
   jonathon.add(new Particle());
   jonathon.set(0, new MikeAndIke());
  }
}
void draw()
{
  background(0);
  for(Particle p: jonathon)
  {
  p.move();
  p.show();
  }
}
class Particle
{
  double myX,myY,myAngle,mySpeed;
  int myColor, size;
  Particle(){
    myX = myY = 500;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*20;
    size = 10;
    myColor = color ((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
    void move()
  {
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }
  void show()
  {
    fill(myColor);
    ellipse((float) myX,(float) myY,(float) size,(float) size);
  }
}

class MikeAndIke extends Particle//inherits from Particle
{
  MikeAndIke()
  {
    myColor=color(66, 237, 106);
    mySpeed = 12;
  }
  void move()
  {
    myX = myX + (int)(Math.random()*mySpeed)-3;
    myY = myY + (int)(Math.random()*mySpeed)-3;
  }
  void show()
  {
   fill(myColor);
beginShape();
vertex((float)myX, (float)myY);
bezierVertex((float)myX-20, (float)myY+10, (float)myX-20, (float)myY+30, (float)myX, (float)myY+50);
bezierVertex((float)myX+20, (float)myY+30, (float)myX+20, (float)myY+10, (float)myX, (float)myY);
endShape();
  }
}
