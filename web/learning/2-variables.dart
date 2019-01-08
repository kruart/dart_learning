void main() {
  var name1 = 'Bob';      // infer type
  dynamic name2 = 'Bob';  // If an object isn’t restricted to a single type, specify the Object or dynamic type
  String name3 = 'Bob';   // explicitly declare the type that would be inferred


  /* Uninitialized variables have an initial value of null Even variables with numeric types are initially null,
  * because numbers—like everything else in Dart—are objects. */
  int lineCount;
  assert(lineCount == null);

  //  If you never intend to change a variable, use final or const, either instead of var or in addition to a type.
  // Instance variables can be final but not const.
  final name = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';
  //  name = 'Alice'; // Error: a final variable can only be set once.
  final String now = DateTime.now().toString();

  // Const variables are implicitly final.
  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere
  //  const String now2 = DateTime.now().toString();  //error, we can't assigned a value which would be to calculate at runtime

  /* The const keyword isn’t just for declaring constant variables. You can also use it to create constant values,
  as well as to declare constructors that create constant values. Any variable can have a constant value.*/
  var foo = const [];
  final bar2 = const [];
  const baz = []; // Equivalent to `const []`
  // You can change the value of a non-final, non-const variable, even if it used to have a const value:
  foo = [1, 2, 3]; // Was const []

  //  baz = [42]; // Error: Constant variables can't be assigned a value.
}
