package keystone_games.eightflights;

import keystone_games.eightflights.states.State_MainMenu;
import version.Version;

class Reference
{
	public static final APP_NAME = "8Flights";
	public static final APP_ID = "eightflights";
	public static final VERSION = Version.mmp(1, 0, 0);

	public static final flxGameArgs = {
		gameWidth: 0,
		gameHeight: 0,
		initialState: State_MainMenu,
		zoom: 1,
		framerate: 360,
		skipSplash: true,
		startFullscreen: true
	};
}
