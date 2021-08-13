public class Walker
{
  PVector location = new PVector(-500,200);
  PVector velocity = new PVector();
  PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale = 15;
  
  float mass;
  
  public Walker()
  {
  }
  
  public void applyForce(PVector force)
  {
    PVector f = PVector.div(force, this.mass);
    this.acceleration.add(f); 
  }
  
  public void update()
  {
    this.velocity.add(this.acceleration); 
    this.location.add(this.velocity);
    this.velocity.limit(velocityLimit);
    this.acceleration.mult(0);
  }
  
  public void render()
  {
    fill(random(0,255),random(0,255),random(0,255),random(10,100));
    circle(location.x, location.y, mass*15);
  }
  
  void edges() 
  {

    if (location.x > width) {
      location.x = 0;
    } 
    else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } 
    else if (location.y < 0) {
      location.y = height;
    }
  }

    void display() 
  {
    stroke(0);
    strokeWeight(2);
    fill(255);
  }
  
}
