int startX = 250;
int startY = 0;

int endX, endY;

void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  drawScene();
  drawEnemy();
  lightning();
  
  textSize(18);
  text("Click on the screen to cast lightning", 100, 450);
  
  //draws a line
  fill(100);
  noStroke();
  strokeWeight(1);
  rect(0, 0, 500, 50);
}

void mouseClicked() {
  redraw();
}

void drawScene() {
  //for the floor
  noStroke();
  fill(0, 255, 0);
  rect(0, 300, 500, 200);
  
  //for the sky
  fill(122, 122, 225);
  rect(0, 0, 500, 300);
}

void drawEnemy(){
  //no more husky enemy
  strokeWeight(1);
  
  //code for enemy's body
  stroke(0);
  fill(122);
  rect(200, 250, 100, 100);
  
  //code for enemy's head
  beginShape();
  vertex(200, 250);
  vertex(200, 180);
  vertex(250, 150);
  vertex(300, 180);
  vertex(300, 250);
  endShape(CLOSE);
  
  fill(0);
  rect(220, 185, 60, 10);
  rect(245, 185, 10, 40);
  
  //code for enemy's shield
  fill(122);
  
  int x = 150;
  int y = 225;
  beginShape();
  vertex(0 + x, 0 + y);
  vertex(100 + x, 0 + y);
  vertex(100 + x, 80 + y);
  vertex(50 + x, 100 + y);
  vertex(0 + x, 80 + y);
  endShape(CLOSE);
  
  //code for enemy's sword handle
  fill(#BC5200);
  beginShape();
  vertex(300, 255);
  vertex(330, 255);
  vertex(330, 240);
  vertex(340, 240);
  vertex(340, 280);
  vertex(330, 280);
  vertex(330, 265);
  vertex(300, 265);
  endShape(CLOSE);
  
  //code for enemy's sword blade
  fill(122);
  beginShape();
  vertex(340, 250);
  vertex(450, 250);
  vertex(430, 270);
  vertex(340, 270);
  endShape(CLOSE);
  
  fill(0);
  rect(340, 260, 100, 1);
}

void lightning(){
  //resets function entirely
  startX = 250;
  startY = 0;
  endX = 0;
  endY = 0;
  
  while(endY <= 400){
    //increses end
    endY = startY + 50;
    endX = startX + ((int)(Math.random() * 101) - 50);
    
    //draws randome segment
    strokeWeight(10);
    stroke(255, 255, 0);
    line(startX, startY, endX, endY);
    
    //restarts
    startX = endX;
    startY = endY;
  }
}
