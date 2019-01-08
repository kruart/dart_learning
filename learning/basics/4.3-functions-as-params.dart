// You can pass a function as a parameter to another function
void printElement(int element) {
  print(element);
}

void main() {
  var list = [1, 2, 3];

  // Pass printElement as a parameter.
  list.forEach(printElement);

  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
  assert(loudify('hello') == '!!! HELLO !!!');
}