ArrayList<Circle> Clist;
Lane l1, l2, l3, l4;
float rate;
float ticks;
float r;
float endZone = 600;

void setup() {
  size(1000, 800);
  Clist = new ArrayList<Circle>();
  l1 = new Lane(125, endZone, 1);
  l2 = new Lane(375, endZone, 2);
  l3 = new Lane(625, endZone, 3);
  l4 = new Lane(875, endZone, 4);
  rate = 60;
  ticks = 0;
}

void draw() {
  background(173, 216, 230);
  line(0, endZone, width, endZone);
  l1.display();
  l2.display();
  l3.display();
  l4.display();

  ticks++;

  if (ticks >= rate) {
      r = int(random(4)) + 1;
    if (r == 1) {
      Clist.add(new Circle(l1, 2.0));
    } 
    else if (r == 2) {
      Clist.add(new Circle(l2, 2.0));
    } 
    else if (r == 3) {
      Clist.add(new Circle(l3, 2.0));
    } 
    else if (r == 4) {
      Clist.add(new Circle(l4, 2.0));
    }
    ticks = 0;
  }

  for (int i = Clist.size() - 1; i >= 0; i--) {
    Circle c = Clist.get(i);
    c.display();
    c.move();
    if (c.y > height) {
      Clist.remove(i);
    }
  }
}
