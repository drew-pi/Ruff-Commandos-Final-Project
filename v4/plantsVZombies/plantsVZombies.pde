//import java.util.ArrayList;

AdvancedButton a,b,c, d, e ;
GridSquares ga,gb,gc,gd,ge,gf,gg,gh,gi,gj,gk,gl,gm,gn,go;
//this will be for when the character spawns from the click
Characters active;
//store the characters after second click or when placed so they don't disappear.
ArrayList<Characters> allCharacters;

void setup() {
  size(700,700);
  background(255);

  a = new AdvancedButton(20,20,100,100, color(0,200,0));
  b = new AdvancedButton(140,20,100,100, color(200,0,0));
  c = new AdvancedButton(260,20,100,100, color(0,0,200));
  d = new AdvancedButton(380,20,100,100, color(204,102,200));
  e = new AdvancedButton(500,20,100,100, color(102,102,200));

  ga = new GridSquares(20, 100);
  gb = new GridSquares(90, 100);
  gc = new GridSquares(160, 100);
  gd = new GridSquares(230, 100);
  ge = new GridSquares(300, 100);
  gf = new GridSquares(20, 170);
  gg = new GridSquares(90, 170);
  gh = new GridSquares(160, 170);
  gi = new GridSquares(230, 170);
  gj = new GridSquares(300, 170);
  gk = new GridSquares(20, 240);
  gl = new GridSquares(90, 240);
  gm = new GridSquares(160, 240);
  gn = new GridSquares(230, 240);
  go = new GridSquares(300, 240);


  allCharacters = new ArrayList<Characters>();
}

void draw() {

  background(255);

  // this is the mechanism for creating other independent objects through button interaction (all work the same)



  // if button is pressed and no active character, returns an object of characters
  if(mousePressed && active == null){
    AdvancedButton button;
    button = a;
    if(button.isInButton()){

    active = new DoublePea( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button, 4, 1, 3);
    }
    button = b;
    if(button.isInButton()){

    active = new Cherry( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button, 4, 1, 3);
    }
    button = c;
    if(button.isInButton()){

    active = new PeaShooter( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button, 4, 1, 3);
    }
    button = d;
    if(button.isInButton()){

    active = new Walnut( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button, 4, 1, 3);
    }
    button = e;
    if(button.isInButton()){

    active = new Ice( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button, 4, 1, 3);
    }
    button = za;
    if(button.isInButton()){

    active = new Base( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button, 4, 1);
    }
    button = zb;
    if(button.isInButton()){

    active = new Cone( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button, 4, 1);
    }
    button = zc;
    if(button.isInButton()){

    active = new Shovel( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button, 4, 1);
    }
    button = zd;
    if(button.isInButton()){

    active = new Football( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button, 4, 1);
    }
    button = ze;
    if(button.isInButton()){

    active = new Boss( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button, 4, 1);
    }

    //println(active.health);
  }
  // if button is pressed, new object is added to list

  // displays the visual button (in this case a green square)
  a.display();
  b.display();


  c.display();

  d.display();

  e.display();

  za.display();
  zb.display();
  zc.display();
  zd.display();
  ze.display();


  // displays the independent objects - in this case all characters that we stored in the array
  for (Characters fb : allCharacters) {

      fb.display();

  }// end for loop

  //if the mouse is connected to an object display it. Once it stops moving, store in array to save it
  //set active null again so another object can be spawned.
  if (active != null) {

      active.display();
       if(!active._moving){
         allCharacters.add(active);
        active = null;
      }
    }
}
