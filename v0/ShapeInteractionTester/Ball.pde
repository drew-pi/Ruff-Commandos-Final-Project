class Ball {
  
  // FOR THIS SPECIFIC TEST - NOT USEFUL ELSEWHERE
  boolean changed;
  
  // for these moving balls tells them where to go and by how much
  int _directionX, _directionY;
  
  // define the center of the ball
  int _centerX, _centerY;
  
  // defines how large the ball is
  int _radius;
  
  // defines the color of the ball
  color c;
  
  // overloaded constructor
  Ball(int size, int x, int y, color col) {
    _radius = size;
    
    _centerX = x;
    _centerY = y;
    
    c = col;
    
    changed = false;
  }
  
  // overloaded constructor with direction
  Ball(int size, int x, int y, int dirx, int diry, color col) {
    this(size,x,y,col);
    
    _directionX = dirx;
    _directionY = diry;
  }
  
  // displays the ball visually and also moves it
  void display() {
    fill(c);
    ellipse(_centerX, _centerY, _radius, _radius);
    if (changed) c = color(100); 
    
  }
  
  // simulates ball movement
  void move() {
    _centerX += _directionX;
    _centerY += _directionY;
  }
  
  
  boolean detectCollision(Ball other) {
   
    if (other._
    
    return true;
    
  }
  
  
  
  
  
}
