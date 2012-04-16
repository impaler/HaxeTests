package;

import nme.display.MovieClip;
import nme.Lib;
import nme.display.StageAlign;
import nme.display.StageScaleMode;
import nme.events.Event;

import org.flixel.FlxGame;

class Main extends MovieClip {

	public function new () {
		super ();

		if (stage != null)
			init (); else
			addEventListener (Event.ADDED_TO_STAGE,init);
	}

	private function init (?e:Event = null):Void {
		if (hasEventListener (Event.ADDED_TO_STAGE)) {
			removeEventListener (Event.ADDED_TO_STAGE,init);
		}

		Lib.current.stage.align = StageAlign.TOP_LEFT;
		Lib.current.stage.scaleMode = StageScaleMode.NO_SCALE;

		var demo:FlxGame = new EZPlatformer();
		addChild (demo);
	}

	public static function main () {
		Lib.current.addChild (new Main());
	}

}
