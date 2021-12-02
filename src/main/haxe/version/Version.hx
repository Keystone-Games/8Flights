package version;

using StringTools;

class Version
{
	public static function mmp(major:Int, minor:Int, patch:Int):String
	{
		return major + "." + minor + "." + patch;
	}

	public static function mmbu(major:Int, minor:Int, build:Int, update:Int):String
	{
		return major + "." + minor + "." + build + "." + update;
	}
}
