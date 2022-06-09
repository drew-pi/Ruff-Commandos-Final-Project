// all characters have to have the same instance variables like health, damage, some sort of x and y location, etc...
  // - all characters and objects (like plant bullets) have to have "boolean collide(int x, int y)" to calculate if those two

class PZObjects {

  // defines the type variable (could be zombie, plant, bullet)
  String _type;

  // defines the X and Y locations of this object (or of its center)
  float _coordX, _coordY;

  // defines what this object display (could be a png or null)
  PImage _img;

  PZObjects(){
    _type = "";
    _coordX = 0;
    _coordY = 0;
    _img = null;
  }
  
  //overloaded constructor with just coordinates
  PZObjects(int coordX, int coordY) {
     _coordX = coordX;
     _coordY = coordY;
     _type = "Generic";
     _img = null;
  } // end 1st constructor

  //overloaded constructor - with type
  PZObjects(String type, int coordX, int coordY) {
    this(coordX, coordY);
    _type = type;
    _img = null;
  } // end second constructor

  // overloaded constructor - with image
  PZObjects(String type, int coordX, int coordY, PImage img) {
    this(type, coordX, coordY);
    _img = img;
  }// end 3rd constructor

}
