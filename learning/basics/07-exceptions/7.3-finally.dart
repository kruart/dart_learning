void main() {
  try {
    throw FormatException("String format is wrong!");
  }  catch (e) {
    print('catch block');
  } finally {
    // Always clean up, even if an exception is thrown.
    print("finnaly block");
  }


  try {
    throw FormatException("String format is wrong!");
  } finally {
    // Always clean up, even if an exception is thrown.
    print("doing something");
  }
}