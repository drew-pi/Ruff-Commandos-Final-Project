class Zombies extends Characters implements Comparable<Zombies>{

  float _speed;

  Zombies() {
    super();
    _bCoordX = _bCoordY = _speed = 0;
    _alive = true;
    _moving = true;
    _type = "Zombie";
  }
  
  // overloaded constructor without type or owner
  Zombies(float coordX, float coordY, int damage, int health) {
    super(0,0,0,damage,health);
    _type = "Zombie";
    _bCoordX = coordX;
    _bCoordY = coordY;
    _alive = true;
    _speed = 0;
  } // end first overloaded constructor
  
  
  Zombies(float coordX, float coordY,int damage, int health, float speed, PImage img) {
    this(coordX, coordY, damage, health);
    _speed = speed;
    _img = img;
  }
  
  
  void display() {
    image(_img, _bCoordX, _bCoordY,30,30);
    _bCoordX -= _speed;
    
  }

  // compare to method mandated by comparable interface
  int compareTo(Zombies zomb){
    if(_cost > zomb._cost){
      return 1;
    }else if(_cost < zomb._cost){
      return -1;
    }else{
      return 0;
    }
  } // end compareTo
  
  
  void setUp(float x, float y, float speed) {
    _bCoordX = x;
    _bCoordY = y;
    
    _speed = speed;
  }
  
}
