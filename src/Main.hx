package;

class Main {
  static function main() {
    trace("main()");
    var foo = new Foo();
    foo.test();
    foo.test_nested();
    foo.test_single();

    // I assume it's not possible to access a varible from this expr's scope?
    // var test_expr = {
    //   var scoped_variable = 123;
    // }
    // trace("scoped_variable="+scoped_variable);
  }
}

class Foo {

  public function new() { }

  // Sadly, including function definitions in impossible, as
  // function calls (even macro calls) seem not to be supported
  // at the class level:

  // Include.file("includes/StaticFunction.hx");

  // Include.file("Function.hx");

  public function test() {
    trace("test()");
    Include.file("includes/Statements.hx");
  }

  public function test_nested() {
    trace("test_nested()");
    Include.file("includes/NestedInclude.hx");
  }

  public function test_single() {
    trace("test_single()");
    Include.file("includes/SingleStatement.hx");
    trace("Ah ha, I can access greet="+greet);
  }

}
