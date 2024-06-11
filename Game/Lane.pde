class Lane{
  int x;
  float touchY;
  float touchYE;
  int label;

  Lane(int x, float tY, float tYE, int l){
    this.x = x;
    touchY = tY;
    touchYE = tYE;
    label = l;
  }  
  void display(){
    stroke(#9d32a8);
    line(x + width/8, 0, x+width/8, height);
  }
  }
    
