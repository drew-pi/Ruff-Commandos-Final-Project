//import java.util.ArrayList;

AdvancedButton a,b,c, d;
//this will be for when the character spawns from the click
Characters active;
//store the characters after second click or when placed so they don't disappear.
ArrayList<Characters> allCharacters;

void setup() {
  size(600,600);
  background(255);

  a = new AdvancedButton(20,20,100,100, color(0,200,0));
  b = new AdvancedButton(140,20,100,100, color(200,0,0));
  c = new AdvancedButton(260,20,100,100, color(0,0,200));
  d = new AdvancedButton(380,20,100,100, color(0,200,200));

  allCharacters = new ArrayList<Characters>();
}

void draw() {

  background(255);

  // this is the mechanism for creating other independent objects through button interaction (all work the same)

  // displays the visual button (in this case a green square)
  a.display();

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

    //println(active.health);
  }
  // if button is pressed, new object is added to list


  b.display();


  c.display();




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
