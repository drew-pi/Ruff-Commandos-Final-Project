class Boss extends Zombies{
  
  Boss() {
    super();
    _type = "Zombie";
    _img = loadImage("boss.jpeg");
    _cost = 3;
    _speed = 1;
  }
  
  //constructor for minHeap
  Boss(int x, int y, float speed){
    super(x,y,8,4,speed,loadImage("boss.jpeg"));
    //_health = 2;
    // _damage = 1;
    _cost = 3;
    _alive = true;
    _moving = true;
    _speed = 1;
  }


}
