class Boss extends Zombies{
  
   //constructor for minHeap
  Boss(int x, int y, float speed){
    super(x,y,8,4,speed,loadImage("boss.jpeg"));
    //_health = 2;
    // _damage = 1;
    _cost = 1;
    _alive = true;
    _moving = true;
  }


}
