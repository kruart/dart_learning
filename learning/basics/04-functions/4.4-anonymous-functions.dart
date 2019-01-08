void main() {
  var list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {   // closure
    print('${list.indexOf(item)}: $item');
  });

  // If the function contains only one statement, you can shorten it using arrow notation
  list.forEach((item) => print('${list.indexOf(item)}: $item'));
}