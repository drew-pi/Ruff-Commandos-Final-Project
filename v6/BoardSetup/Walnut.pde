class Walnut extends Plants{

  Walnut(int x, int y, Button creator, int h, int d, int cost){
      super( x,  y,  creator,  h,  d,  cost);
      _img = loadImage("walnut.png");
      _type = "Walnut";
  }

} // end of class
