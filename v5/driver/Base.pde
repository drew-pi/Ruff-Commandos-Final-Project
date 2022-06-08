class Base extends Zombies {



  //Base(int x, int y, AdvancedButton creator, int h, int d){
  //    super( x,  y,  creator,  h,  d);
  //    _img = loadImage("base.jpeg");
  //}


  //constructor for minHeap
  Base(){
     
     _img = loadImage("base.jpeg");
     _coordX = 0;
     _coordY = 0;
     cost = 1;
   }



  void display() {

    image(_img,_coordX, _coordY, 30, 30 );
  }
    

}
