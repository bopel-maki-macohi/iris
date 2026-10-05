package;

import hxd.res.DefaultFont.get as defaultFont;
import h2d.*;
import hxd.*;
import hxd.Key.*;
import Controls.*;

// TODO: State system
class Main extends App
{
	static function main() new Main();

	var debug:Text;

	var tocip:Bitmap;
	var caili:Bitmap;

	var tocipXAcceleration:Float = 0;

	var tocipAccelerationIncrement:Float = 5;
	var tocipAccelerationMax:Float = 50;

	override function init()
	{
		super.init();

		debug = new Text(defaultFont(), s2d);

		caili = new Bitmap(Tile.fromColor(0x3C00FF, 32, 32), s2d);
		caili.x = s2d.width * 0.5;
		caili.y = (s2d.height * 0.5) - (caili.tile.height * 0.5);

		tocip = new Bitmap(Tile.fromColor(0xFF0000, 32, 32), s2d);
		tocip.x = s2d.width * 0.5;
		tocip.y = s2d.height * 0.5;
	}

	override function update(dt:Float)
	{
		if (isAnyDown(KEYS_LEFT) || isAnyDown(KEYS_RIGHT))
		{
			if (isAnyDown(KEYS_LEFT)) tocipXAcceleration += -tocipAccelerationIncrement;
			if (isAnyDown(KEYS_RIGHT)) tocipXAcceleration += tocipAccelerationIncrement;

			if (tocipXAcceleration > tocipAccelerationMax) tocipXAcceleration = tocipAccelerationMax;
			if (tocipXAcceleration < -tocipAccelerationMax) tocipXAcceleration = -tocipAccelerationMax;
		}

		tocipXAcceleration = Math.lerp(tocipXAcceleration, 0, 5 * dt);

		tocip.x += tocipXAcceleration * dt;

		debug.text = '$tocipXAcceleration';
	}
}
