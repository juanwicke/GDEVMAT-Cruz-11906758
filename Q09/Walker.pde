class Walker
{
  PVector location = new PVector(-600,0);
  PVector velocity = new PVector();
  PVector acceleration = new PVector();
  
  float mew = initialMew;
  float normal = 1;
  float FrictionMagnitude = mew * normal;
  float velocityLimit = 15;
  float scale;
  float mass;
  
  
  Walker(int index)
  {
    mass = 10 - index;
    scale = mass* 8;
     location.y = (Window.top - ((Window.windowHeight / 8) * (index + 1))) + ((Window.windowHeight / 8) / 2);
  }
  
  public void applyForce(PVector force)
  {
    PVector f = PVector.div(force, this.mass);
    this.acceleration.add(f); 
  }
  
  public void update()
  {
    float normal = 1;
    float FrictionMagnitude = this.mew * normal;
    PVector friction = this.velocity.copy();
    
    friction.mult(-1);
    friction.normalize();
    friction.mult(FrictionMagnitude);
    this.applyForce(friction);
    
    this.velocity.add(acceleration); 
    this.location.add(velocity);
    this.velocity.limit(velocityLimit);
    this.acceleration.mult(0);
    
    Midpoint();
  }
  
  void render()
  {
    noStroke();
    fill(random(0,255),random(0,255),random(0,255),random(10,100));
    circle(location.x, location.y, scale);
  }
  
  
  void Midpoint()
  {
    if(this.location.x + this.scale / 2 > 0)
    {
      this.mew = MidPoint;
    }
  
  }
  
}
