/* @pjs preload="c044NldwUlhxUElvQkZ5NEx5TjIrVWJmM1lLU2ZSa0w.jpg" */
PImage img;
float scaleFactor = 1.6;

void setup() {
  img = loadImage("c044NldwUlhxUElvQkZ5NEx5TjIrVWJmM1lLU2ZSa0w.jpg");
  size(int(img.width * scaleFactor), int(img.height * scaleFactor));
  background(0);
  noStroke();
  ellipseMode(CENTER);
}

void draw() {
  for (int i = 0; i < 1000; ++i) {
    int x = int(random(img.width)), y = int(random(img.height));
    color c = img.pixels[y * img.width + x];
    if (red(c) + green(c) + blue(c) <= 240 * 3) {
      fill(c);
      ellipse(x * scaleFactor, y * scaleFactor, 5, 5);
    } else --i;
  }
}

