void flower() {
int numLobes = 13;
float radAnchor = 50;
float radControl = 150; 
float centerX = width/1.45;
float centerY = height/6;
beginShape();
fill(pink);
for (int i = 0; i < numLobes; i++) {
  float a = map(i, 0, numLobes, 0, TWO_PI);
  float a1 = map(i + 1, 0, numLobes, 0, TWO_PI);
  float cx0 = centerX + radControl * cos(a);
  float cy0 = centerY + radControl * sin(a);
  float cx1 = centerX + radControl * cos(a1);
  float cy1 = centerY + radControl * sin(a1);
  float x0 = centerX + radAnchor * cos(a); 
  float y0 = centerY + radAnchor * sin(a);
  float x1 = centerX + radAnchor * cos(a1); 
  float y1 = centerY + radAnchor * sin(a1);    
  vertex(x0, y0);
  bezierVertex(cx0, cy0, cx1, cy1, x1, y1);
}
endShape();

  fill(yellow);
  ellipse(flowerX, flowerY, eye2Diameter, eye2Diameter);
}
  
