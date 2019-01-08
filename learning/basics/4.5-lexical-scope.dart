bool topLevel = true;

void main() {
  var insideMain = true;

  void myFunction() {

    void nestedFunction() {
      var insideFunction = true;
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideNestedFunction);
      assert(insideFunction);
    }
  }
}