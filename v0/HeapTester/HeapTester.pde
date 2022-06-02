Balls a,b,c,d;
MinimumHeap<Balls> minHeap;


void setup() {
  size(600,600);
  background(0);
   
  a = new Balls(80,50,50,color(random(255),random(255),random(255)));
  b = new Balls(30,100,100,color(random(255),random(255),random(255)));
  c = new Balls(50,300,300,color(random(255),random(255),random(255)));
  d = new Balls(10,500,500,color(random(255),random(255),random(255)));
  
  minHeap = new MinimumHeap<Balls>();
  minHeap.add(b);
  minHeap.add(a);
  minHeap.add(c);
  minHeap.add(d);
  
  minHeap.removeMin();
  minHeap.removeMin();

  print(minHeap);
}


void draw() {
  a.display();
  b.display();
  c.display();
  d.display();

}
