class Base extends Zombies {



  //Base(int x, int y, AdvancedButton creator, int h, int d){
  //    super( x,  y,  creator,  h,  d);
  //    _img = loadImage("base.jpeg");
  //}


  //constructor for minHeap
  Base(){
  _img = loadImage("base.jpeg");
  _health = 2;
   _damage = 1;
  cost = 1;
  _alive = true;
  _moving = true;
  _type = "Zombies";
  _coordX = 1100;
  _coordY = 250;
  //int j = int(random(3));
  ////delay(5000);
  //if(j == 0){
  //  _coordX = 400;
  //  _coordY = 100;
  //}else if(j == 1){
  //_coordX = 400;
  //_coordY = 300;
  //}else{
  //_coordX = 400;
  //_coordY = 500;
  //}
  }



  void display() {

    image(_img,_coordX, _coordY, 30, 30 );
  }


}
