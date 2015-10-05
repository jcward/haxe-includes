// Included statements seem to require this expr block
@:mergeBlock
{

  trace("I am an included expression myself...");
  trace("But I'm going to include other expressions!");

  // Note - path still relative to project root
  Include.file("includes/Statements.hx");

  // with @:mergeBlock in the Statements.hx, you can
  // access the definitions in those blocks.
  trace("Note: I can access the included definition of a="+a);

  trace("I can also call included show_sum()");
  show_sum();

  trace("I can also call included inlined_show_sum()");
  inlined_show_sum();

}
