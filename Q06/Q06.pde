void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x,y);
}

void draw()
{
  background(130);

  float a = 75;
  float b = -75;

  PVector laser = mousePos();
  PVector laser2 = mousePos();
  PVector handle = mousePos();
  PVector handle2 = mousePos();
  PVector handle3 = mousePos();

  laser.normalize().mult(-300);
  strokeWeight(20);
  stroke(235, 33, 46);
  line(0, 0, (laser.x), (laser.y));
  strokeWeight(10);
  stroke(250);
  line(0, 0, laser.x, laser.y);

  laser2.normalize().mult(300);
  strokeWeight(20);
  stroke(235, 33, 46);
  line(0, 0, (laser2.x), (laser2.y));
  strokeWeight(10);
  stroke(250);
  line(0, 0, laser2.x, laser2.y);

  handle.normalize().mult(45);
  strokeWeight(20);
  stroke(36, 36, 36);
  line(0, 0, (handle.x), (handle.y));

  handle2.normalize().mult(-75);
  strokeWeight(8);
  stroke(36, 36, 36);
  ellipse(0, 0, a, b);
  fill(130);
  
  handle3.normalize().mult(-45);
  strokeWeight(20);
  stroke(36, 36, 36);
  line(0, 0, (handle3.x), (handle3.y));

  println(laser.mag());
}
