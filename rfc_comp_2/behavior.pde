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
    example = .01;
  }
  
  /* 
  This time the problem is a bit harder!
  return the position, but now the robot has a limited speed.
  
  Make sure you don't go off the edge of the screen, because that will count as a loss.
  
  Hint: You might want to keep your answer from part 1 and add some heuristics to stay in a better position between shots
  
  Target: 90/100
  */
  public PVector behave(PVector robot_pos, PVector robot_vel, PVector ball_pos, PVector ball_vel) {
    // silly solution
    PVector target = ball_pos;
    
    example = example + 1;
    
    return target;
  }
}
