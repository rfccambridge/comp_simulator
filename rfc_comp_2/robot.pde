class Robot {
  
  private PVector position;
  private PVector velocity;
  private int r = 20;
  private int m = 100;
  float max_mag = 5;
  
  Behavior b;
  
  Robot() {
    position = new PVector(width/2, goal_y);
    velocity = new PVector(0,0);
    b = new Behavior();
  }
  
  public void update(Ball ball) {
    PVector target = b.behave(this.position.get(), this.velocity.get(), ball.position.get(), ball.velocity.get());
    this.velocity = PVector.sub(target,this.position);
    this.velocity.limit(max_mag);
    this.position.add(this.velocity);
    ellipse(position.x,position.y,2*r,2*r);
  }
}
