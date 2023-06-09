local dalapsed = 0.0;	
function onCreate()
	makeLuaSprite('cubes', 'expunged/deceitcube', -200, 0);
	setScrollFactor('cubes', 0.5, 0.5);
	setProperty('cubes.scale.x',2)
	setProperty('cubes.scale.y',2)

	makeLuaSprite('cubes2', 'expunged/deceitcube2', 1000, 200);
	setScrollFactor('cube2', 0.5, 0.5);

	makeLuaSprite('towershit', 'expunged/tower', 800, 0);
	setScrollFactor('towershit', 0.1, 0.1);
	setProperty('towershit.scale.x',1.5)
	setProperty('towershit.scale.y',1.5)

	makeLuaSprite('platform', 'expunged/deceitplatform', 600, 100);
	setScrollFactor('platform', 1, 1);

	makeLuaSprite('spikes', 'expunged/spikes', 400, 100);
	setScrollFactor('spikes', 0.95, 0.95);

	addLuaSprite('towershit', false) --whatsdown said to make the tower more distant so i moved it behind everything -frogb
	addLuaSprite('cubes', false)
	addLuaSprite('cubes2', false)
	addLuaSprite('spikes', false)
	addLuaSprite('platform', false)
end

function onCreatePost()
	setProperty('gf.alpha', 0)
end