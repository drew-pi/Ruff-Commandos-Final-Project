class Walnut extends Plants{

//PImage img;


  Walnut(int x, int y, AdvancedButton creator, int h, int d, int cost){
      super( x,  y,  creator,  h,  d,  cost);
      _img = loadImage("walnut.png");
  }
  void display() {

    image(_img,_coordX, _coordY, 30, 30 );

    // if the ball is being dragged update its coordinates with the mouse
    if (_moving) {
      _coordX = mouseX;
      _coordY = mouseY;
    }
    // if you click the mouse outside of the button it will become static
    if (mousePressed && !_owner.isInButton()) _moving = false;
  }

}
