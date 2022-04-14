void facialFeatures() {
  //Left Eye
  fill(purple);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  fill(white);
  fill(black);
  ellipse(leftEyeX, leftEyeY, eye2Diameter, eye2Diameter);
  fill(white);
  //Right Eye
  fill(purple);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  fill(white);
  fill(black);
  ellipse(rightEyeX, rightEyeY, eye2Diameter, eye2Diameter);
  fill(white);
  //
  //Nose
  //triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
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
