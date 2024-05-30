ArrayList<Circle> Clist;
Lane l1,l2, l3, l4;
float rate;
float ticks;
int point;
float r;
float endZone = 600; //change this into a math thing
void setup(){
  size(1000,800);
  Clist = new ArrayList<Circle>();
  l1 = new Lane(125, endZone, 1);
  l2 = new Lane(375, endZone, 2);
  l3 = new Lane(625, endZone, 3);
  l4 = new Lane(875, endZone, 4);
  rate = 1;
  ticks = 0;
}
//Make them actually scroll down and erase behind
//add score + keypresses + game over
//modify speed for score
//make it look better
void draw(){
  background(173, 216, 230);
  line(0, endZone, width, endZone);
  r = random(4) + 1;
  l1.display();
  l2.display();
  l3.display();
  l4.display();
  Clist.add(new Circle(l2, 2.0));
  Clist.add(new Circle(l3, 2.0));
    for(Circle c: Clist){
      c.display();
      c.move();
      background(173, 216, 230);
    }
}
