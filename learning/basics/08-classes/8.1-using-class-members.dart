void main() {
  var p = Point(2, 2);
  p.y = 3;
  assert(p.y == 3);
  p?.y = 4; // // If p is non-null, set its y value to 4
}

class Point {
  num x, y;

  Point(num x, num y) {
    this.x = x;
    this.y = y;
  }
}