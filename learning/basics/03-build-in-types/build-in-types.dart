/*The Dart language has special support for the following types:
  - numbers
  - strings
  - booleans
  - lists (also known as arrays)
  - maps
  - runes (for expressing Unicode characters in a string)
  - symbols */

void main() {
  number_type();
  string_type();
  boolean_type();
  list_type();
  map_type();
  rune_type();
  symbol_type();
}

void number_type() {
  // https://www.dartlang.org/guides/language/language-tour#numbers
  /* Dart numbers come in two flavors:
  *   - int 64-bit
  *   - double 64-bit
  * Both int and double are subtypes of num. */
  var x = 1;
  var hex = 0xDEADBEEF;

  var y = 1.1;
  var exponents = 1.42e5;
  double z = 1; // Equivalent to double z = 1.0. From Dart 2.1

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 >> 1) == 1); // 0011 >> 1 == 0001
  assert((3 | 4) == 7); // 0011 | 0100 == 0111

  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;
}

void string_type() {
  // A Dart string is a sequence of UTF-16 code units. You can use either single or double quotes to create a string
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  // string interpolation
  var s = 'string interpolation';
  assert('Dart has $s, which is very handy.' == 'Dart has string interpolation, which is very handy.');
  assert('That deserves all caps. ${s.toUpperCase()} is very handy!' == 'That deserves all caps. STRING INTERPOLATION is very handy!');

  //  Another way to create a multi-line string: use a triple quote with either single or double quotation marks
  var ml1 = '''
You can create
multi-line strings like this one.
''';

  var ml2 = """This is also a
multi-line string.""";

  // You can create a “raw” string by prefixing it with r:
  var raw = r'In a raw string, not even \n gets special treatment.';


  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
  // const invalidConstString = '$aNum $aBool $aString $aConstList';
}

void boolean_type() {
  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

  // Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

  // Check for null.
  var unicorn;
  assert(unicorn == null);

  // Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
}

void list_type() {
  var list = [1, 2, 3]; // The analyzer infers that list has type List<int>
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

  // To create a list that’s a compile-time constant, add const before the list literal
  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // Uncommenting this causes an error.
}

void map_type() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  assert(gifts.length == 3);
  gifts['fourth'] = 'calling birds';  // Add a new key-value pair to an existing map
  assert(gifts.length == 4);

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  assert(nobleGases[10] == 'neon');
  // If you look for a key that isn’t in a map, you get a null in return:
  assert(nobleGases[11] == null);

  // To create a map that’s a compile-time constant, add const before the map literal
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

 // constantMap[2] = 'Helium'; // Uncommenting this causes an error.
}

void rune_type() {
  // In Dart, runes are the UTF-32 code points of a string.
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes('\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));
}

void symbol_type() {
  print(#radix);
  print(#bar);
}