class Walnut extends Plants{

PImage _damaged;

  Walnut(int x, int y, Button creator, int h, int d, int cost){
      super( x,  y,  creator,  h,  d,  cost);
      _img = loadImage("walnut.png");
      _damaged = loadImage("damaged.jpg");
      _type = "Walnut";
  }

  void display() {

  if(_health > 3 && _health <= 6){
      image(_img,_coordX, _coordY, 30, 30 );
  }else{
      image(_damaged,_coordX, _coordY, 30, 30 );
  }


    if (mousePressed && !_owner.isInButton()) _moving = false;
  }

} // end of class
