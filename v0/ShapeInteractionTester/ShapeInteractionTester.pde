Ball a,b;

void setup() {
  size(600,600);
  background(255);
  
  a = new Ball(30,100,100,color(100,100,0));
  b = new Ball(30,500,100,color(100,0,100)); 
}


void draw() {
  background(255);
  a.display();
  b.display();
  
  int coordXA = a._centerX;
  int coordYA = a._centerY;
  int coordXB = b._centerX;
  int coordYB = b._centerY;
  
  
}
