class Main
{
	static function main()
	{
		new Game();
		Game.switchState(new states.World());
	}
}
