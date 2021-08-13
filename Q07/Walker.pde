class Walker
{
  PVector location = new PVector(random(width),random(height));
  PVector velocity = new PVector(0,0);
  PVector acceleration = new PVector(0,0);
  
  Walker()
  {

  }
  
  void update()
  {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse,location);
    mouse.sub(location);
    mouse.setMag(0.1);
    acceleration = mouse;
    dir.normalize();
      
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(5);
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

    void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,20,20);
  }
}
