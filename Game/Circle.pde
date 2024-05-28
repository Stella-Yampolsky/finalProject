class PCircle{
  Lane lane;
  float y;
  float speed;
  
  PCircle(Lane lane, float speed){
    this.lane = lane;
    this.speed = speed;
  }
  
  void move(){
    y+= speed;
  }
  
  void display(){
    fill(#78ffeb);
    circle(lane.getX(), y, 50 );
  }
  
  //don't need remove method, can apparently just remove from array
