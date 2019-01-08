import 'dart:math';

void main() {
  var rnd = new Random();
  var a = rnd.nextInt(10);

  while (a != 5) {
    print(a);
    a = rnd.nextInt(10);
  }

  a = 5;

  do {  //at least one time will be executed
    print('$a inside do-while');
  } while (a != 5);
}