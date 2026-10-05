import hxd.Window;
import h2d.Scene;

class BaseState extends Scene
{
	public function init()
	{
		this.scaleMode = LetterBox(640, Window.getInstance().height, null, Center, Center);
	}

	public function update(dt:Float) {}
}
