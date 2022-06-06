class Bullets extends PZObjects{

  Bullets(int x, int y, PZObjects creator, int h, int d) {


    _coordX = x;
    _coordY = y;



    owner = creator;
    _moving = true;

    _health = h;
    _damage = d;
    _alive = true;
    _type = "Bullets";
    //img = loadImage("cookie.jpeg");
  }
}
