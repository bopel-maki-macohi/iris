import hxd.Res;

class Main
{
	static function main()
	{
        Res.initLocal();
        Res.initEmbed();

        Game.instance;
		Game.switchState(new states.World());
	}
}
