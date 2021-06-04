package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState {
	var sprite:FlxSprite;
	var scaleFactor = 0.1;

	override public function create():Void {
		super.create();
		sprite = new FlxSprite(AssetPaths.player__png);
		sprite.x = FlxG.width / 2 - sprite.width / 2;
		sprite.y = FlxG.height / 2 - sprite.height / 2;
		add(sprite);
	}

	override public function update(elapsed:Float):Void {
		super.update(elapsed);
	}
}
