class Button {
  
  int _maxX,_minX;
  int _maxY,_minY;
  
  int _width,_height;
  
  color c;
  
  Button(int maxX, int minX, int maxY, int minY) {
    _maxX = maxX;
    _minX = minX;
    _maxY = maxY;
    _minY = minY;
    
    _width = maxX - minX;
    _height = maxY - minY;
    
    c = color(100,100,0); 
  }
      
  
  void draw() {
    rect(_minX,_minY,_width,_height);
    fill(c);
        
    if (mousePressed) {
      if (abs(mouseX) > _minX && abs(mouseX) < _maxX) {
        if (abs(mouseY) > _minY && abs(mouseY) < _maxY) {
          execute();
        }
      }
    }
  } // emd draw

  void execute() {
    c = color(random(255),random(255),random(255));
  } 
  
}
