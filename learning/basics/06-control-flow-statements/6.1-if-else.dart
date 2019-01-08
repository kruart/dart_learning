void main() {
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }

  print(message);

  print("========================");
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print('Hello $i'));
  }
  callbacks.forEach((c) => c());

  print("========================");
  var candidates = ['first', 'second', 'third'];
  candidates.forEach((candidate) => print(candidate));  // if object is Iterable

  print("========================");
  // for in loop
  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x); // 0 1 2
  }
}