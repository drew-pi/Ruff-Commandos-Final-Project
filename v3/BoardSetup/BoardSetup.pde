import java.util.ArrayList;

final int STARTING_SUNS = 10;
int numSuns;

//ArrayList<PZObjects> all;
//ArrayList<Buttons> buttons;


void setup() {
  numSuns = STARTING_SUNS;
  size(1201,605);
  background(255);
  drawLines();
  setupButtons();
  //println(PFont.list()); //TimesNewRomanPSMT
  
}

// draws lines needed for game
void drawLines() {
  fill(0);
  strokeWeight(1);
  // horizontal lines
  line(1,600,1200,600);
  line(1,500,1200,500);  
  line(1,400,1200,400);
  line(1,300,1200,300);
  line(1,200,1200,200);
  
  // vertical lines
  line(1, 200, 1, 600);
  line(200, 200, 200, 600);
  line(400, 200, 400, 600);
  line(600, 200, 600, 600);
  line(800, 200, 800, 600);
  line(1000, 200, 1000, 600);
  line(1200, 200, 1199, 600);  
}

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
  textAlign(CENTER);
  textFont(createFont("TimesNewRomanPSMT",20));
  fill(0);
  text("Wave number 1/4",800,30);
  
  
}
