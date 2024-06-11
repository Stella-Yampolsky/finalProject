class Circle{
  Lane lane;
  float y;
  float speed;
  color c;
  
  Circle(Lane lane, float speed){
    y = 0;
    this.lane = lane;
    this.speed = speed;
    c = #78ffeb;
  }
  
  void move(){
    y+= speed;
  }
  
  void display(){
    fill(#fafafa);
    circle(lane.x, y, 100 );
    fill(c);
    circle(lane.x, y, 65);
    fill(0);
    circle(lane.x, y, 30);
  }
  
  boolean press(){
   return y > lane.touchY;
   }
  }

  
