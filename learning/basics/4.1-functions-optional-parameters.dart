void main() {
  print(isEqualsToFive(4));
  print(isBiggerThanSeven(8));
  enableFlags(bold: true, hidden: false); // you can specify named parameters
  assert(say('Bob', 'Howdy') == 'Bob says Howdy');  // third param is optional
  assert(say('Bob', 'Howdy', 'smoke signal') == 'Bob says Howdy with a smoke signal');
  enableFlags2(bold: true); // bold will be true; hidden will be false.
  assert(say2('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');
}

// bool isNoble(atomicNumber) { it's also compiled by recommendation is to specify param type

bool isEqualsToFive(int atomicNumber) {
  return atomicNumber == 5;
}

// For functions that contain just one expression, you can use a shorthand syntax
bool isBiggerThanSeven(int atomicNumber) => atomicNumber > 7;

// When defining a function, use {param1, param2, …} to specify named parameters
void enableFlags({bool bold, bool hidden}) {}

//optional param
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// Default parameter values
/// Sets the [bold] and [hidden] flags ...
void enableFlags2({bool bold = false, bool hidden = false}) {}

// The next example shows how to set default values for positional parameters
String say2(String from, String msg, [String device = 'carrier pigeon', String mood]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  return result;
}


void doStuff({List<int> list = const [1, 2, 3],
  Map<String, String> gifts = const {
        'first': 'paper',
        'second': 'cotton',
        'third': 'leather'
      }}) {
  print('list:  $list');
  print('gifts: $gifts');
}



