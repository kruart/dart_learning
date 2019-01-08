void main() {
  var p = Point(2, 2);
  p.y = 3;
  assert(p.y == 3);
  p?.y = 4; // // If p is non-null, set its y value to 4
}

// If you don’t declare a constructor, a default constructor is provided for you.
class Point {
  num x, y;

  // Syntactic sugar for setting x and y
  // before the constructor body runs.
  Point(this.x, this.y);

  //  Point(num x, num y) {
  //    this.x = x;
  //    this.y = y;
  //  }
}