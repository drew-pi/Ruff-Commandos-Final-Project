//import java.util.ArrayList;

AdvancedButton a,b,c;
//FloatingBall activeBall, bb ,cc;
Characters active;
//ArrayList<FloatingBall> allBalls;
ArrayList<Characters> allCharacters;

void setup() {
  size(600,600);
  background(255);

  a = new AdvancedButton(20,20,100,100, color(0,200,0));
  b = new AdvancedButton(140,20,100,100, color(200,0,0));
  c = new AdvancedButton(260,20,100,100, color(0,0,200));

  allCharacters = new ArrayList<Characters>();
}

void draw() {

  background(255);

  // this is the mechanism for creating other independent objects through button interaction (all work the same)

  // displays the visual button (in this case a green square)
  a.display();

  // if button is pressed, returns an object of FloatingBall
  if(mousePressed && active == null){
    AdvancedButton button;
    button = a;
    if(button.isInButton()){

    active = new Characters( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button);
    }
    button = b;
    if(button.isInButton()){

    active = new Characters( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button);
    }
    button = c;
    if(button.isInButton()){

    active = new Characters( (button._cornerX + button._width/2), (button._cornerY + button._height/2), button);
    }
  }
  // if button is pressed, new object is added to list
  // this step sometimes adds many objects because click can last for more than a 1/60th of a second (registers every 60 fps)
  // so to combat have to clean up array after each screen refresh (every frame, so every 1/60th of a second)
  //if (activeBall != null) allBalls.add(activeBall); //activeBall = null;

  b.display();
  //bb = b.execute();
  //if (bb != null) allBalls.add(bb); bb = null;

  c.display();
  //cc = c.execute();
  //if (cc != null) allBalls.add(cc); cc = null;

  // cleans up Array to make sure that only one version of the object is in the array list
  // other objects could interfere with the program
  //cleanUpAL(allBalls);
  //println(allBalls.size());

  // displays the independent objects - in this case floating balls
  for (Characters fb : allCharacters) {

      fb.display();

  }// end for loop
  if (active != null) {

      active.display();
       if(!active._moving){
         allCharacters.add(active);
        active = null;
      }
    }
}
