class Robot {
  PVector position;
  PVector velocity;
  int r = 20;
  int m = 100;
  
  Behavior b;
  
  Robot() {
    position = new PVector(width/2, goal_y);
    velocity = new PVector(0,0);
    b = new Behavior();
  }
  
  public void update(Ball ball) {
    PVector oldPos = this.position;
    this.position = b.behave(this.position, this.velocity, ball.position, ball.velocity);
    this.velocity = PVector.sub(position, oldPos);
    ellipse(position.x,position.y,2*r,2*r);
  }
}
