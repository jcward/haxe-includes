{

  var a = 1;
  var b = 2;

  inline function inlined_show_sum() {
    trace("sum is: "+(a+b));
  }

  function show_sum() {
    trace("sum is: "+(a+b));
  }

  trace("Hi, I'm Statements.hx...");
  show_sum();

}
