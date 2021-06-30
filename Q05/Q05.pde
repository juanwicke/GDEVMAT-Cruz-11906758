Ball b;

void setup()
{
  size (1280, 720);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  b = new Ball();
}


void draw()
{
  background(255);
  b.moveandbounce();
  b.display();
  

}
