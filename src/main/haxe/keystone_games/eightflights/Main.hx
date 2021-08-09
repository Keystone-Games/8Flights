package keystone_games.eightflights;

import flixel.FlxGame;
import openfl.Lib;
import openfl.display.Sprite;

class Main extends Sprite
{
	public override function new()
	{
		super();
		Lib.current.addChild(new FlxGame(Reference.flxGameArgs.gameWidth, Reference.flxGameArgs.gameHeight, Reference.flxGameArgs.initialState,
			Reference.flxGameArgs.zoom, Reference.flxGameArgs.framerate, Reference.flxGameArgs.framerate, Reference.flxGameArgs.skipSplash,
			Reference.flxGameArgs.startFullscreen));
	}
}
