public class Walker
{
  
  public float a = 0.0f, b = 0.0f;
  public float ta = 0.0f, tb = 10000.0f;
  public float tx = 500.0f;
  public float size = 3.0f;
  
  void draw()
  {
    size = map(noise(tx), 0.0f, 1.0f, 5.0f, 150.0f);
    tx += 0.01f;
    circle(a, b, size);
  }
  
  void perlinWalk()
  {
    a = map(noise(ta), 0, 1, -640, 640);
    b = map(noise(tb), 0, 1, -360, 360);
    ta += 0.01f;
    tb += 0.01f;
  }
}
