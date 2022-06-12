class Button {
 
 // these coordinates define the top left corner of the button
 int _cornerX, _cornerY;

 // define where the rectangular button ends
 int _width, _height;

 // defines the color of the button
 color c;
 
 // defines what plant it spawns 
 String _type;
 
 PImage _img;


 // overloaded constructor
 Button(int x, int y, int len, int high, color col, String type, PImage img) {
   _cornerX = x;
   _cornerY = y;

   _width = len;
   _height = high;

  c = col;
  _type = type;
  _img = img;
 } // end constructor

  
 // visually displays the button (does nothing else)
 void display() {
   fill(255);
   rect(_cornerX,_cornerY,_width,_height);
   image(_img,_cornerX+_width/3, _cornerY+_height/3, _height/2, _width/2 );
   
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
