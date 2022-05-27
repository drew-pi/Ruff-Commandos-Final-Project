class RevButton {
  
 // these coordinates define the top left corner of the button
 float _cornerX, _cornerY; 
 
 // define where the rectangular button ends
 float _width, _height;
 
 // defines the color of the button
 color c;
 
 // defines whats inside the button
 // later to be added image of plant
 
 
 // overloaded constructor
 RevButton(float x, float y, float len, float high) {
   _cornerX = x;
   _cornerY = y;
   
   _width = len;
   _height = high;
 } // end constructor
 
 // overloaded constructor with color addition
 RevButton(float x, float y, float wid, float high, color col) {
  this(x,y,wid,high);
  
  c = col;
 }
 
 
 // function does what the buttons function is
 void execute() {
   // in this case the function is make the screen more red
   background(+1,+0,+0);
 } // end execute
 
 
 // runs at 60 times per second
 void draw() {
   rect(_cornerX,_cornerY,_width,_height);
   fill(c);
   
   if (mousePressed && isInButton()) {
     execute();
   }
   
 }// end draw
 
 
 boolean isInButton() {
   
  if (mouseX > _cornerX && mouseX < _cornerX + _width) {
    if (mouseY > _cornerY && mouseY < _cornerY + _height) {
      print("clicked");
      return true;
    }
  }
  
  return false; 
 }
   
 
 
  
  
}
