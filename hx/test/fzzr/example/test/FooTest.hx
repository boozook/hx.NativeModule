package fzzr.example.test;

import haxe.unit.TestCase;
import fzzr.example.Foo;


class FooTest extends TestCase
{
	function testGetInt()
	{
		assertEquals(42, Foo.getInt());
		assertEquals(43, Foo.getInt());
		assertEquals(44, Foo.getInt());
	}
}
