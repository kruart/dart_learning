void main() {
  var value = "fsd";

  var a = value;  // Assign value to a
  var b = null;
  b ??= value;    // Assign value to b if b is null; otherwise, b stays the same

  var c = 2; // Assign using =
  c *= 3; // Assign and multiply: a = a * 3
  assert(c == 6);
}  