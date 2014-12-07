package ;


/**
 * Created by Alexander Kozlovskij aka "fzzr".
 * Date: 28.11.14
 * Thx for: Sergey "zzzzzzerg" Miryanov   &   Ivan "suhinini" Suhinin
 */
@:headerCode
class HxModule
{
	//----------- properties, fields ------------//


	//--------------- constructor ---------------//
	public static function main()
	{
		Sys.println('Hello from HxModule: "${test()}"');
	}


	//--------------- initialize ----------------//

	//---------------- control ------------------//

	@:headerCode
	public static function test():Int
	{
		return 101;
	}

	//----------- handlers, callbacks -----------//

	//--------------- accessors -----------------//
}