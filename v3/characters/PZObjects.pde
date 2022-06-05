// all characters have to have the same instance variables like health, damage, some sort of x and y location, etc... 
  // - all characters and objects (like plant bullets) have to have "boolean collide(int x, int y)" to calculate if those two 

class PZObjects implements PZObjectInterface {
  
  //defines where this object originated from
  PZObjects _owner; 
  
  // defines the type variable (could be zombie, plant, bullet)
  String _type;
  
  // defines the health of any PZObject (could be null if it is a bullet)
  Integer _health;
  
  // defines the damage that this PZObject does to another
  int _damage;
  
  // defines the X and Y locations of this object (or of its center)
  int _coordX, _coordY;
  
  // defines whether the object is moving or not (true if moving, false otherwise)
  boolean _moving;
  
  // defines whether the object is alive (if dead then to be removed)
  boolean _alive;
  
  // defines what this object display (could be a png or null)
  PImage _img;
  
  
  
  
  
  
  
  // method that is required by PZObjectInterface
  boolean areColliding(int coordX, int coordY, int radius);
  
  
  
  
}
