


void setup() {
  Zombies a,b,c,d;
MinimumHeap<Zombies> minHeap;
  size(600,600);
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

  for(int i = 0; i < 4; i++){
    Zombie temp = minHeap.removeMin();
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
    delay(1000);
  }
//  a.display();
//  b.display();
//  c.display();
//  d.display();

}
}
