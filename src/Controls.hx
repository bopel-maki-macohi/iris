import hxd.Key.*;

class Controls
{
	public static var KEYS_LEFT = [A, LEFT];
	public static var KEYS_RIGHT = [D, RIGHT];

	public static function isAnyDown(keys:Array<Int>) return [for (key in keys ?? []) isDown(key)].contains(true);
	public static function isAnyPressed(keys:Array<Int>) return [for (key in keys ?? []) isPressed(key)].contains(true);
	public static function isAnyReleased(keys:Array<Int>) return [for (key in keys ?? []) isReleased(key)].contains(true);
}
