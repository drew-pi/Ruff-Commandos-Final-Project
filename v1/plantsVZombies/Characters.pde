class Characters {

  // instance variable of the button that created this instance
  AdvancedButton owner;

  // instance var to determine if this ball is being dragged or static
  boolean _moving;

  // define the center of the ball
  int _centerX, _centerY;


    //image
  PImage img;

  //attributes
  int health, damage;
  boolean alive;
  String type;

  Characters(int x, int y, AdvancedButton creator, int h, int d, String t) {
   // _radius = size;

    _centerX = x;
    _centerY = y;

    //c = col;

    owner = creator;
    _moving = true;

    health = h;
    damage = d;
    alive = true;
    type = t;
    img = loadImage("pea.jpeg");
  }

  // in this case diplays the ball and determines whether it is being dragged or static
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
