int testing_mode = 1; //0 for scoring, 1 for slow scoring, 2 for manual ball control

class Behavior {
  
  /* GLOBAL CONSTANTS AVAILABLE TO YOU
  int goal_height;
  int goal_width;
  
  int goal_y; // y position of the start of the top of the goal. this is also the baseline of the field
  int goal_xl; // x position of the left side of the goal
  int goal_xr; // x position of the right side of the goal
  */
  
  // declare any variables you need between steps here
  float example;
  
  Behavior() {
    // this is called once per play
    // initialize any constants and state you need here
    example = 0;
  }
  
  /* 
  This is where you write most of your code!
  Return the desired position of the robot.
  
  You're given the current position and velocities of the robot and ball 
  in order to figure out where you want to go.
  
  Hint: To see what functions are available to you, check:
  http://processing.org/reference/
  
  Hint2: a PVector is a vector object that has a TON of useful functions already built in!
  You can use .x and .y to get components, or functions like .dot, .cross, .normalize, .setMag, .rotate
  To do all sorts of tedious vector things easily!
  http://processing.org/reference/PVector.html
  */
  public PVector behave(PVector robot_pos, PVector robot_vel, PVector ball_pos, PVector ball_vel) {
    float x = goal_width / 2 * sin(example) + width/2;
    float y = goal_y;
    
    PVector target = new PVector(x,y);
    
    example += .06;
    
    return target;
  }
}
