void populatingVariables() {
  titleX = width*1/40;
  titleY = height*1/20;
  titleWidth = width*3/5;
  titleHeight = height*1/10;
  //
  faceSquareX = width*1/2-height*1/2;
  faceSquareY = height*0;
  faceSquareSide = height;
  //
  faceX = width/2;
  faceY = height/2;
  faceDiameter = height; 
  //
  flowerX = width*4.15/6;
  flowerY = height*1/6;
  //
  leftEyeX = width*2/5;
  leftEyeY = height*2/5;
  rightEyeX = width*3/5;
  rightEyeY = leftEyeY;
  eyeDiameter = height/7;
  eye2Diameter = height/12;
  //
  nosePic = loadImage ("nose.png"); //Dimensions: 300 Width, 200 Height
  float noseWidthRatio = 250.0/300.0; 
  float noseHeightRatio = 250.0/300.0;
  noseX = width*10/28;
  noseY = height*4/10.5;
  noseWidth = (width*noseWidthRatio)/3;
  noseHeight = (height*noseHeightRatio)/3;
  
  //
  pic = loadImage ("image.png"); //Dimensions: 3001 Width, 2068 Height
  float imageWidthRatio = 3001.0/3001.0; 
  float imageHeightRatio = 2068.0/3001.0;
  imageX = width*10/30;
  imageY = height*3/5;
  imageWidth = (width*imageWidthRatio)/3;
  imageHeight = (height*imageHeightRatio)/3;
  /*
  mouthX1 = leftEyeX;
   mouthY1 = height*3/4;
   mouthX2 = rightEyeX;
   mouthY2 = mouthY1;
   mouthThick = 25;
   */
  //
  buttonX = width*1/40;
  buttonY = height*1/5;
  button2X = buttonX;
  button2Y = height*7/20;
  button3X = buttonX;
  button3Y = height*1/2;
  buttonWidth = height*1/4;
  buttonHeight = height*1/10;
} //End populatingVariables()
