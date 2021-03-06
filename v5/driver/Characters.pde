class Characters extends PZObjects{

  // instance variable of the button that created this instance
  //AdvancedButton _owner;

  // defines how large the character model is
  int _radius;

  // var to define how much health this character has
  int _health;

  // defines how much damage this character does
  int _damage;

  // defines whether the character moves or not
  boolean _moving;

  // defines whether the char is alive
  boolean _alive;
  
  Characters(){
    super();
    _radius = 0;
    _health = 0;
    _damage = 0;
    _moving = false;
    _alive = false;
  }
 
  // first overloaded constructor without type or image
  Characters(int coordX, int coordY, int radius, int damage, int health) {
    super(coordX, coordY);
    _radius = radius;
    _type = "Character";
    _damage = damage;
    _health = health;
    _moving = false;
    _alive = true;
  }

  // second overloaded constructor with type
  Characters(String type, int coordX, int coordY, int radius, int damage, int health) {
    this(coordX, coordY, radius, damage, health);
    _type = type;
  }

  // third overloaded constructor with image
  Characters(String type, int coordX, int coordY, int radius, int damage, int health, PImage img) {
    this(type,coordX, coordY, radius, damage, health);
    _img = img;
  }

  // fourth overloaded constructor with Button owner
  //Characters(String type, int coordX, int coordY, int radius, int damage, int health, PImage img, Button owner) {
  //  this(type,coordX,coordY,radius, damage,health,img);
  //  _owner = owner;
  //}


  // in this case diplays the ball and determines whether it is being dragged or static
  void display() {

    image(_img,_coordX, _coordY, 30, 30 );

    // if the ball is being dragged update its coordinates with the mouse
    if (_moving) {
      _coordX = mouseX;
      _coordY = mouseY;
    }
    // if you click the mouse outside of the button it will become static
  //  if (mousePressed && !_owner.isInButton()) _moving = false;
  }


}
