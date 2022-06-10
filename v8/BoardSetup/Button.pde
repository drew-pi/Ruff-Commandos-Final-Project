class Button {
 
 // these coordinates define the top left corner of the button
 int _cornerX, _cornerY;

 // define where the rectangular button ends
 int _width, _height;

 // defines the color of the button
 color c;
 
 // defines what plant it spawns 
 String _type;


 // overloaded constructor
 Button(int x, int y, int len, int high, color col, String type) {
   _cornerX = x;
   _cornerY = y;

   _width = len;
   _height = high;

  c = col;
  _type = type;
 } // end constructor

  
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
