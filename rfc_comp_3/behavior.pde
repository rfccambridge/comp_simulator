int testing_mode = 1; //0 for scoring, 1 for slow scoring, 2 for manual ball control

class Behavior {
  
  // declare any variables you need between steps here
  PVector p,i,d;
  
  float cp = 5;
  float cd = -30;
  float ci = 0;
  
  Behavior() {
    // this is called once per play
    // initialize any constants and state you need here
    p = new PVector();
    i = new PVector();
    d = new PVector();
  }
  
  /* 
  This is the final problem!
  You're given a target location, and you want to move there
  and stop as quickly as possible.
  Return the desired acceleration of the robot. (capped)
  
  Hint: http://en.wikipedia.org/wiki/PID_control
  */
  public PVector behave(PVector robot_pos, PVector robot_vel, PVector target) {
    
    // just accelerate towards the ball :p
    p = PVector.sub(target,robot_pos);
    d = robot_vel;
    i.add(p);
    
    PVector output = new PVector(0,0);
    output.add(PVector.mult(p,cp));
    output.add(PVector.mult(i,ci));
    output.add(PVector.mult(d,cd));
    
    return output;
  }
}
