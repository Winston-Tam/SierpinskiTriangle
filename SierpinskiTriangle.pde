public void setup()
{
size(800,800);
 background(255);
}
public void draw()
{
}
public void mouseDragged()
{
  sierpinski((int)(Math.random()800),(int)(Math.random()800),(int)(Math.random()255));

}


void mousePressed() {
  if (mouseButton == LEFT) {
   sierpinski((int)(Math.random()800),(int)(Math.random()800),(int)(Math.random()255));
  } else if (mouseButton == RIGHT) {
    background(255);
  }
}
public void sierpinski(int x, int y, int len) 
{

  if(len <= 20) {
   fill((int)(Math.random()255),(int)(Math.random()255),(int)(Math.random()*255));
   triangle(x,y,x+len,y,x+len/2,y-len); 

  }

  else{
   sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);


  }

}
