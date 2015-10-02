package;

class Include
{

  // TODO: parse, don't require { }
  // 1) remove comments
  // 2) parse: { } ;
  // Seems like this code should already exist... maybe parse isn't
  // the function to call?
  macro public static function todo_file(fileName:String) {
    return haxe.macro.Context.parseInlineString(sys.io.File.getContent(fileName), haxe.macro.Context.currentPos());
  }

  // Can only handle one expression, so requires { }, which breaks
  // outer access to included variables (because of scope)
  macro public static function file(fileName:String) {
    return haxe.macro.Context.parse(sys.io.File.getContent(fileName), haxe.macro.Context.currentPos());
  }

}
