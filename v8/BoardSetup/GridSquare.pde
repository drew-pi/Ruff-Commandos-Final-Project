class GridSquare {

 Plants _plant;

 // these coordinates define the top left corner
 int _cornerX, _cornerY;

 // define where the rectangle ends
 int _width, _height;

 // defines the color
 color c;


 // overloaded constructor
 GridSquare(int x, int y) {
   _cornerX = x;
   _cornerY = y;

   _width = 200;
   _height = 100;

  c = color(255);
  //c = color(random(255),random(255),random(255));
 } // end constructor


  // executes the buttons function - in this case creates a new instance of floating ball to return
  //FloatingBall execute() {
  // FloatingBall fb = null;
  //  if (isInButton()) {
  //    fb = new FloatingBall(30, (_cornerX + _width/2), (_cornerY + _height/2), color(255,100,150),this);
  //  }
  //  return fb;
  //}





 // visually displays the button (does nothing else)
 void display() {
   fill(c);
   rect(_cornerX,_cornerY,_width,_height);
   //if (_plant != null) _plant.display()
 }// end display

 // checks to see if the the mouse is currently inside the borders of the button
 boolean isInButton() {
  if (mouseX > _cornerX && mouseX < _cornerX + _width) {
    if (mouseY > _cornerY && mouseY < _cornerY + _height) {
      return true;
    }
  }
  return false;
 } // end isInButton


 // sets the plant of the grid square
 void setPlant(Plants curPlant) {

//if plant died then no plant on grid anymore
       _plant = curPlant;
   
     //if(!_plant.isALive()){
     //   _plant = null;
     //}else{    
       _plant.setCoord(_cornerX + _width/2, _cornerY + _height/2);
     // }
 }

}// end class
