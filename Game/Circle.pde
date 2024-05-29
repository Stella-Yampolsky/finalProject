class Circle{
  Lane lane;
  float y;
  float speed;
  
  Circle(Lane lane, float speed){
    y = 0;
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
}
  
  //don't need remove method, can apparently just remove from array
