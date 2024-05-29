ArrayList<Circle> Clist;
Lane l1,l2, l3, l4;
//float rate;
float endZone = 600; //change this into a math thing
void setup(){
  size(1000,800);
  Clist = new ArrayList<Circle>();
  l1 = new Lane(125, endZone, 1);
  l2 = new Lane(375, endZone, 2);
  l3 = new Lane(625, endZone, 3);
  l4 = new Lane(875, endZone, 4);
}
void draw(){
  l1.display();
  l2.display();
  l3.display();
  l4.display();
  Circle c = new Circle(l1, 2);
  c.display();
  c.move();
}
