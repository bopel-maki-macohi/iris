package;

import hxd.res.DefaultFont;
import h2d.Text;
import hxd.Window;
import hxd.App;

class Main extends App
{
	static function main() new Main();

	override function init()
	{
		super.init();

		var text = new Text(DefaultFont.get(), this.s2d);
        text.text = 'Iris';
	}
}
