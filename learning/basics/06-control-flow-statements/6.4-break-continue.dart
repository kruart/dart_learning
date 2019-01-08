void main() {
  bool a = false;
  while (true) {
    if (a) break;
    print('change to true');
    a = true;
  }

  var candidates = [1,2,3,4,5,6,7,8,9];
  for (int i = 0; i < candidates.length; i++) {
    if (candidates[i] % 2 == 0) {
      continue;
    }
    print(candidates[i]);
  }

  print('======================');
  candidates
      .where((c) => c % 2 != 0)
      .forEach((c) => print(c));
}