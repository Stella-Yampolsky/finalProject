class Lane{
  float x;
  float noTouchY;
  float touchY;
  float label;
}
  Lane(float x, float nTY, float tY, float l){
    this.x = x;
    noTouchY = nTY;
    touchY = tY;
    label = l;
  }
  
  float getX(){
    return x;
  }
  float getnTY(){
    return noTouchY;
  }
  float gettY(){
    return touchY;
  }
  float getLabel(){
    return label();
  }
  
  void display(){
    //make 2 lines, one at x, one width/4 from x
  }
    
