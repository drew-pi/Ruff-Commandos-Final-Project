class Plants extends Characters{

int costs;
//image
//PImage img;

  Plants(int x, int y, AdvancedButton creator, int h, int d, int cost){
      super(x, y, creator,  h,  d, "Plant");
      costs = cost;
      _moving = false;
      //img = loadImage("cookie.jpeg");
  }
  void display() {

    //image(img,_coordX, _coordY, 30, 30 );

    // if the ball is being dragged update its coordinates with the mouse
    if (_moving) {
      _coordX = mouseX;
      _coordY = mouseY;
    }
    // if you click the mouse outside of the button it will become static
    if (mousePressed && !_owner.isInButton()) _moving = false;
  }
}
