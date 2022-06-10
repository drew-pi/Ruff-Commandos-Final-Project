class Zombies extends Characters implements Comparable<Zombies>{

 int cost;
//image


  //Zombies(int x, int y, AdvancedButton creator, int h, int d){
  //    super(x, y, creator,  h,  d, "Zombie");
  //    //cost will be the health. Might make things easier for the min heap
  //    cost = h;

  //}

  Zombies(){
    super();
    cost = 0;
  }


  void display() {



    //// if the ball is being dragged update its coordinates with the mouse
    //if (_moving) {
    //  _coordX = mouseX;
    //  _coordY = mouseY;
    //}
    //// if you click the mouse outside of the button it will become static
    //if (mousePressed && !owner.isInButton()) _moving = false;
  }
  int getCost(){
    return cost;
  }
  int compareTo(Zombies zomb){
    if(this.cost > zomb.getCost()){
      return 1;
    }else if(this.cost < zomb.getCost()){
      return -1;
    }else{
      return 0;
    }
  }

  void setX(float X){
      _coordX = X;
  }

  void setY(float Y){
      _coordY = Y;
  }

  float getX(){
    return _coordX;
  }

  float getY(){
    return _coordY;
  }

  void takeDamage(int d){
    this._health -= d;
    if(this._health <= 0){
        _alive = false;
    }
  }

  void update(){
    _coordX-= 0.1;
  //  println("yeehha");
  }
}
