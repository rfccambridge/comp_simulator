int testing_mode = 1; //0 for fast, 1 for slow scoring, 2 for manual ball control

class Behavior {
  
  /* GLOBAL CONSTANTS AVAILABLE TO YOU
  int goal_height;
  int goal_width;
  
  int goal_y; // y position of the start of the top of the goal. this is also the baseline of the field
  int goal_xl; // x position of the left side of the goal
  int goal_xr; // x position of the right side of the goal
  int goal_center_x; // x position of center of goal
  int goal_center_y; //
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
  Return the desired velocity of the robot. (capped at a magnitude of 5)
  
  Make sure you don't go off the edge of the screen, because that will count as a loss.
  
  Hint: You might want to keep your answer from part 1 (where you want the robot to go)
  and then set the velocity to get there. What makes this part harder is that it might take
  a while to get there now :)
  
  Target: 90/100
  */
  public PVector behave(PVector shot_pos, ArrayList<Robot> robots) {
    // silly solution
    PVector target = new PVector(goal_xl + goal_width/2, goal_y);
    
    //the location of the first defender:
    PVector defender1 = robots.get(1).get_pos();
    
    example = example + 1;
    
    return target;
  }
}
