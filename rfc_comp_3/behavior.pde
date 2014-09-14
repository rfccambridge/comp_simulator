int testing_mode = 1; //0 for scoring, 1 for slow scoring, 2 for manual ball control

class Behavior {
  
  // declare any variables you need between steps here
  
  Behavior() {
    // this is called once per play
    // initialize any constants and state you need here
  }
  
  /* 
  This is the final problem!
  You're given a target location, and you want to move there
  and stop as quickly as possible.
  Return the desired acceleration of the robot. (capped)
  
  Hint: http://en.wikipedia.org/wiki/PID_control
  
  Target: average time = 30
  */
  public PVector behave(PVector robot_pos, PVector robot_vel, PVector target) {
    
    // just accelerate towards the ball :p
    return PVector.sub(target,robot_pos);
  }
}
