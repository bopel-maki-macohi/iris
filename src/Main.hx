import hxd.Res;

class Main
{
	static function main()
	{
        Res.initEmbed();
        
		Game.instance;
		Game.switchState(new states.World());
	}
}
