//Global Variables
int appWidth, appHeight;
//
int reset, smallerGeometryDimension;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float measlesDiameter, measlesBoxX, measlesBoxY, measlesX, measlesY, measlesX2, measlesY2, measles2X, measles2Y, measles2X2, measles2Y2;
float measles3X, measles3Y, measles3X2, measles3Y2, measles4X, measles4Y, measles4X2, measles4Y2, measles5X, measles5Y;
color red = #F01313, white = #FFFFFF, blue = #63B5EA, black = #000000, pink = #F5C1E0, darkPink = #FC82CC, green = #0A6714;
color buttonColour, measlesColor = red; 

 float faceSquareX = width*1/2-height*1/2;
  float faceSquareY = height*0;
  float faceSquareSide = height;
//
void setup()
{
  //Display Geometry
  size(600, 400); //fullScreen(); displayWidth, displayHeight
  //Landscape, square or portrait
  appWidth = width;//Swap with displayWidth, displayHeight for testing
  appHeight = height; 
  println(width, height, displayWidth, displayHeight); //Verification of value
  println(appWidth, appHeight); //Canvas Flexibility
  //
  //Display Orientation
  //Purpose: a few comparisons of IFs to ID orientation (similar to image() aspect ratio)
  //Computer tells us the orientation, important for cell phone orientation
  //-tell user specific orientation
  //if ( appWidth >= appHeight ) {println("Landscape or Square");} else {println("Portrait");}
  String ls="Landscape or Square", p="Portrait", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth >= appHeight ) ? ls : p; //Ternary Operator, repeats IF-ELSE
  println(DO, orientation); //Verification of value
  if ( orientation==p ) println(instruct);
  //With Strings, easier to print to console or canvas
  //
  //Variable Population
  smallerGeometryDimension = appHeight; //user told to turn phun, always landscape or square
  reset = smallerGeometryDimension / smallerGeometryDimension; // returns "1" //default value for reseting parameters
  rectFaceX = appWidth*1/2 - smallerGeometryDimension*1/2;
  rectFaceY = appHeight*0;
  rectFaceWidth = smallerGeometryDimension;
  rectFaceHeight = smallerGeometryDimension;
  faceX = appWidth*1/2;
  faceY = appHeight*1/2;
  faceDiameter = smallerGeometryDimension;
  leftEyeX = appWidth*1/2 - smallerGeometryDimension*1/4.9;
  leftEyeY = appHeight*1/2 - smallerGeometryDimension*1/4;
  rightEyeX = appWidth*1/2 + smallerGeometryDimension*1/4.9;
  rightEyeY = leftEyeY;
  eyeDiameter = smallerGeometryDimension*1/4;
  mouthX1 = leftEyeX;
  mouthY1 = appHeight*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthOpen = smallerGeometryDimension*1/4;
  noseX1 = faceX;
  noseY1 = leftEyeY;
  noseX2 = noseX1 - leftEyeY*1/2;
  noseY2 = faceY;
  noseX3 = noseX1 + leftEyeY*1/2;
  noseY3 = noseY2;
  //
  //Face: Circle, inscribed in a square
  //Center a circle on display orientation (landscape)
  //rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
}//End setup
//
void draw()
{
  //Measle
  float measlesDiameter, measlesBoxX, measlesBoxY, measlesX, measlesY, measlesX2, measlesY2, measles2X, measles2Y, measles2X2, measles2Y2;
float measles3X, measles3Y, measles3X2, measles3Y2, measles4X, measles4Y, measles4X2, measles4Y2, measles5X, measles5Y;
color red = #F01313, white = #FFFFFF, blue = #63B5EA, black = #000000, pink = #F5C1E0, darkPink = #FC82CC, green = #0A6714;
color buttonColour, measlesColor = red; 

 float faceSquareX = width*1/2-height*1/2;
  float faceSquareY = height*0;
  float faceSquareSide = height;

  
 //
 measlesDiameter = random(height*1/30, height*1/15);
    measlesX = random(faceSquareX+height*16/75, faceSquareX+faceSquareSide-height*16/75);
    measlesY = random(faceSquareY+height*9/75, faceSquareY+faceSquareSide-height*9/75);
    measlesX2 = random(faceSquareX+height*9/75, faceSquareX+faceSquareSide-height*9/75);
    measlesY2 = random(faceSquareY+height*16/75, faceSquareY+faceSquareSide-height*16/75);
    //
    fill(measlesColor);
    ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
    ellipse(measlesX2, measlesY2, measlesDiameter, measlesDiameter);
    //
    //
    measlesDiameter = random(height*1/30, height*1/15);
    measles2X = random(faceSquareX+height*21/75, faceSquareX+faceSquareSide-height*21/75);
    measles2Y = random(faceSquareY+height*2/25, faceSquareY+faceSquareSide-height*2/25);
    measles2X2 = random(faceSquareX+height*2/25, faceSquareX+faceSquareSide-height*2/25);
    measles2Y2 = random(faceSquareY+height*21/75, faceSquareY+faceSquareSide-height*21/75);
    //
    fill(measlesColor);
    ellipse(measles2X, measles2Y, measlesDiameter, measlesDiameter);
    ellipse(measles2X2, measles2Y2, measlesDiameter, measlesDiameter);
    //
    //
    measlesDiameter = random(height*1/30, height*1/15);
    measles3X = random(faceSquareX+height*27/75, faceSquareX+faceSquareSide-height*27/75);
    measles3Y = random(faceSquareY+height*4/5, faceSquareY+faceSquareSide-height*1/20);
    measles3X2 = random(faceSquareX+height*27/75, faceSquareX+faceSquareSide-height*27/75);
    measles3Y2 = random(faceSquareY+height*1/20, faceSquareY+faceSquareSide-height*4/5);
    //
    fill(measlesColor);
    ellipse(measles3X, measles3Y, measlesDiameter, measlesDiameter);
    ellipse(measles3X2, measles3Y2, measlesDiameter, measlesDiameter);
    //
    //
    measlesDiameter = random(height*1/30, height*1/15);
    measles4X = random(faceSquareX+height*4/5, faceSquareX+faceSquareSide-height*1/20);
    measles4Y = random(faceSquareY+height*27/75, faceSquareY+faceSquareSide-height*27/75);
    measles4X2 = random(faceSquareX+height*1/20, faceSquareX+faceSquareSide-height*4/5);
    measles4Y2 = random(faceSquareY+height*27/75, faceSquareY+faceSquareSide-height*27/75);
    //
    fill(measlesColor);
    ellipse(measles4X, measles4Y, measlesDiameter, measlesDiameter);
    ellipse(measles4X2, measles4Y2, measlesDiameter, measlesDiameter);
    //
    //
    measlesDiameter = random(height*1/30, height*1/15);
    measles5X = random(faceSquareX+height*12/75, faceSquareX+faceSquareSide-height*12/75);
    measles5Y = random(faceSquareY+height*12/75, faceSquareY+faceSquareSide-height*12/75);  
    //
    fill(measlesColor);
    ellipse(measles5X, measles5Y, measlesDiameter, measlesDiameter);
    fill(white);
    //
    //
    //
    //
    //
    
  //  float measlesDiameter = random(height*1/30, height*1/15);
  //  float measlesX = random(faceSquareX+height*16/75, faceSquareX+faceSquareSide-height*16/75);
  //  float measlesY = random(faceSquareY+height*9/75, faceSquareY+faceSquareSide-height*9/75);
  //  float measlesX2 = random(faceSquareX+height*9/75, faceSquareX+faceSquareSide-height*9/75);
  //  float measlesY2 = random(faceSquareY+height*16/75, faceSquareY+faceSquareSide-height*16/75);
  //float measleDiameter = random ( smallerGeometryDimension*1/100, smallerGeometryDimension*1/25);
  //float measleRadius = measleDiameter*1/2;
  //float measleX = random( rectFaceX+measleRadius, rectFaceX+rectFaceWidth-measleRadius );
  //float measleY = random( appHeight*0+measleRadius, appHeight-measleRadius );
  //Boolean nightMode=false;
  ////color red=#FF0000, measleColour=red;
  //color measleColour = ( nightMode==false ) ? color( 255, random(0, 50), random(120) ) : color( 255, random(0, 50), 0 ); //ternary operator for day:night
  //color whiteReset=#FFFFFF;
  ////
  //float measleRectX = measleX-measleDiameter*1/2;
  //float measleRectY = measleY-measleDiameter*1/2;
  //float measleWidth = measleDiameter;
  //float measleHeight = measleDiameter;
  //rect( measleRectX, measleRectY, measleWidth, measleHeight );
  //random values returned given other variables
  //noStroke();
  //fill(measleColour);
  //ellipse( measleX, measleY, measleDiameter, measleDiameter );
  //stroke(reset); //reset to 1 pixel
  //fill(whiteReset); //reset to first colour (i.e. blackReset)
  //
  //Left Eye
  //rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //
  //Right Eye
  //rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  //
  //Nose
  //rect(noseX2, noseY1, noseX3-noseX2, noseY3-noseY1);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  //
  //Mouth
  //rect();
  int mouthWidth = int ( mouthX2 - mouthX1 ); //length=end-beginning
  int mouthHeight = int ( mouthOpen );
  //rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen);
  line( mouthX1, mouthY1, mouthX2, mouthY2 ); //Notice the END CAPS
  strokeWeight(reset); //reset to 1 pixel
  //comparison rect() line only, no caps, no strokeWeight
  //rect(mouthX1, mouthY1, mouthWidth, mouthHeight); 
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program
