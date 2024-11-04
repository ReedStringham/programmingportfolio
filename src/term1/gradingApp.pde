// Reed | Grades App | 13 Sep 2024
float grade;

void setup() {
  size(400, 150);
  background(200);
}

void draw() {
  background(200);

  //Title Info
  textAlign(CENTER);
  fill(0);
  textSize(35);
  text("Grades by Reed", width/2, 40);

  // Reference Line
  stroke(10, 10, 127);
  strokeWeight(2);
  line(0, 100, width, 100);

  // Tic marks
  line(200, 95, 200, 105);
  for (int i=0; i<width; i=i+50) {
    line(i, 95, i, 105);
    textSize(9);
    text((float)i/width*4, i, 95);
  }

  // Marker
  ellipse(mouseX, 100, 8, 8);
  textSize(10);
  text((float)mouseX/width*4, mouseX, 90);

  assignGrade((float)mouseX/width*4);
}

void assignGrade(float tgrade) {
  if (tgrade >= 3.51) {
    text("Assign letter grade A.",width/2,135);
  } else if (tgrade >= 3.0) {
    text ("Assign letter grade A-.",width/2,135);
  } else if (tgrade >= 2.84) {
    text ("Assign letter grade B+.",width/2,135);
  } else if (tgrade >= 2.67) {
    text ("Assign letter grade B.",width/2,135);
  } else if (tgrade >= 2.5) {
    text ("Assign letter grade B-.",width/2,135);
  } else if (tgrade >= 2.34) {
    text ("Assign letter grade C+.",width/2,135);
  } else if (tgrade >= 2.17) {
    text ("Assign letter grade C.",width/2,135);
  } else if (tgrade >= 2.0) {
    text ("Assign letter grade C-.",width/2,135);
  } else if (tgrade >= 1.66) {
    text ("Assign letter grade D+.",width/2,135);
  } else if (tgrade >= 1.33) {
    text ("Assign letter grade D.",width/2,135);
  } else if (tgrade >= 1.0) {
    text ("Assign letter grade D-.",width/2,135);
  } else { // the catch all
    text ("Assign letter grade F.",width/2,135);
  }
  // Create a method to use in an app to display letter grade based on the
  // position of mouseX on a line.
}
