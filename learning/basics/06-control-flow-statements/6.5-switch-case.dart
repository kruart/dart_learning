// 1.  omits the break statement in a case clause generating an error:
// 2. However, Dart does support empty case clauses, allowing a form of fall-through:
void main() {
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print("1");
      break;
    case 'PENDING':
      print("2");
      break;
    case 'APPROVED':
      print("3");
      break;
    case 'DENIED':  //empty case
    case 'OPEN':
      print("5");
      break;
    default:
      print("0");
  }
}