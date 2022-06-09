
ArrayList<Zombies> zombiesList;
MinimumHeap<Zombies> minHeap;

void setup() {

  size(800,800);
  background(255);

  zombiesList = new ArrayList<Zombies>();

  minHeap = new MinimumHeap<Zombies>();
  for(int i = 0; i < 4; i++){
    minHeap.add(new Base());
  }
  
  for(int i = 0; i < 2; i++){
    minHeap.add(new Boss());
  }
  
  //print(minHeap);

}

void draw() {
  background(255);

  Zombies temp;
  //int list;
  if(!minHeap.isEmpty()){
    temp = minHeap.removeMin();
    print(temp);
    zombiesList.add(temp);
    
    delay(50);
    
  }
  
  for(int i = 0; i < zombiesList.size() - 1; i++){
      delay(25);
      zombiesList.get(i).display();
      delay(25);
      zombiesList.get(i).update();
    }
}
