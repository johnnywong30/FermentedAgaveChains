// FermentedAgaveChains -- Johnny Wong, Sophia Xia, Clarence Cheng
// APCS2 pd1
// HW53 -- All That Bouncin'
// 2018-05-24

// Declare and construct x amount of balls
Ball[] ballHolder = new Ball[30];
boolean bouncing = true;
int ballNum = 0;

// one time setup
void setup() {
  size(600, 600); 
  noStroke();
  frameRate(30);
  // creates 30 instances of balls
  for (int i = 0; i < ballHolder.length; i++) {
    ballHolder[i] = new Ball();
  }
}

// draw process
void draw() {
  background(255);
  for (Ball ball: ballHolder){
     ball.createBall();
     ball.moveBall();
  }
}
