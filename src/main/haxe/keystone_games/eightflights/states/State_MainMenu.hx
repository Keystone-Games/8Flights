package keystone_games.eightflights.states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class State_MainMenu extends FlxState
{
	public static var title:FlxText;
	public static var how_to_play:FlxText;
	public static var howToPlay_overlay = new FlxSprite().makeGraphic(1920, 1080, FlxColor.BLACK);
	public static var howToPlay_title = new FlxText(0, 0, 0, "HOW TO PLAY").setFormat(null, 40, FlxColor.LIME, CENTER);

	public override function create()
	{
		super.create();

		title = new FlxText(0, 0, 0, "8Flights").setFormat(null, 72, FlxColor.LIME, CENTER);
		title.screenCenter(X);
		add(title);

		how_to_play = new FlxText(0, 0, 0, "How to play").setFormat(null, 36, FlxColor.LIME, CENTER);
		how_to_play.setPosition(0, 1000);
		add(how_to_play);
	}

	public override function update(dt:Float)
	{
		super.update(dt);

		if (FlxG.mouse.overlaps(how_to_play))
		{
			how_to_play.bold = true;
			if (FlxG.mouse.justPressed) {}
		}
		else
		{
			how_to_play.bold = true;
		}
	}
}
