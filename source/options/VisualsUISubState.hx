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

class VisualsUISubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Visuals and UI';
		rpcTitle = 'Visuals & UI Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Judgement Counter:',
			"Shows a judgement counter at the left-side of your screen.\nYou can also select how informative you want the counter to be.",
			'judgementCounter',
			'string',
			'Complex',
			['Disabled', 'Simple', 'Complex']);
		addOption(option);

		var option:Option = new Option('Health Bar UI Style:',
			"Which Health Bar UI style do you want the game to show?",
			'healthBarType',
			'string',
			'Dave Engine',
			['Dave Engine', 'Vanilla']);
		addOption(option);

		var option:Option = new Option('Score UI Style:',
			"Which Score UI style do you want the game to show?\nNOTE: Purgatory's style is unfinished due to the NPS counter being broken.",
			'scoreUIType',
			'string',
			'FFN',
			['FFN', 'Psych Engine', 'Dave Engine', 'Purgatory']);
		addOption(option);

		var option:Option = new Option('Icon Bounce Style:',
			"Choose which icon bounce it plays in-game.",
			'iconBounceType',
			'string',
			'FFN',
			['FFN', 'Vanilla', 'Golden Apple', 'David Engine 1', 'David Engine 2', 'Purgatory', 'No Bounce']);
		addOption(option);

		var option:Option = new Option('Time Bar:',
			"What should the Time Bar display?",
			'timeBarType',
			'string',
			'Song and Time Left',
			['Song and Time Left', 'Song and Time Elapsed', 'Song Name']);
		addOption(option);

		var option:Option = new Option('Note Splashes',
			"If unchecked, hitting \"Sick!\" notes won't show particles.",
			'noteSplashes',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Hide HUD',
			'If checked, hides most HUD elements.',
			'hideHud',
			'bool',
			false);
		addOption(option);
		
		var option:Option = new Option('Time Bar:',
			"What should the Time Bar display?",
			'timeBarType',
			'string',
			'Song and Time Left',
			['Song and Time Left', 'Song and Time Elapsed', 'Song Name']);
		addOption(option);

		var option:Option = new Option('Hide Time Bar',
			"If Checked, Hides the Time Bar",
			'hideTime',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option('Eyesores & Flashing Lights',
			"Uncheck this if you're sensitive to flashing lights or fast-flashing colors!\nTurning these off will take away some effects used in some songs.",
			'flashing',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Camera Zooms',
			"If unchecked, the camera won't zoom in on a beat hit.",
			'camZooms',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Score Text Zoom on Hit',
			"If unchecked, disables the Score text zooming\neverytime you hit a note.",
			'scoreZoom',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Health Bar Transparency',
			'How much transparent should the health bar and icons be.',
			'healthBarAlpha',
			'percent',
			1);
		option.scrollSpeed = 1.6;
		option.minValue = 0.0;
		option.maxValue = 1;
		option.changeValue = 0.1;
		option.decimals = 1;
		addOption(option);
		
		#if !mobile
		var option:Option = new Option('FPS Counter',
			'If unchecked, hides FPS Counter.',
			'showFPS',
			'bool',
			true);
		addOption(option);
		option.onChange = onChangeFPSCounter;
		#end
		
		var option:Option = new Option('Pause Screen Song:',
			"What song do you prefer for the Pause Screen?",
			'pauseMusic',
			'string',
			'Tea Time',
			['None', 'Breakfast', 'Tea Time']);
		addOption(option);
		option.onChange = onChangePauseMusic;
		
		#if CHECK_FOR_UPDATES
		var option:Option = new Option('Check for Updates',
			'On Release builds, turn this on to check for updates when you start the game.',
			'checkForUpdates',
			'bool',
			true);
		addOption(option);
		#end

		super();
	}

	var changedMusic:Bool = false;
	function onChangePauseMusic()
	{
		if(ClientPrefs.pauseMusic == 'None')
			FlxG.sound.music.volume = 0;
		else
			FlxG.sound.playMusic(Paths.music(Paths.formatToSongPath(ClientPrefs.pauseMusic)));

		changedMusic = true;
	}

	override function destroy()
	{
		if(changedMusic) FlxG.sound.playMusic(Paths.music('freakyMenu'));
		super.destroy();
	}

	#if !mobile
	function onChangeFPSCounter()
	{
		if(Main.fpsVar != null)
			Main.fpsVar.visible = ClientPrefs.showFPS;
	}
	#end
}