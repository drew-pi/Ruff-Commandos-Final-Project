
Zombies a,b,c,d;
MinimumHeap<Zombies> minHeap;

void setup() {
  
  size(800,800);
  background(0);

  a = new Base();
  b = new Base();
  c = new Boss();
  d = new Base();

  minHeap = new MinimumHeap<Zombies>();
  minHeap.add(b);
  minHeap.add(a);
  minHeap.add(c);
  minHeap.add(d);

  
}


void draw() {

  while(!minHeap.isEmpty()){
    Zombies temp = minHeap.removeMin();
    int j = int(random(3));
    if(j == 0){
      temp.setX(400);
      temp.setY(100);
    }else if(j == 1){
      temp.setX(400);
      temp.setY(300);
    }else{
      temp.setX(400);
      temp.setY(500);
    }
    temp.display();
   delay(500);
  }
  redraw();
//  a.display();
//  b.display();
//  c.display();
//  d.display();

}
