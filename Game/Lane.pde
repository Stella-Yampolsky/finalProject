class Lane{
  int x;
  float touchY;
  int label;

  Lane(int x, float tY, int l){
    this.x = x;
    touchY = tY;
    label = l;
  }
  
  int getX(){
    return x;
  }

  float gettY(){
    return touchY;
  }
  int getLabel(){
    return label;
  }
  
  void display(){
    stroke(1);
    line(x + width/8, 0, x+width/8, height);
  }
  }
    
