package keystone_games.eightflights;

import flixel.FlxGame;
import keystone_games.eightflights.sounds.SoundManager;
import openfl.Lib;
import openfl.display.Sprite;

class Main extends Sprite
{
	public override function new()
	{
		super();
		preInit();
	}

	public function preInit()
	{
		trace("Start of engine pre-initialisation");
		init();
		trace("End of engine pre-initialisation");
	}

	public function init()
	{
		trace("Start of core initialisation");
		SoundManager.init();
		postInit();
		trace("End of core initialisation");
	}

	public function postInit()
	{
		trace("Start of game post-initialisation");
		Lib.current.addChild(new FlxGame(Reference.flxGameArgs.gameWidth, Reference.flxGameArgs.gameHeight, Reference.flxGameArgs.initialState,
			Reference.flxGameArgs.zoom, Reference.flxGameArgs.framerate, Reference.flxGameArgs.framerate, Reference.flxGameArgs.skipSplash,
			Reference.flxGameArgs.startFullscreen));
		trace("End of game post-initialisation");
	}
}
