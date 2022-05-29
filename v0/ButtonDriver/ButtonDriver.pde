Button a,b,c;

void setup() {
  size(600,600);
  background(255);
  
  a = new Button(20,20,100,100, color(0,200,0));
  b = new Button(140,20,100,100, color(200,0,0));
  c = new Button(260,20,100,100, color(0,0,200));
}

void draw() {
  a.display();
  b.display();
  c.display();
}


  
