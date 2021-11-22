// Global variables
float buttonX, buttonY, buttonWidth, buttonHeight, titleX, titleY, titleWidth, titleHeight ;
color buttonColour, blue=#023DB9, purple=#A223E8, white=#FFFFFF, reset=white;
String title ="Button";
PFont titleFont ;
color black=#0F0F0F;

  void setup() {
  fullScreen();
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*2/4;
  buttonHeight = displayHeight*1/3;
  titleFont = createFont("Harrington", 55);
  
  titleX = displayWidth*1/4; 
 titleY = displayHeight*1/3;
 titleWidth = displayWidth*2/4;
 titleHeight = displayHeight*1/3;
}//end setup()

void draw() {
  background(white);
  println(mouseX, mouseY);
 
 if(mouseX >=  buttonX  &&  mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight)
  {
    buttonColour = blue;
  } else {
    buttonColour = purple;
  }// end If button
 
    fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(reset);
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(titleFont, 90);
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(white);
    
}//end draw()

void mousePressed() {
  if ( mouseX >=  buttonX  &&  mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight) exit ();
}// end mousePressed()

void keyPressed() {
}// keyPressed()
