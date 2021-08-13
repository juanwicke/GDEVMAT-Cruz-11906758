Walker[] walker = new Walker[8];
float MidPoint = 0.4f;
float initialMew = 0.01f;

void setup()
{
  size (1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  reset();
}

void draw()
{
 
  background(80);
  
  for (Walker w: walker)
  {
    
    PVector acceleration = new PVector(0.2,0);
  
    w.render();
    w.update();
    w.applyForce(acceleration);
  }
  
  stroke(255);
  strokeWeight(2);
  line(0, Window.top, 0, Window.bottom);
  

}

void reset()
{
   for (int i = 0; i < walker.length; i++)
   {
    walker[i] = new Walker(i);
   }
}
