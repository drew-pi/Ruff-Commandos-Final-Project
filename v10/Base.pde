class Base extends Zombies {


  Base() {
    super();
    _type = "Zombie";
    _img = loadImage("base.jpeg");
    _cost = 1;
    _speed = 0.5;
    _health = 2;
    _damage = 1;
  }


  //constructor for minHeap
  Base(int x, int y, float speed){
    super(x,y,1,2,speed,loadImage("base.jpeg"));
    //_health = 2;
    // _damage = 1;
    _cost = 1;
    _alive = true;
    _moving = true;
    _speed = 0.5;
  }




}
