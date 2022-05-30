// this is just a test to see if comparable objects work with heaps in processing
class Balls implements Comparable<Balls> {
  
  int _centerX, _centerY;
  int _radius;
  
  color c;
  
  Balls(int size, int x, int y, color col) {
    _radius = size;
    
    _centerX = x;
    _centerY = y;
    
    c = col;
  }
  
  void display() {
    //fill(c);
    ellipse(_centerX, _centerY, _radius, _radius);
  }
  
  int compareTo(Balls b) {
    if (_radius > b._radius) return 1;
    else if (_radius < b._radius) return -1;
    return 0; 
  } 
  
  String toString() {
    return "" + _radius;
  }
}
