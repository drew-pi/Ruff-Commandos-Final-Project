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
    _bCoordX -= _speed + 0.5;

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


  void setUp(float x, float y) {
    _bCoordX = x;
    _bCoordY = y;
  }

  void attack(Plants o){
    //println(_bCoordX - o._bCoordX);
    //println(_bCoordY - o._bCoordY);
    //if ((_bCoordX - o._bCoordX <= 1000) && (_bCoordY - o._bCoordY <= 251)){
    if((dist(_bCoordX, _bCoordY, o._coordX, o._coordY) < 30)){
       //  print("BYE");
         o.takeDamage(this._damage);
         _bCoordX += _speed + 50;

    }
  }
//(dist(_bCoordX, _bCoordY, o._bCoordX, o._bCoordY) < 1000)
}
