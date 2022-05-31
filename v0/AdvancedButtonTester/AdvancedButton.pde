class AdvancedButton {
 
 // these coordinates define the top left corner of the button
 int _cornerX, _cornerY; 
 
 // define where the rectangular button ends
 int _width, _height;
 
 // defines the color of the button
 color c;
 
 
 // overloaded constructor
 AdvancedButton(int x, int y, int len, int high, color col) {
   _cornerX = x;
   _cornerY = y;
   
   _width = len;
   _height = high;
   
  c = col;
 } // end constructor
 
 
  // executes the buttons function - in this case creates a new instance of floating ball to return
  FloatingBall execute() {
   FloatingBall fb = null;
    if (mousePressed && isInButton()) {
      fb = new FloatingBall(30, (_cornerX + _width/2), (_cornerY + _height/2), color(255,100,150),this);
    }
    return fb;
  }
 
 
 
 // visually displays the button (does nothing else)
 void display() {
   fill(c);
   rect(_cornerX,_cornerY,_width,_height);
 }// end draw
 
 // checks to see if the the mouse is currently inside the borders of the button
 boolean isInButton() {
  if (mouseX > _cornerX && mouseX < _cornerX + _width) {
    if (mouseY > _cornerY && mouseY < _cornerY + _height) {
      return true;
    }
  }
  return false; 
 } // end isInButton
 
}// end class
