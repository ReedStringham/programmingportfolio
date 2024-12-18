// Reed | Temp Converter | 23 Sept 2024

void setup() {
  size(400, 200);
}

void draw() {
  background(128);
  line(0, 150, width, 150);
  for (int i=0; i<width; i=i+50) {
    line(i, 145, i, 155);
    textAlign(CENTER);
    text(i, i, 165);
  }

  text("Cel: " + farToCel(mouseX), width/2, 100);
  println("MouseX:" + mouseX + " : " + farToCel(mouseX));
}

float farToCel(float tempFar) {
  // formula to calc cel conv
  tempFar = (tempFar-32) * (5.0/9.0);
  return tempFar;
}
