// Reed | Calc Project | 2 Oct 2024
//Button b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10;
Button[] buttons = new Button[10];
String dVal = "0.0";
float l, r, result;
char op;
boolean left;

void setup() {
  size(210, 250);
  background(50);
  l = 0.0;
  r = 0.0;
  result = 0.0;
  op = ' ';
  left = true;
  //buttons[1] = new button(65,200,110,50, color);
  b0 = new Button(30, 225, '.');
  b1 = new Button(30, 185, '0');
  b2 = new Button(30, 145, '1');
  b3 = new Button(30, 105, '4');
  b4 = new Button(30, 65, '7');
  b5 = new Button(70, 185, '2');
  b6 = new Button(70, 145, '5');
  b7 = new Button(70, 105, '8');
  b8 = new Button(70, 65, '3');
  b9 = new Button(110, 125, '6');
  b10 = new Button(110, 85, '9');
}

void draw() {
  background(50);
  for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }


  updateDisplay();
}

void updateDisplay() {
  rectMode(CENTER);
  fill(200);
  rect(width/2, 24.5, 150, 30);
  fill(0);
  if(dVal.length()<12) {
    textSize(40);
  } else if(dVal.length() == 12) {
    textSize(35);
  } else if(dVal.length() == 12) {
    textSize(30);
  } else if(dVal.length() == 12) {
    textSize(25);
  } else if(dVal.length() == 12) {
    textSize(20);
  }
  textAlign(RIGHT);
  text(dVal, width-55, 45);
}

void mousePressed() {
  //println("Left:" + l + " Right:" + r + " Result:" + result + " Op:" + op + "L:" + left);
  for (int i=0; i<buttons.length; i++) {
    if (buttons[i].on == true && dVal.equals("0.0")) {
      dVal = buttons[i].val;
    } else if (buttons[i].on && buttons[i].val.equals("C")) {
      dVal = "0.0";
      l = 0.0;
      r = 0.0;
      result = 0.0;
      op = ' ';
    } else if (buttons[i].on) {
      dVal += buttons[i].val;
    }
  }
}


void mouseReleased() {
  for (int i=0; i<buttons.length; i++) {
    if (buttons[i].on && buttons[i].isNum && left && dVal) {
      dVal = buttons[i].val;
    } else if (buttons[i].on && buttons[i].val.equals("C")) {
      dVal = "0.0";
      l = 0.0;
      r = 0.0;
      result = 0.0;
      op = ' ';
    } else if (buttons[i].on) {
      dVal += buttons[i].val;
    }
  }
}

void keyPressed() {
  println("Key:" + key);
  println("KeyCode:" + keyCode);
  if(key == 0 || keyCode == 96 || keyCode == 48 ) {
    // handleEvent("0", true);
  } else if(key == 1 || keyCode == 49 || keyCode == 97 ) {
    // handleEvent("1", true);
  } else if(key == "+" || keyCode == 107) {
    // handleEvent("+", true);
  }
}

void handleEvent(String keyVal, boolean isNum) {
  if(left && dVal.length() < 20 && isNum) {
    if(dVal.equals("0")) {
      dVal = keyVal;
    } else {
      dVal += keyVal;
    }
    l = float(dVal);
  } else if(!left && dVal.length() < 20 && isNum) {
    if(dVal.equals("0")) {
      dVal = keyVal;
    } else {
      dVal += keyVal;
    }
    r = float(dVal);
  } else if(keyVal.equals("+") && !isNum) {
    
  }
}
