class Boss extends Zombies{


  Boss(int x, int y, AdvancedButton creator, int h, int d){
      super( x,  y,  creator,  h,  d);
      img = loadImage("boss.jpeg");
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
