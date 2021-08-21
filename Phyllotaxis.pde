ArrayList<PVector> points = new ArrayList<PVector>();
float n = 0;
float c = 2;
float startingAngle = 137.5;

void setup() {
  size(800, 800);
  colorMode(HSB);
}

void draw() {
  background(0);

  float angle = degrees(n * startingAngle);
  float radius = c * sqrt(n);

  float x = (float)Math.cos(angle) * radius;
  float y = (float)Math.sin(angle) * radius;

  points.add(new PVector(x, y));

  translate(width/2, height/2);
  scale(3);
  noFill();
  
  float hue = 0;
  for (PVector v : points) {
    noStroke();
    fill(hue++,255,255);
    ellipse(v.x, v.y, 3, 3);
    if (hue>255) {
      hue=0;
    }
  }
  
  n++;
}
