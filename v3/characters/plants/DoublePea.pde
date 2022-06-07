class DoublePea extends Plants{



  DoublePea(int x, int y, Button creator, int h, int d, int cost){
      super( x,  y,  creator,  h,  d,  cost);
      img = loadImage("peashooter.jpeg");
  }
  void display() {

    image(img,_centerX, _centerY, 30, 30 );

    // if the ball is being dragged update its coordinates with the mouse
    if (_moving) {
      _centerX = mouseX;
      _centerY = mouseY;
    }
    // if you click the mouse outside of the button it will become static
    if (mousePressed && !owner.isInButton()) _moving = false;
  }

}
