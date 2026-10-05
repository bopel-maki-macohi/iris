package;

import hxd.res.DefaultFont;
import h2d.*;
import hxd.*;

class Main extends App
{
	static function main() new Main();

	var bmp:Bitmap;
	var text:Text;

	override function init()
	{
		super.init();

		text = new Text(DefaultFont.get(), this.s2d);

		bmp = new Bitmap(Tile.fromColor(0xFF0000, 100, 100), s2d);
		bmp.x = s2d.width * 0.5;
		bmp.y = s2d.height * 0.5;
	}

	override function update(dt:Float)
	{
        text.text = 'Iris $dt';
		bmp.rotation += 10 * dt;
	}
}
