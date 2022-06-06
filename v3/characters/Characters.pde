class Characters extends PZObjects{

  // instance variable of the button that created this instance
  AdvancedButton owner;




  Characters(int x, int y, AdvancedButton creator, int h, int d, String t) {


    _coordX = x;
    _coordY = y;



    owner = creator;
    _moving = true;

    _health = h;
    _damage = d;
    _alive = true;
    _type = t;
    //img = loadImage("cookie.jpeg");
  }

  // in this case diplays the ball and determines whether it is being dragged or static
  void display() {

    //image(img,_centerX, _centerY, 30, 30 );

    // if the ball is being dragged update its coordinates with the mouse
    if (_moving) {
      _centerX = mouseX;
      _centerY = mouseY;
    }
    // if you click the mouse outside of the button it will become static
    if (mousePressed && !owner.isInButton()) _moving = false;
  }


}
