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
	public static var howToPlay_overlay:FlxSprite;
	public static var howToPlay_title:FlxText;
	public static var howToPlay_desc:FlxText;
	public static var play_button:FlxText;

	public override function create()
	{
		super.create();

		title = new FlxText(0, 0, 0, "8Flights").setFormat(null, 72, FlxColor.LIME, CENTER);
		title.screenCenter(X);
		add(title);

		play_button = new FlxText(0, 0, 0, "Play").setFormat(null, 144, FlxColor.fromString("0x9955ff"), CENTER);
		play_button.screenCenter(XY);
		add(play_button);

		howToPlay_overlay = new FlxSprite().makeGraphic(960, 540, FlxColor.GRAY);
		howToPlay_overlay.screenCenter(XY);
		add(howToPlay_overlay);

		how_to_play = new FlxText(0, 0, 0, "How to play").setFormat(null, 36, FlxColor.LIME, CENTER);
		how_to_play.setPosition(0, 1000);
		add(how_to_play);

		howToPlay_title = new FlxText(0, 0, 0, "HOW TO PLAY").setFormat(null, 64, FlxColor.LIME, CENTER);
		howToPlay_title.screenCenter(XY);
		howToPlay_title.y -= howToPlay_overlay.height / 2;
		add(howToPlay_title);

		howToPlay_desc = new FlxText(0, 0, 0, "WIP").setFormat(null, 40, FlxColor.LIME, CENTER);
		howToPlay_desc.screenCenter(XY);
		add(howToPlay_desc);

		howToPlay_overlay.visible = false;
		howToPlay_title.visible = false;
		howToPlay_desc.visible = false;
	}

	public override function update(dt:Float)
	{
		super.update(dt);

		if (FlxG.mouse.overlaps(how_to_play))
		{
			how_to_play.size = 48;
			if (FlxG.mouse.justPressed && howToPlay_overlay.visible)
			{
				howToPlay_overlay.visible = false;
				howToPlay_title.visible = false;
				howToPlay_desc.visible = false;
			}
			else if (FlxG.mouse.justPressed && !howToPlay_overlay.visible)
			{
				howToPlay_overlay.visible = true;
				howToPlay_title.visible = true;
				howToPlay_desc.visible = true;
			}
		}
		else
		{
			how_to_play.size = 36;
		}

		if (FlxG.mouse.overlaps(play_button))
		{
			if (FlxG.mouse.justPressed)
			{
				FlxG.switchState(new State_Map());
			}
		}
	}
}
