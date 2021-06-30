class Walker
{
  float x;
  float y;
  
  void render()
  {
    circle(x,y, 30);
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
    
    if (rng == 0)
    {
      y+=5;
    }
    else if (rng == 1)
    {
      y-=5;
    }
    else if (rng == 2)
    {
      x+=5;
    }
    else if (rng == 3)
    {
      x-=5;
    }
    else if (rng == 4)
    {
      y+=5;
      x+=5;
    }
    else if (rng == 5)
    {
      y-=5;
      x-=5;
    }
    else if (rng == 6)
    {
      y+=5;
      x-=5;
    }
     else if (rng == 7)
    {
      y-=5;
      x+=5;
    }
  }   
    void randomWalkBiased()
  {
    int rng = int(random(4));
    
    if (rng <= 1)
    {
      y+=5;
    }
    else if (rng == 2)
    {
      y-=5;
    }
    else if (rng == 3)
    {
      x+=5;
    }
    else if (rng == 4)
    {
      x-=5;
    }
  }
}
