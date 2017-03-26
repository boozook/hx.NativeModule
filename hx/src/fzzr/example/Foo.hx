package fzzr.example;


@:keep class Foo
{
	public static var theValue = 42;

	public static function test():Void
	{
		trace("Hello!");
		var fooo = {o:"", p:42, i:.0};
		trace(fooo.o.length);
		trace(fooo);
	}

	public static function getInt():Int
	{
		return theValue++;
	}

	public static function mulInt(i:Int):Int
	{
		return i * (theValue++);
	}

	public static function printStr(s:String):Void
	{
		trace(s);
	}

	public static function printAny(o:Any):Void
	{
		trace(o);
	}
}
