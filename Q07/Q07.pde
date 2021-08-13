Walker myWalker;
Walker[] Walker = new Walker[100];
void setup()
{
  size (1280, 720, P3D);
  for (int i = 0; i < Walker.length; i++)
  {
    Walker[i] = new Walker();
  }
  
  myWalker = new Walker();
  
}

void draw()
{
 
  background(255);
  myWalker.update();
  myWalker.edges();
  myWalker.display();
  
  for (int i = 0; i < Walker.length; i++)
  {
    Walker[i].update();
    Walker[i].edges();
    Walker[i].display();
  }
}
