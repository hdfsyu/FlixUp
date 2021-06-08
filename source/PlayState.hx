import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.input.keyboard.FlxKey;
import flixel.input.mouse.FlxMouseEventManager;

class PlayState extends FlxState {
	var sprite:FlxSprite;

	override public function create():Void {
		super.create();
		sprite = new FlxSprite();
		sprite.loadGraphic(AssetPaths.player__png);
		sprite.x = 200;
		sprite.y = 200;
		add(sprite);
		FlxMouseEventManager.add(sprite, function(s:FlxSprite) {
			trace("MouseDown");
		}, function(s:FlxSprite) {
			trace("MouseUp");
		}, function(s:FlxSprite) {
			trace("MouseOver");
		}, onMouseOut);
	}

	override public function update(elapsed:Float):Void {
		super.update(elapsed);
	}

	public function onMouseOut(s:FlxSprite) {
		trace("Mouse Out, sprite at: " + s.x + "," + s.y + " Mouse at: " + FlxG.mouse.getPosition());
		if (FlxG.keys.enabled) {
			if (FlxG.keys.pressed.LEFT)
				sprite.x--;
			if (FlxG.keys.pressed.RIGHT)
				sprite.x++;
			if (FlxG.keys.justReleased.UP)
				sprite.y--;
			if (FlxG.keys.justReleased.DOWN)
				sprite.y++;
			if (FlxG.keys.anyPressed([FlxKey.ESCAPE, FlxKey.SPACE])) {
				sprite.x = FlxG.width / 2 - sprite.width / 2;
				sprite.y = FlxG.height / 2 - sprite.height / 2;
			}
		}
	}
}
