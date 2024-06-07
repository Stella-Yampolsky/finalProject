ArrayList<Circle> Clist;
Lane l1, l2, l3, l4;
float rate;
float ticks;
float r;
float endZone = 600;
float endZoneE = 700;
int score;
int sScore;
int hiScore;
float speed;
int state;
boolean start;

void setup() {
  size(1000, 800);
  Clist = new ArrayList<Circle>();
  l1 = new Lane(125, endZone, endZoneE, 1);
  l2 = new Lane(375, endZone, endZoneE, 2);
  l3 = new Lane(625, endZone, endZoneE, 3);
  l4 = new Lane(875, endZone, endZoneE, 4);
  score = 0;
  sScore = 0;
  hiScore = 0;
  rate = 100;
  ticks = 0;
  state = 0;
  speed = 2.0;
  start = false;
}

void draw() {
  if(state == 0){
    background(1);
    fill(#ffffff);
    textSize(100);
    text("Press any key to start!", 50, 200);
    fill(#78ffeb);
    text("Press any key to start!", 55, 205);
    if(keyPressed){
      state = 1;
    }
  }
  if(state == 1){
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
      Clist.add(new Circle(l1, speed));
    } else if (r == 2) {
      Clist.add(new Circle(l2, speed));
    } else if (r == 3) {
      Clist.add(new Circle(l3, speed));
    } else if (r == 4) {
      Clist.add(new Circle(l4, speed));
    }
    ticks = 0;
  }
  start = true;

  for (int i = Clist.size() - 1; i >= 0; i--) {
    Circle c = Clist.get(i);
    c.display();
    c.move();
    if (c.y > height) {
      Clist.remove(i);
      state = 3;
    }
  }
  }
  else if (state == 3){
    background(1);
    fill(#FF0000);
    textSize(200);
    text("Game Over", 25, 400);
    textSize(50);
    text("final score: " + score, 350, 450); 
    if(score > hiScore){
      hiScore = score;
    }
    text("high score: " + hiScore, 350, 450); 
    fill(#ffffff);
    textSize(100);
    text("Press any key to start!", 50, 600);
    fill(#78ffeb);
    text("Press any key to start!", 55, 605);
    if(keyPressed){
      state = 1;
    }
  } 
  if(score - sScore >= 1000){
    if(rate >= 30){
      rate -= 5;
      sScore += 1000;
    }
    speed += 0.05;
}
}

void keyPressed() {
  int lane = key - '0';  
  Lane l = null;
  if (lane == 1 && start) {
    l = l1;
  } else if (lane == 2) {
    l = l2;
  } else if (lane == 3) {
    l = l3;
  } else if (lane == 4) {
    l = l4;
  }
  if (l != null && start) {
  //  for (int i = Clist.size() - 1; i >= 0; i--) {
      Circle c = Clist.get(0);
      if (c.lane == l && c.y >= 0 && c.y <= height) {
        score += 200;
        Clist.remove(0);
        
      }
      else{
        state = 3;
      }
   // }
  }
}
