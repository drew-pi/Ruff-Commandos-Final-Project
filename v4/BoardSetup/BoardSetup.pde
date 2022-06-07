import java.util.ArrayList;

final int STARTING_SUNS = 10;
int numSuns;

//ArrayList<PZObjects> all;
//ArrayList<Buttons> buttons;
ArrayList<GridSquare> tiles;


void setup() {
  // initialize arrays
  tiles = new ArrayList<GridSquare>();
  
  // setup other variables
  numSuns = STARTING_SUNS;
  
  // setup board
  size(1201,605);
  background(255);
  setupTiles();
  drawLines();
  setupButtons();
  //println(PFont.list()); //TimesNewRomanPSMT
  
}

// draws lines needed for game
void drawLines() {
  fill(0);
  strokeWeight(1);
  // horizontal lines
  for (int i = 200; i <= 600; i += 100) line(1,i,1200,i); 
  
  // vertical lines
  line(1, 200, 1, 600);
  for (int i = 200; i <= 1200; i += 200) line(i,200,i,600); 
  
} // end draw lines

// functions that setups the buttons and timers
void setupButtons() {
  // setup the plant buttons
  fill(0);
  rect(5,5,100,80); // button for
  rect(120,5,100,80); //button for 
  rect(235,5,100,80); //button for
  
  rect(5,100,100,80); // button for
  rect(120,100,100,80); // button for
  
  
  // setup the display for how many suns you have
  fill(50,100,50);
  rect(900,5,250,150);
  textFont(createFont("TimesNewRomanPSMT",15));
  fill(0);
  textAlign(CENTER);
  text("Amount of Suns",1025,28);  
  
  // mini rectangle where text will live
  fill(255);
  rect(910,50,230,95);
  textAlign(CENTER);
  textFont(createFont("TimesNewRomanPSMT",20));
  fill(0);
  text(numSuns,1025,98);
  
  
  // setup the timer (usage will be decided later)
  // -either to show how long wave has gone on for, or from last sun
  textAlign(CENTER);
  textFont(createFont("TimesNewRomanPSMT",30));
  fill(0);
  text("TIMER:",1025,190);  
  
  
  // setups the wave counter (which wave of zombies it is)
  fill(255,255,0);
  rect(835,12,25,22);
  
  textAlign(CENTER);
  textFont(createFont("TimesNewRomanPSMT",20));
  fill(0);
  text("Wave number   4   /4",800,30);
} // setup buttons


void setupTiles() {
  
  // go column by column
  for (int i = 0; i < 1200; i += 200) {
    // row by row
    for (int j = 200; j < 600; j += 100) {
      tiles.add(new GridSquare(i,j));
    }
  }
  
  for (GridSquare g: tiles) g.display();
    
} // end setupTiles
