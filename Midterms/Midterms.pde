PVector blackhole = new PVector();


Walker[] circles = new Walker[150];
Walker spawn = new Walker();

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < circles.length; i++)
  {
    circles[i] = new Walker();
  }
  
  blackhole.x = random( -640, 640);
  blackhole.y = random(-360, 360);
}

void draw()
{
    background(0);
 
   for (int i = 0; i < circles.length; i++)
  {
   circles[i].suction();
   circles[i].display();
  }
  
  fill(255);
  circle(blackhole.x, blackhole.y, 50);
  
   if (frameCount > 560)
  {
    clear();
    frameCount = 0;
    setup();
  }
}
