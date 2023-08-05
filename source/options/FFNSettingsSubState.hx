package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

using StringTools;

class FFNSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'FFN-Related Settings';
		rpcTitle = 'FFN-Related Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Camera Follows on Note Hit',
			'If checked, the camera follows the direction of the note hit.',
			'cameraFollowsNote',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Sections Note Combo',
			"If checked, shows a note combo counter with the number of notes you hit in a section.\n(Script by Stilic)",
			'noteCombo',
			'bool',
			true);
		addOption(option);

		super();
	}
}