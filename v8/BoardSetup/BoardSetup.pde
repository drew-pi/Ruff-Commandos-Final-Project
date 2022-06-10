import java.util.ArrayList;

final int STARTING_SUNS = 10;
int numSuns;

Plants curPlant;
MinimumHeap<Zombies> zomHeap;
ArrayList<Zombies> zomList;
ArrayList<Bullets> bullets;
ArrayList<Button> buttons;
ArrayList<GridSquare> tiles;
ArrayList<Plants> plants;


void setup() {
  // initialize arrays and other data types
  tiles = new ArrayList<GridSquare>();
  buttons = new ArrayList<Button>();
  bullets = new ArrayList<Bullets>();
  zomHeap = new MinimumHeap<Zombies>();
  zomList = new ArrayList<Zombies>();
  plants = new ArrayList<Plants>();
  setupZombHeap();

  // setup other variables
  numSuns = STARTING_SUNS;

  // setup board
  size(1201, 605);
  background(255);
  setupTiles();
  drawLines();
  setupButtons();
}


void draw() {
  background(255);
  drawLines();
  setupButtons();

  // this part makes the buttons that spawn zombies work, first it displays all the
  // buttons visually but then it checks if they are being clicked
  // if they are then they create a new plant that becomes the curPlant and following
  // code figures out what to do with the plant
  for (Button b : buttons) {
    b.display();
    int midCoorX = b._cornerX + b._width/2;
    int midCoorY = b._cornerY + b._height/2;
    if ( b.isInButton() && mousePressed) {
      if (b._type == "Pea") curPlant = new PeaShooter(midCoorX, midCoorY, b, 2, 0, 0);
      if (b._type == "Walnut") curPlant = new Walnut(midCoorX, midCoorY, b, 6, 0, 0);
    }
  } // end button for loop

  // makes sure that no random plant is placed on the board that is not on a tile
  // just displays the plant - some lag with the "curPlant._moving part"
  if (curPlant != null && curPlant._moving) curPlant.display();

  // this attaches the plant to the tiles and also displays all plants already on tiles
  for (GridSquare gs : tiles) {
    if (curPlant != null && gs._plant == null) {
      if (gs.isInButton() && mousePressed) {
        gs.setPlant(curPlant);
        plants.add(curPlant);
        curPlant = null;
      }
    }
    if (gs._plant != null) {
      // the tile displays the plant now
      gs._plant.display();

      // if the plant is a pea then it can shoot bullets
      if ( gs._plant._type.equals("Pea") ) {
        gs._plant.addT();
        if ( gs._plant.timeToShoot() ) {
          float coordX = gs._plant._coordX+30;
          float coordY = gs._plant._coordY+11;
          float speed = 1.5;
          Bullets tmpBullet = new Bullets(coordX, coordY, 10, 10, 10, speed, color(10,150,10));
          bullets.add(tmpBullet);
          tmpBullet = null;
        }
      }
    }
    if(gs._plant != null && !gs._plant.isALive()){
        gs._plant = null;
    }
       
  } // end grid square for loop

////check for dead plants
//        for(int i = 0; i < plants.size(); i++){
            
//            if(!plants.get(i).isALive()){
//                plants.remove(i);
//            }
//        }

  // display the bullets shot out of the plants (for some reason for i loops worked better)
  for (int i = 0; i < bullets.size(); i++ ) {
    Bullets tmp = bullets.get(i);
    tmp.display();
    if ( tmp._type.equals("Bullet") ) {

      for(int j = 0; j < zomList.size() ; j++){
        tmp.attack(zomList.get(j));
        if(!zomList.get(j).isALive()){
          zomList.remove(j);
        }
      }
      if (tmp._bCoordX >= 1200) {
        bullets.remove(i);
      }
      else if (!tmp.isALive()){
        bullets.remove(i);
      }
    }
  } // end bullets for loop

  // display zombies that are still on the board and attack plants
  for (Zombies z : zomList) {
     z.display();
     
  }
  
  for(int j = 0; j < zomList.size(); j++){
      //attack plants
      Zombies temp = zomList.get(j);
       for(int i = 0; i < plants.size(); i++){
           temp.attack(plants.get(i));
           println("plant health:" + plants.get(i)._health);
            if(!plants.get(i).isALive()){
                plants.remove(i);
            }
       }
  }

  if ( ((int) (Math.random() * 400)) == 56) addZomb( (int)(Math.random()*4)+1);



} // end draw




// adds a specific zombie to a specific row
void addZomb(int rowNum) {
  // row 1 (from the top) - coordinates (y1,y2) - (200,300)
  // row 2 - (300,400)
  // row 3 - (400,500)
  // row 4 - (500,600)

  if ( !zomHeap.isEmpty() ) {
    Zombies tmp = zomHeap.removeMin();
    tmp.setUp(1200,150+(100*rowNum));
    zomList.add(tmp);
  }
}
















/*
The following methods setup the board.
 - can be used a few times, but meant for just the setup (then must be updated at the beginning of each tick)
*/

void setupZombHeap() {
  // settuing up boss zombies
  for (int i = 0; i < 4; i++) zomHeap.add(new Boss());
  // setting up base zombies
  for (int i = 0; i < 12; i++) zomHeap.add(new Base());
}

// draws lines needed for game
void drawLines() {
  fill(0);
  strokeWeight(1);
  // horizontal lines
  for (int i = 200; i <= 600; i += 100) line(1, i, 1200, i);

  // vertical lines
  line(1, 200, 1, 600);
  for (int i = 200; i <= 1200; i += 200) line(i, 200, i, 600);
} // end draw lines

// functions that setups the buttons and timers
void setupButtons() {

  // setup the plant buttons
  buttons.add(new Button(5, 5, 100, 80, 0, "Pea")); // button for pea
  buttons.add(new Button(120, 5, 100, 80, 0, "Walnut")); // button for walnut
  //buttons.add(new Button(235,5,100,80,0)); // button for

  //buttons.add(new Button(5,100,100,80,0)); // button for
  //buttons.add(new Button(120,100,100,80,0)); // button for

  for (Button b : buttons) b.display(); // display the buttons on the screen


  // setup the display for how many suns you have
  fill(50, 100, 50);
  rect(900, 5, 250, 150);
  textFont(createFont("TimesNewRomanPSMT", 15));
  fill(0);
  textAlign(CENTER);
  text("Amount of Suns", 1025, 28);

  // mini rectangle where text will live
  fill(255);
  rect(910, 50, 230, 95);
  textAlign(CENTER);
  textFont(createFont("TimesNewRomanPSMT", 20));
  fill(0);
  text(numSuns, 1025, 98);


  // setup the timer (usage will be decided later)
  // -either to show how long wave has gone on for, or from last sun
  textAlign(CENTER);
  textFont(createFont("TimesNewRomanPSMT", 30));
  fill(0);
  text("TIMER:", 1025, 190);


  // setups the wave counter (which wave of zombies it is)
  fill(255, 255, 0);
  rect(835, 12, 25, 22);

  textAlign(CENTER);
  textFont(createFont("TimesNewRomanPSMT", 20));
  fill(0);
  text("Wave number   4   /4", 800, 30);
} // setup buttons


void setupTiles() {

  // go column by column
  for (int i = 0; i < 1200; i += 200) {
    // row by row
    for (int j = 200; j < 600; j += 100) {
      tiles.add(new GridSquare(i, j));
    }
  }

  for (GridSquare g : tiles) g.display();
} // end setupTiles
