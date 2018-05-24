// FermentedAgaveChains -- Johnny Wong, Sophia Xia, Clarence Cheng
// APCS2 pd1
// HW53 -- All That Bouncin'
// 2018-05-24

public class Ball {

  // INSTANCE VARIABLES
  color ballColor;
  float xPos, yPos; // Starting position of a ball
  float xSpeed, ySpeed;
  int xDirection = 1; // Left or Right
  int yDirection = 1; // Up or Down
  int radius;




  // CONSTRUCTOR
  Ball() {
    ballColor = randomColor();
    xPos = random(width);
    yPos = random(height);
    xSpeed = random(25);
    ySpeed = random(25);
    radius = 25;
  }

  // METHODS

  color randomColor() {
    float r = random(255);
    float g = random(255);
    float b = random(255);
    return color(r, g, b);
  }

  void createBall() {
    fill(ballColor);
    ellipse(xPos, yPos, radius, radius);
  }

  void moveBall() {
    // update position of ball
    xPos = xPos + (xSpeed * xDirection);
    yPos = yPos + (ySpeed * yDirection);
    // walls are hit
    if (xPos > width - radius || xPos < radius) {
      bounceHorizontal();
    }
    // ceiling or floor is hit
    if (yPos > height - radius || yPos < radius) {
      bounceVertical();
    }
  }

  void bounceHorizontal() {
    xDirection *= -1; 
    if (xSpeed < width/2) {
      xSpeed += random(3);
    } else {
      xSpeed -= random(width/3);
    }
  }

  void bounceVertical() {
    yDirection *= -1;
    if (ySpeed < height/2) {
      ySpeed += random(3);
    } else {
      ySpeed -= random(height/3);
    }
  }
}
