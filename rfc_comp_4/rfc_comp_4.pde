/**
 * RFC Comp
 * Shooting simulator
 * by Erik Schluntz
 * 
 * Write a behavior to shoot the ball past the defenders
 */
 
Ball b;

ArrayList<Robot> robots;

int W = 600;
int H = 600;
int goal_height = 50;
int goal_width = 200;
int goal_y = H - goal_height;
int goal_xl = W / 2 - goal_width /2;
int goal_xr = W / 2 + goal_width /2;

int frame_limit = 100;

int score;
int trials;
int frames;

void setup() {
  size(W, H);
  if (testing_mode > 0)
    frameRate(30);
  else
    frameRate(120);
  fill(100);
  stroke(100);
  b = new Ball();
  robots = new ArrayList<Robot>();
  
  score = 0;
  trials = 0;
  frames = 0;
  
  robots = do_reset(b,robots);
  print("robots later " + robots.size());
}

void draw() {
  
  background(51);
  fill(100,200,100);
  rect(goal_xl, goal_y, goal_width, goal_height);
  fill(100);
  line(0,goal_y,width,goal_y);
  b.update(robots);
  
  for (int i = 0; i < robots.size(); i++) {
    robots.get(i).update();
  }
  
  if (testing_mode == 2)
    robots.get(0).position.set(mouseX,mouseY);
  
  if (check_reset(b, frames)) {
    frames = 0;
    robots = do_reset(b,robots);
  }
  
  frames++;
  
}


/*
returns true if the simulation should keep going
false if the simulation should stop
prints the result
*/
boolean check_reset(Ball b, int frames) {
  if (testing_mode == 2)
    return(false);
  // first checking for goals
  if (b.position.x > goal_xl && b.position.x < goal_xr && b.position.y < height && b.position.y > goal_y) {
    print("goal\n");
    score++;
    return(true);
  }
  if (b.position.x > width || b.position.x < 0 || b.position.y < 0 || b.position.y > height) {
    print("blocked\n");
    return(true);
  }
  if (frames > frame_limit) {
    print("timed out \n");
    return(true);
  }
  return(false); 
}

/*
Creates a new shooting scenario
*/
ArrayList<Robot> do_reset(Ball b, ArrayList<Robot> rs)
{
  int n = 4; // number of obstacle robots
  rs = new ArrayList<Robot>();
  
  for (int i = 0; i < n; i++) 
  {
    rs.add(new Robot());
  }
  
  // place the goalie robot
  rs.get(0).move(new PVector(width/2, goal_y));
  
  // now reset the ball with this info
  b.reset(rs);
  
  
  trials++;
  print("Score: " + score + " / " + trials + "\n");
  return rs;
}
  
  
  




