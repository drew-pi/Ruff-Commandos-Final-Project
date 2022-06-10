class Plants extends Characters{
  
  
  // time since last shot
  float _tSL;



  Plants(int x, int y, Button creator, int h, int d, int cost){
      super(x, y, creator,  h,  d, "Plant");
      _cost = cost;
      _moving = true;
      _tSL = 0.000;
  }
  void display() {

    image(_img,_coordX, _coordY, 30, 30 );
   // ellipse(_bCoordX, _bCoordY, _radius, _radius);
    // if the ball is being dragged update its coordinates with the mouse
    if (_moving) {
      _coordX = mouseX;
      _coordY = mouseY;
    }
    // if you click the mouse outside of the button it will become static
    if (mousePressed && !_owner.isInButton()) _moving = false;
  }
  
  void setCoord(int x, int y) {
    _coordX = x;
    _coordY = y;
  }
  
  void addT() {
    _tSL += 0.01;
  }
  
  boolean timeToShoot() {
    if (_tSL >= 1) {
      _tSL = 0;
      return true;
    }
    return false;
  }
}
