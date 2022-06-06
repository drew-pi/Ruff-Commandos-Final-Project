class Zombies extends Characters{

int cost;
//image


  Zombies(int x, int y, AdvancedButton creator, int h, int d){
      super(x, y, creator,  h,  d, "Zombie");
      //cost will be the health. Might make things easier for the min heap
      cost = h;

  }
  void display() {

    

    // if the ball is being dragged update its coordinates with the mouse
    if (_moving) {
      _centerX = mouseX;
      _centerY = mouseY;
    }
    // if you click the mouse outside of the button it will become static
    if (mousePressed && !owner.isInButton()) _moving = false;
  }
}
