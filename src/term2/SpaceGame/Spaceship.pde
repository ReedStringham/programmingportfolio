class Spaceship {
  // Member variables
  int x, y, w, laserCount, turretCount, health;

  // Constructor
  Spaceship() {
    x = width/2;
    y = height/2;
    w = 100;
    laserCount = 25;
    turretCount = 1;
    health = 100;
  }

  // Member Methods
  void display() {
    fill(166, 165, 162);
    strokeWeight(3);
    rect(x+10, y+20, 15, 20);
    rect(x-25, y+20, 15, 20);
    stroke(80);
    fill(240, 112, 84);
    // wing
    strokeWeight(2);
    triangle(x, y-30, x+60, y+30, x-60, y+30);
    fill(137, 197, 250);
    // center
    strokeWeight(2);
    triangle(x, y-13, x-7.5, y, x+7.5, y);
    // blaster
    strokeWeight(3);
    line(x+30, y-30, x+30, y+10);
    line(x-30, y-30, x-30, y+10);
    // front
    strokeWeight(2);
    fill(252, 149, 126);
    triangle(x, y-50, x+13, y-17, x-13, y-17);
  }

  void move(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }

  boolean fire() {
    if (laserCount > 0) {
      return true;
    } else {
      return false;
    }
  }

  boolean intersect(Rock r) {
    float d = dist(x, y, r.x, r.y);
    if (d<50) {
      return true;
    } else {
      return false;
    }
  }
}
