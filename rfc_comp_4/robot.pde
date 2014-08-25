class Robot {
  
  private PVector position;
  private PVector velocity;
  private int r = 20;
  private int m = 100;
  
  Robot() {
    position = new PVector(random(width/4, width*3/4), random(height/2, height - 2*goal_height));
    velocity = new PVector(0,0);
  }
  
  public void update() {
    this.velocity = PVector.mult(this.velocity, .9);
    this.position.add(this.velocity);
    ellipse(position.x,position.y,2*r,2*r);
  }
}