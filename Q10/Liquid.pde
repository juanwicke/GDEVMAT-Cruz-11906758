class Liquid {


  float x, y, w, h;
  float c;

  Liquid(float x2, float y2, float w2, float h2, float c2)
  {
    x = x2;
    y = y2;
    w = w2;
    h = h2;
    c = c2;
  }

  boolean contains(Mover m) {
    PVector l = m.position;
    if (l.x > x && l.x < x + w && l.y > y && l.y < y + h) {
      return true;
    } else {
      return false;
    }
  }

  PVector drag(Mover m) {
    float speed = m.velocity.mag();
    float dragMagnitude = c * speed * speed;
    PVector drag = m.velocity.copy();
    drag.mult(-1);
    drag.setMag(dragMagnitude);
    return drag;
  }

  void display() {
    noStroke();
    fill(28, 120 , 186);
    rect(x, y, w, h);
  }
}
