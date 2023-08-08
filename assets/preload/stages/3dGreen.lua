
function onCreate()
	makeLuaSprite('cubes', 'expunged/cyphercubes', -200, -400);
	setScrollFactor('cubes', 0.5, 0.5);
	close(true);

	makeLuaSprite('platform', 'expunged/cypherplatform', 400, 100);
	setScrollFactor('platform', 1, 1);
	close(true);

	addLuaSprite('cubes', false)
	addLuaSprite('platform', false)
end