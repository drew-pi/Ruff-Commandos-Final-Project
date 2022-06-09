class Bullets extends Characters {

  // defines the plant that created this bullet
  //Plant _owner;

  // what color the bullet is
  color _c;

  // defines the speed of the bullet
  float _speed;

  // overloaded constructor without type or owner
  Bullets(float coordX, float coordY, int radius, int damage, int health) {
    super(0, 0,radius,damage,health);
    _type = "Bullet";
    _bCoordX = coordX;
    _bCoordY = coordY;
    _alive = true;
    _speed = 0;
    _c = color(0, 0 ,0);
  } // end first overloaded constructor


  Bullets(float coordX, float coordY, int radius, int damage, int health, float speed, color col) {
    this(coordX, coordY, radius, damage, health);
    _c = col;
    _speed = speed;
  }


  void display() {
    fill(_c);
    ellipse(_bCoordX, _bCoordY, _radius, _radius);
    _bCoordX += _speed;
  }

  void attack(Zombies o){
    if(dist(this._bCoordX, this._bCoordY, o.getX(), o.getY()) < 20){
        o.takeDamage(1);
        this._alive = false;
    }
  }


} // end class
