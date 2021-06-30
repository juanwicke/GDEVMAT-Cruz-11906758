void setup()
{
size(1280, 720, P3D);
noStroke();

}

void draw()
{

  float gaussian = randomGaussian();
  float y = random(height);
  float standardDeviation = 1000;
  float mean = 0;
  float x = standardDeviation * gaussian + mean + y;
  
  float sizeGaussians = randomGaussian();
  float sizeMean = 0;
  float sizeStandardDeviation = 100;
  float size = sizeStandardDeviation * sizeGaussians + sizeMean;
  
  fill(random(0,255),random(0,255),random(0,255),random(10,100));
   
  circle(x, y, size);
  
}
