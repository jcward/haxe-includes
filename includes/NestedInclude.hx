// Included statements seem to require this expr block
{

  trace("I am an included expression myself...");
  trace("But I'm going to include other expressions!");

  // Note - path still relative to project root
  Include.file("includes/Statements.hx");

  // Sadly, no access to included vars:
  trace("Sadly: I cannot access the included definition of a,");
  trace("compiler says 'Unknown identifier : a'");
  //trace("Note: I can access the included definition of a="+a);

  trace("Same story with included functions.");
  // trace("I can also call included show_sum()");
  // show_sum();
  //
  // trace("I can also call included inlined_show_sum()");
  // inlined_show_sum();

}
