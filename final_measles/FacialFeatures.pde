void facialFeatures() {
  //Left Eye
  fill(green);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  fill(white);
  fill(black);
  ellipse(leftEyeX, leftEyeY, eye2Diameter, eye2Diameter);
  fill(white);
  //Right Eye
  fill(green);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  fill(white);
  fill(black);
  ellipse(rightEyeX, rightEyeY, eye2Diameter, eye2Diameter);
  fill(white);
 
  //Nose
  image(nosePic, noseX, noseY, noseWidth, noseHeight);
  //
  //Mouth
  image(pic, imageX, imageY, imageWidth, imageHeight);
  //strokeCap; //Default ROUND
  /*
  strokeWeight(mouthThick);
   line(mouthX1, mouthY1, mouthX2, mouthY2);
   strokeWeight(1.5);
   */
   
}
