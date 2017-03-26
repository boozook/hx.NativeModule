package fzzr.example.test;

import haxe.unit.TestRunner;


class Main
{
	public static function main():Void
	{
		var runner = new TestRunner();
		runner.add(new FooTest());

		var success = runner.run();
#if sys
		Sys.exit(success ? 0 : 1);
#end
	}
}
