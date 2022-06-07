class Bullets extends PZObjects {
  
  // defines the plant that created this bullet
  //Plant _owner;
  
  // how large the bullet is
  int _rad;
  
  // what color the bullet is
  color _c;
  
  // defines how much damage this bullet does
  int _damage;
  
  // defines the speed of the bullet
  int _speed;
  
  // defines whether the bullet is active or already hit its target
  boolean _alive;
  
  // overloaded constructor without type or owner
  Bullets(int coordX, int coordY, int damage) {
    super(coordX, coordY);
    _damage = damage;
    _alive = true;
    _type = "Bullet";
    _speed = 0;
    _rad = 0;
    _c = color(0, 0 ,0);
  } // end first overloaded constructor
  
  
  Bullets(int coordX, int coordY, int damage, int speed, int radius, color col) {
    this(coordX, coordY, damage);
    _rad = radius;
    _c = col;
    _speed = speed;
  }
  
  // second overloaded constructor with owner
  //Bullets(int coordX, int coordY, int damage, int speed, int radius, color col, Plant owner) {
  //  this(coordX, coordY, damage, speed, radius, col);
  //  _owner = owner;
  //}
  
  // third overloaded constructor with type
  //Bullets(String type, int coordX, int coordY, int damage, int speed int radius, color col, Plant owner) {
  //  this(coordX, coordY, damage, speed, radius, col, owner);
  //  _type = type;
  //}
  
  
  void display() {
    
    fill(_c);
    ellipse(_coordX, _coordY, _rad, _rad);
    
  }
  
  
  boolean areColliding(int x, int y, int radius) {
    return dist(x,y,_coordX, _coordY) <= radius;
  }
  
  
} // end class
