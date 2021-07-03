class Walker
{
  
  float gaussian = randomGaussian();
  float standardDeviation = 1000;
  float mean = 0;
  float y = random(-Window.windowHeight / 2, Window.windowHeight / 2 );
  float x = standardDeviation * gaussian + mean + y;
  PVector circles = new PVector(x, y);
  float size = random(10,50);
  
  void suction()
  { 
  PVector Direction = PVector.sub(blackhole, circles);
  
  circles.add(Direction.normalize().mult(5));
    
    
  }
  
  void display()
  {
    noStroke();
    fill(random(0,255),random(0,255),random(0,255),random(10,100));
    circle(circles.x, circles.y, size);
  }
  
}
