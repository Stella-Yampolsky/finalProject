class Circle{
  Lane lane;
  float y;
  float speed;
  
  Circle(Lane lane, float speed){
    this.lane = lane;
    this.speed = speed;
  }
  
  void move(){
    y+= speed;
  }
  
  
