class Characters {

  // instance variable of the button that created this instance
  AdvancedButton owner;

  // instance var to determine if this ball is being dragged or static
  boolean _moving;

  // define the center of the ball
  int _centerX, _centerY;

  // defines how large the ball is
  //int _radius;

  // defines the color of the ball
  //color c;

  //image
  PImage img;

  //attributes
  int health, damage;
  boolean alive;
  String type;

  Characters( int x, int y, AdvancedButton creator, int h, int d, String t) { //int size,color col,
    //_radius = size;

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
    //fill(c);
    //ellipse(_centerX, _centerY, _radius, _radius);
    image(img,_centerX, _centerY );

    // if the ball is being dragged update its coordinates with the mouse
    if (_moving) {
      _centerX = mouseX;
      _centerY = mouseY;
    }
    // if you click the mouse outside of the button it will become static
    if (mousePressed && !owner.isInButton()) _moving = false;
  }

  // overide equals method for the cleanUpAL method to work
//  boolean equals(FloatingBall fb) {
//    return (_centerX == fb._centerX) && (_centerY == fb._centerY) && (_radius == fb._radius);
//  }
}
