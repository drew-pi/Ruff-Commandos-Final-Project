class Boss extends Zombies{



  //Boss(int x, int y, AdvancedButton creator, int h, int d){
  //    super( x,  y,  creator,  h,  d);
  //    _img = loadImage("boss.jpeg");
  //}

//constructor for minHeap
  Boss(){
    _img = loadImage("boss.jpeg");
    _coordX = 0;
    _coordY = 0;
    cost = 5;
  }



  void display() {

    image(_img,_coordX, _coordY, 30, 30 );
  }
  

}
