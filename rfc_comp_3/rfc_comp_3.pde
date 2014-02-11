/**
 * RFC Comp
 * Control Simulator
 * by Erik Schluntz
 * 
 * Write a behavior for the robot to get to the target location
 * and stop moving as quickly as possible
 */
 
PVector target;
Robot r;
int W = 600;
int H = 600;

float max_speed = 2;
float max_dist = 10;

int score;
int time;

void setup() {
  size(W, H);
  if (testing_mode > 0)
    frameRate(30);
  else
    frameRate(120);
  fill(100);
  noStroke();
  target = new PVector(0,0);
  reset_target(target);
  r = new Robot();
  
  score = 0;
  time = 0;
}

void draw() {
  
  background(51);
  r.update(target);
  update_target(target);
  
  if (check_success(target,r)) {
    reset_target(target);
    score++;
    int ave_time = time / score;
    print("Average time: " + ave_time + " runs: " + score + "\n");
  }
  
  time++;
  
}


void update_target(PVector t) {
  fill(0,255,0);
  ellipse(t.x,t.y, 10,10);
}

// checks if robot is within max_dist of target and moving slower than max_speed
Boolean check_success(PVector t, Robot r) {
  return (PVector.sub(t,r.position).mag() < max_dist && r.velocity.mag() < max_speed);
}

void reset_target(PVector t) {
  t.set(random(width),random(height));
}


