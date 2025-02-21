public void setup()
{
	background(255);
	size(600,600);
}
public void draw()
{
	noLoop();
	sierpinski(150,400,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 25){
		triangle(x,y,x+len/2,y-len,x+len,y);
	}else{
		fill((float)Math.random()*225,(float)Math.random()*225,(float)Math.random()*225);
		sierpinski(x,y,len/2);
		fill((float)Math.random()*225,(float)Math.random()*225,(float)Math.random()*225);
		sierpinski(x+len/2,y,len/2);
		fill((float)Math.random()*225,(float)Math.random()*225,(float)Math.random()*225);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}
