package states;

import hxd.res.DefaultFont.get as defaultFont;
import h2d.*;
import hxd.*;
import hxd.Key.*;
import Controls.*;

class World extends BaseState
{
	var debug:Text;

	var tocip:Bitmap;
	var caili:Bitmap;

	var tocipXAcceleration:Float = 0;

	var tocipAccelerationIncrement:Float = 5;
	var tocipAccelerationMax:Float = 50;

	override function init()
	{
		super.init();

		debug = new Text(defaultFont(), this);

		caili = new Bitmap(Tile.fromColor(0x3C00FF, 32, 32), this);
		caili.x = this.width * 0.5;
		caili.y = (this.height * 0.5) - (caili.tile.height * 0.5);

		tocip = new Bitmap(Tile.fromColor(0xFF0000, 32, 32), this);
		tocip.x = this.width * 0.5;
		tocip.y = this.height * 0.5;
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
