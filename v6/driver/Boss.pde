class Boss extends Zombies{



  //Boss(int x, int y, AdvancedButton creator, int h, int d){
  //    super( x,  y,  creator,  h,  d);
  //    _img = loadImage("boss.jpeg");
  //}

//constructor for minHeap
  Boss(){
    _img = loadImage("boss.jpeg");
    _health = 8;
     _damage = 4;
    cost = 5;
    _alive = true;
    _moving = true;
    _type = "Zombies";
    int j = int(random(3));
    //delay(1000);
    if(j == 0){
      _coordX = 400;
      _coordY = 100;
    }else if(j == 1){
    _coordX = 400;
    _coordY = 300;
    }else{
    _coordX = 400;
    _coordY = 500;
    }
  }



  void display() {

    image(_img,_coordX, _coordY, 30, 30 );
  }


}
