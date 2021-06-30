float x;

void setup()
{
size(1280, 720, P3D);
camera(0, 0, -(height/2.0) /tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);


}

void draw()
{
   background(0); 


drawCartesianPlane();
drawQuadraticFunction();
drawLinearFunction();
sineWave();


}

void drawCartesianPlane()
{
  strokeWeight(1);
  color white = color(255, 255, 255);
  fill (white);
  stroke (white);
  line (300, 0, -300, 0);
  line (0, -300, 0, 300);
  
  for (int i = -300; i <= 300; i += 10)
  {
    line(i, -5, i, 5);
    line(-5, i, 5, i);
  }
}

void drawQuadraticFunction()
{
  color yellow = color (255, 255, 0);
  fill (yellow);
  stroke (yellow);
  
  for (float x = -300; x <= 300; x+=0.1f)
  {
     circle(x, ((float)Math.pow(x, 2) - (x * 15) -3), 5);
  }
}
void drawLinearFunction()
{
  color purple = color (128, 0, 128);
  fill (purple);
  noStroke ();
  
  for (float x = -300; x <= 300; x+=0.1f)
  {
     circle(x,(x * -5) +30, 5);
  }
}

void sineWave()
{
  color blue = color(0, 0, 255);
  fill (blue);
  stroke (blue);
  
 for (float x = -300; x <= 300; x+=0.1f)
  { 
  strokeWeight(5);
  point(x,1+60*sin(x/20));
  x=x+1;
  }
  
}
