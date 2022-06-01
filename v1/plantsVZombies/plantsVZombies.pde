import java.util.ArrayList;

AdvancedButton a,b,c;
FloatingBall aa, bb ,cc;
ArrayList<FloatingBall> allBalls;

void setup() {
  size(600,600);
  background(255);

  a = new AdvancedButton(20,20,100,100, color(0,200,0));
  b = new AdvancedButton(140,20,100,100, color(200,0,0));
  c = new AdvancedButton(260,20,100,100, color(0,0,200));

  allBalls = new ArrayList<FloatingBall>();
}

void draw() {

  background(255);

  // this is the mechanism for creating other independent objects through button interaction (all work the same)

  // displays the visual button (in this case a red square)
  a.display();

  // if button is pressed, returns an object of FloatingBall
  aa = a.execute();

  // if button is pressed, new object is added to list
  // this step sometimes adds many objects because click can last for more than a 1/60th of a second (registers every 60 fps)
  // so to combat have to clean up array after each screen refresh (every frame, so every 1/60th of a second)
  if (aa != null) allBalls.add(aa); aa = null;

  b.display();
  bb = b.execute();
  if (bb != null) allBalls.add(bb); bb = null;

  c.display();
  cc = c.execute();
  if (cc != null) allBalls.add(cc); cc = null;

  // cleans up Array to make sure that only one version of the object is in the array list
  // other objects could interfere with the program
  cleanUpAL(allBalls);
  //println(allBalls.size());

  // displays the independent objects - in this case floating balls
  for (FloatingBall fb : allBalls) {
    if (fb != null) {
      fb.display();
    }
  }// end for loop
}

// this cleans up the array and makes sure that there aren't many of the same objects in the given array
void cleanUpAL(ArrayList<FloatingBall> al) {
    int size = al.size();
    if (size < 2) return;

    FloatingBall prevUnique = al.get(0);
    FloatingBall curVal;

    int i = 1;
    while (i < al.size()) {
      curVal = al.get(i);
      if (!curVal.equals(prevUnique)) {
        prevUnique = curVal;
        i ++;
      }
      else al.remove(i);
    } // end while loop
 } // end cleanUpAL
  
