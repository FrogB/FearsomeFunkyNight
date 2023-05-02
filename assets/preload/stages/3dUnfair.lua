local dalapsed = 0.0;	
function onCreate()
	makeLuaSprite('cubes', 'expunged/deceitcube', -200, 0);
	setScrollFactor('cubes', 0.5, 0.5);
	setProperty('cubes.scale.x',2)
	setProperty('cubes.scale.y',2)

	makeLuaSprite('cubes2', 'expunged/deceitcube2', 1000, 200);
	setScrollFactor('cube2', 0.5, 0.5);

	makeLuaSprite('towershit', 'expunged/tower', 800, 0);
	setScrollFactor('towershit', 0.95, 0.95);
	setProperty('towershit.scale.x',2)
	setProperty('towershit.scale.y',2)

	makeLuaSprite('platform', 'expunged/deceitplatform', 600, 100);
	setScrollFactor('platform', 1, 1);

	makeLuaSprite('spikes', 'expunged/spikes', 400, 100);
	setScrollFactor('spikes', 0.95, 0.95);

	addLuaSprite('cubes', false)
	addLuaSprite('cubes2', false)
	addLuaSprite('towershit', false)
	addLuaSprite('spikes', false)
	addLuaSprite('platform', false)
end