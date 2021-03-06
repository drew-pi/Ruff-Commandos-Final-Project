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

  ga = new GridSquares(20, 200);
  gb = new GridSquares(90, 200);
  gc = new GridSquares(160, 200);
  gd = new GridSquares(230, 200);
  ge = new GridSquares(300, 200);
  gf = new GridSquares(20, 270);
  gg = new GridSquares(90, 270);
  gh = new GridSquares(160, 270);
  gi = new GridSquares(230, 270);
  gj = new GridSquares(300, 270);
  gk = new GridSquares(20, 340);
  gl = new GridSquares(90, 340);
  gm = new GridSquares(160, 340);
  gn = new GridSquares(230, 340);
  go = new GridSquares(300, 340);


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
        if(mousePressed && ga.isInButton() && !button.isInButton()){
            active = new DoublePea( (ga._cornerX + ga._width/2), (ga._cornerY + ga._height/2), ga, 4, 1, 3);
        }
        if(gb.isInButton()){
            active = new DoublePea( (gb._cornerX + gb._width/2), (gb._cornerY + gb._height/2), gb, 4, 1, 3);
        }
        if(gc.isInButton()){
            active = new DoublePea( (gc._cornerX + gc._width/2), (gc._cornerY + gc._height/2), gc, 4, 1, 3);
        }
        if(gd.isInButton()){
            active = new DoublePea( (gd._cornerX + gd._width/2), (gd._cornerY + gd._height/2), gd, 4, 1, 3);
        }if(ge.isInButton()){
            active = new DoublePea( (ge._cornerX + ge._width/2), (ge._cornerY + ge._height/2), ge, 4, 1, 3);
        }
        if(gf.isInButton()){
            active = new DoublePea( (gf._cornerX + gf._width/2), (gf._cornerY + gf._height/2), gf, 4, 1, 3);
        }
        if(gg.isInButton()){
            active = new DoublePea( (gg._cornerX + gg._width/2), (gg._cornerY + gg._height/2), gg, 4, 1, 3);
        }
        if(gh.isInButton()){
            active = new DoublePea( (gh._cornerX + gh._width/2), (gh._cornerY + gh._height/2), gh, 4, 1, 3);
        }
        if(gi.isInButton()){
            active = new DoublePea( (gi._cornerX + gi._width/2), (gi._cornerY + gi._height/2), gi, 4, 1, 3);
        }
        if(gj.isInButton()){
            active = new DoublePea( (gj._cornerX + gj._width/2), (gj._cornerY + gj._height/2), gj, 4, 1, 3);
        }
        if(gk.isInButton()){
            active = new DoublePea( (gk._cornerX + gk._width/2), (gk._cornerY + gk._height/2), gk, 4, 1, 3);
        }
        if(gl.isInButton()){
            active = new DoublePea( (gl._cornerX + gl._width/2), (gl._cornerY + gl._height/2), gl, 4, 1, 3);
        }
        if(gm.isInButton()){
            active = new DoublePea( (gm._cornerX + gm._width/2), (gm._cornerY + gm._height/2), gm, 4, 1, 3);
        }
        if(gn.isInButton()){
            active = new DoublePea( (gn._cornerX + gn._width/2), (gn._cornerY + gn._height/2), gn, 4, 1, 3);
        }
        if(go.isInButton()){
            active = new DoublePea( (go._cornerX + go._width/2), (go._cornerY + go._height/2), go, 4, 1, 3);
        }


    }
  //  button = b;
  //  if(button.isInButton()){

  //  active = new Cherry( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button, 4, 1, 3);
  //  }
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


    //println(active.health);
  }
  // if button is pressed, new object is added to list

  // displays the visual button (in this case a green square)
  a.display();
  b.display();


  c.display();

  d.display();

  e.display();

  ga.display();
  gb.display();
  gc.display();
  gd.display();
  ge.display();
  gf.display();
  gg.display();
  gh.display();
  gi.display();
  gj.display();
  gk.display();
  gl.display();
  gm.display();
  gn.display();
  go.display();


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
