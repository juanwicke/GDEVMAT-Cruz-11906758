
Mover[] movers = new Mover[10];


Liquid liquid;

void setup() {
  size(1280, 720);
  reset();

  liquid = new Liquid(0, height/2, width, height/2, 0.1);
}

void draw() {
  background(80);


  liquid.display();

  for (Mover mover : movers) {


    if (liquid.contains(mover)) {

      PVector drag = liquid.drag(mover);

      mover.applyForce(drag);
    }

    PVector gravity = new PVector(0, 0.15f*mover.mass);
    mover.applyForce(gravity);
    mover.update();
    mover.display();
    mover.checkEdges();
  }

  fill(255);
}



void reset() {
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(1, 7), 30+i*150, 5);
    movers[i].mass = 10 - i;
  }
}
