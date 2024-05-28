class Lane{
  float x;
  float touchY;
  float label;
}
  Lane(float x, float tY, float l){
    this.x = x;
    touchY = tY;
    label = l;
  }
  
  float getX(){
    return x;
  }

  float gettY(){
    return touchY;
  }
  float getLabel(){
    return label();
  }
  
  void display(){
    line(width,height, width, 0 );
    line(width + width/4,height, width + width/4, 0);
  }
    
