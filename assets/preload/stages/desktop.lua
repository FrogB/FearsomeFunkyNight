
function onCreate()
	makeLuaSprite('cubes', 'expunged/exploiter/EXPLOITER3', -1200, -400);
	setScrollFactor('cubes', 1, 1);
	scaleObject('cubes', 3, 3)
	close(true);

	makeLuaSprite('platform', 'expunged/exploiter/EXPLOITERPLATFORM', 380, 675);
	setScrollFactor('platform', 1, 1);
	scaleObject('platform', 2, 2)
	close(true);

	addLuaSprite('cubes', false)
	addLuaSprite('platform', false)
end