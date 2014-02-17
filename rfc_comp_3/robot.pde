class Robot {
  
  private PVector position;
  private PVector velocity;
  private int r = 20;
  private int m = 100;
  float max_accel = 3;
  
  Behavior b;
  
  Robot() {
    position = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    b = new Behavior();
  }
  
  public void update(PVector t) {
    PVector accel = b.behave(this.position.get(), this.velocity.get(), t);
    accel.limit(max_accel);
    this.velocity.add(accel);
    this.position.add(this.velocity);
    fill(100);
    ellipse(position.x,position.y,2*r,2*r);
  }
}
