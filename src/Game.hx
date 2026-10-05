package;

import states.World;
import hxd.res.DefaultFont.get as defaultFont;
import h2d.*;
import hxd.*;
import hxd.Key.*;
import Controls.*;

class Game extends App
{
	public static var instance(get, null):Game;

	static function get_instance():Game
	{
		if (instance == null) instance = new Game();
		return instance;
	}

	public static var state:BaseState;

	public static function switchState(incomingState:BaseState)
	{
		state?.dispose();
		state = incomingState;
		state.init();
		instance.setScene(state);
	}

	override function update(dt:Float)
	{
		super.update(dt);
		state?.update(dt);
	}
}
