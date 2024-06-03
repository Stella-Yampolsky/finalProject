ArrayList<Circle> Clist;
Lane l1, l2, l3, l4;
float rate;
float ticks;
float r;
float endZone = 600;
float endZoneE = 700;
int score;
boolean cont;

void setup() {
  size(1000, 800);
  Clist = new ArrayList<Circle>();
  l1 = new Lane(125, endZone, endZoneE, 1);
  l2 = new Lane(375, endZone, endZoneE, 2);
  l3 = new Lane(625, endZone, endZoneE, 3);
  l4 = new Lane(875, endZone, endZoneE, 4);
  score = 0;
  rate = 60;
  ticks = 0;
  cont = true;
}

void draw() {
  if(cont){
  background(173, 216, 230);
  line(0, endZone, width, endZone);
  line(0, endZoneE, width, endZoneE);
  l1.display();
  l2.display();
  l3.display();
  l4.display();
  textSize(50);
  fill(1);
  text("score:" + score, 25, 50);
  ticks++;

  if (ticks >= rate) {
    r = int(random(4)) + 1;
    if (r == 1) {
      Clist.add(new Circle(l1, 2.0));
    } else if (r == 2) {
      Clist.add(new Circle(l2, 2.0));
    } else if (r == 3) {
      Clist.add(new Circle(l3, 2.0));
    } else if (r == 4) {
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
  else{
    background(1);
    fill(#FF0000);
    textSize(200);
    text("Game Over", 25, 400);
    textSize(50);
    text("final score: " + score, 350, 450); 
  }
}

void keyPressed() {
  int lane = key - '0';  
  Lane l = null;
  if (lane == 1) {
    l = l1;
  } else if (lane == 2) {
    l = l2;
  } else if (lane == 3) {
    l = l3;
  } else if (lane == 4) {
    l = l4;
  }
  if (l != null) {
    for (int i = Clist.size() - 1; i >= 0; i--) {
      Circle c = Clist.get(i);
      if (c.lane == l && c.y >= l.touchY && c.y <= l.touchYE) {
        score += 200;
        Clist.remove(i);
        
      }
      else{
        cont = false;
      }
    }
  }
}
