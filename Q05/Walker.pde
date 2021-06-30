class Ball
{
  PVector location;
  PVector velocity;
  
  Ball()
  {
  location = new PVector(width/2,height/2);
  velocity = new PVector(2.5,-2);
  }
  void moveandbounce()
  {
   location.add(velocity);
   
   if ((location.x > width) || (location.x < 0))
   {
   velocity.x = velocity.x * -1;
   fill(random(0,255),random(0,255),random(0,255),random(50,100));
   }
    if ((location.y > height) || (location.y < 0))
   {
   velocity.y = velocity.y * -1;
   fill(random(0,255),random(0,255),random(0,255));
   }
  }
  void display()
  {
  stroke(0);
  strokeWeight(2);
  ellipse(location.x, location.y, 48, 48);
  } 
}
