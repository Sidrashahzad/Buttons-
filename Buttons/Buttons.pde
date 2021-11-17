// Global variables
float buttonX, buttonY, buttonWidth, buttonHeight ;
color buttonColour, blue=#023DB9, purple=#4402B9, white=#FFFFFF, reset=white;

  void setup() {
  fullScreen();
  buttonX = displayWidth*1/3;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/3;
  buttonHeight = displayHeight*1/3;
}//end setup()

void draw() {
  background(white);
  println(mouseX, mouseY);
  if( mouseX >=  buttonX  &&  mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight)
  {
    buttonColour = purple;
  } else {
    buttonColour = blue;
  }// end If button
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(reset);
}//end draw()

void mousePressed() {
  if ( mouseX >=  buttonX  &&  mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight) exit ();
}// end mousePressed()

void keyPressed() {
}// keyPressed()
