class PeaShooter extends Plants{

  PeaShooter(int x, int y, Button creator, int h, int d, int cost){
      super( x,  y,  creator,  h,  d,  cost);
      _img = loadImage("pea.jpeg");
      _type = "Pea";
  }
  
} // end of class
