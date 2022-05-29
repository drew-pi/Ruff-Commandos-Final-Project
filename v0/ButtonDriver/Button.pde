class Button {
  
 // these coordinates define the top left corner of the button
 float _cornerX, _cornerY; 
 
 // define where the rectangular button ends
 float _width, _height;
 
 // defines the color of the button
 color c;
 
 // defines whats inside the button
 
 
 // overloaded constructor
 Button(float x, float y, float len, float high) {
   _cornerX = x;
   _cornerY = y;
   
   _width = len;
   _height = high;
 } // end constructor
 
 
 // overloaded constructor with color addition
 Button(float x, float y, float wid, float high, color col) {
  this(x,y,wid,high);
  c = col;
 } // end constructor
 
 
 // function does what the buttons function is
 void execute() {
   // in this case the function is to randomly change the buttons color
   c = color(random(255),random(255),random(255));
 } // end execute
 
 
 // displays the button
 void display() {
   fill(c);
   rect(_cornerX,_cornerY,_width,_height);
   
   if (mousePressed && isInButton()) {
     execute();
   }
 }// end draw
 
 
 boolean isInButton() {
  if (mouseX > _cornerX && mouseX < _cornerX + _width) {
    if (mouseY > _cornerY && mouseY < _cornerY + _height) {
      return true;
    }
  }
  return false; 
 } // end isInButton
 
}// end class
