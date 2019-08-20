// Angle of rotation around sun and planets
float theta = 0;
PImage bg;
int y;

void setup() {
  size(600 , 499);
  bg = loadImage("moonwalk.jpg");
}

void draw() {
  //background(255);
  background(bg);
  

  
  
  
  
  stroke(0);

  // Translate to center of window to draw the sun.
  translate(width/2, height/2);
  fill(255, 200, 50);
  ellipse(0, 0, 120, 120);

  // The earth rotates around the sun
  pushMatrix();
  rotate(theta);
  translate(120, 0);
  fill(50, 200, 255);
  ellipse(0, 0, 32, 32);

  // Moon #1 rotates around the earth
  // pushMatrix() is called to save the transformation state before drawing moon #1. 
  // This way we can pop and return to earth before drawing moon #2. 
  // Both moons rotate around the earth (which itself is rotating around the sun).
  pushMatrix(); 
  rotate(-theta*4);
  translate(36, 0);
  fill(50, 255, 200);
  ellipse(0, 0, 12, 12);
  popMatrix();
  popMatrix();

  theta += 0.01;
}
