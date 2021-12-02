package keystone_games.eightflights;

import flixel.FlxGame;
import openfl.Lib;
import openfl.display.Sprite;

class Main extends Sprite
{
	public override function new()
	{
		super();
		preInit();
	}
	
	public function preInit() {
		init();
	}
	
	public function init() {
		Lib.current.addChild(new FlxGame(Reference.flxGameArgs.gameWidth, Reference.flxGameArgs.gameHeight, Reference.flxGameArgs.initialState,
			Reference.flxGameArgs.zoom, Reference.flxGameArgs.framerate, Reference.flxGameArgs.framerate, Reference.flxGameArgs.skipSplash,
			Reference.flxGameArgs.startFullscreen));
		
		postInit();
	}
	
	public function postInit() {
	
	}
}
