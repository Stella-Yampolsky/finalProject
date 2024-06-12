class Circle {
  Lane lane;
  float y;
  float speed;
  color c;

  Circle(Lane lane, float speed) {
    y = 0;
    this.lane = lane;
    this.speed = speed;
    c = colors[currentColorIndex];
  }

  void move() {
    y += speed;
  }

  void display() {
    fill(#fafafa);
    circle(lane.x, y, 75);
    fill(c);
    circle(lane.x, y, 48.75);
    fill(0);
    circle(lane.x, y, 22.5);
  }
}
