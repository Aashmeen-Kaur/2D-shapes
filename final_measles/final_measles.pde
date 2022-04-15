//Global Variables
float faceSquareX, faceSquareY, faceSquareSide;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter, eye2Diameter;
float flowerX, flowerY;
float noseX, noseY, noseWidth, noseHeight;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color red = #F01313, white = #FFFFFF, yellow = #FAFF51, black = #000000, darkRed = #c40000, green = #79B097, purple = #7d22bf, pink = #FF00B3, lightred = #FD6262;
color buttonColour, measlesColor = red; 
float measlesDiameter, measlesBoxX, measlesBoxY, measlesX, measlesY, measlesX2, measlesY2, measles2X, measles2Y, measles2X2, measles2Y2;
float measles3X, measles3Y, measles3X2, measles3Y2, measles4X, measles4Y, measles4X2, measles4Y2, measles5X, measles5Y;
int buttonX, buttonY, buttonWidth, buttonHeight, button2X, button2Y, button3X, button3Y;
float imageX, imageY, imageWidth, imageHeight;
PImage pic;
PImage nosePic;
Boolean measlesOn=false, eyesOn=false;
int titleX, titleY, titleWidth, titleHeight;
//
void setup() {
  fullScreen(); 
  //displayWidth & displayHeight //General Geometry: landscape, potrait, or square
  populatingVariables();
  title();
  faceShape();
}//End setup
//
void draw() {
  //measlesBox(); //code to spawn measles inside the square
  button1();
  button1text();
  button2();
  button2text();
  button3();
  button3text();
  measles();
  facialFeatures();
  reset();
  flower();
}//End draw
//
void keyPressed() {
  if (key == 'q' || key == 'Q') exit();
}//End keyPressed
//
void mousePressed() {
  eyesOn = false;
  measlesOn = false;
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight) measlesOn = true;
  if ( mouseX>button2X && mouseX<button2X+buttonWidth && mouseY>button2Y && mouseY<button2Y+buttonHeight) measlesOn = false;
  if ( mouseX>button3X && mouseX<button3X+buttonWidth && mouseY>button3Y && mouseY<button3Y+buttonHeight) exit();
}//End mousePressed
