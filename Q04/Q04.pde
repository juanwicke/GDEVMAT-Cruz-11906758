void setup()
{
  size (1280, 720, P3D);
  background(255);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker perlinWalker = new Walker();
  float a;
  float b;
  float c;
  float d;
  
  float ta = 0.0f, tb = 100.0f, tc = 150.0f, td=250.0f;
  
void draw()
{
  {
    ta += 0.1f;
    tb += 0.1f;
    tc += 0.1f;
    td += 0.1f;
    fill(map(noise(ta), 0.0f, 1.0f, 0.0f, 255.0f), map(noise(tb), 0.0f, 1.0f, 0.0f, 255.0f), 
        map(noise(tc), 0.0, 1.0f, 0.0f, 255.0f), 
        255.0f);
    perlinWalker.draw();
    perlinWalker.perlinWalk();
     noStroke();
  }
}
