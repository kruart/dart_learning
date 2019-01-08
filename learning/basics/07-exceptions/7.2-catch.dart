void main() {
  var arr = [];
  try {
    arr[1];
  } on FormatException {
    // A specific exception
    print('a');
  } on Exception catch (e) {
    // Anything else that is an exception
    print('Unknown exception: $e');
  } catch (e, s) { //second optional param is stackTrace
    // No specified type, handles all
    print('Something really unknown: $e');
  }

  print('==============');
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
}

void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}