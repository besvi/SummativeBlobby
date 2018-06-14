float b;
float c;
float d;
float p;
Blobby blob = new Blobby();
Blobby blob2 = new Blobby();
class Blobby {
  float radius;
  float yoff = 0.0;
  float xoff = 0;
  void heck() {
    translate(width/2, height/2);
    radius = p;
    beginShape();
    for (float a = 0; a < TWO_PI; a+= 0.01) {
      float offset = map(noise(xoff, yoff), 0, 1, -25, 25);
      float r = radius + offset;
      float x = r * cos(a);
      float y = r * sin(a);
      vertex(x, y);
      xoff += 0.1;
      fill(b, c, d);
    }
    endShape();
    yoff += 0.1;
  }
}
void setup() {

  size(300, 300);
}
void draw() {
  background(0);

  blob.heck();
blob2.heck();

}
void mouseClicked() {
  p = random(25, 150);
  b = random(255);
  c = random(255);
  d = random(255);
}
void keyPressed(){

}
