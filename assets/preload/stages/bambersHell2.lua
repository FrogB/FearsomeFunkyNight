local dalapsed = 0.0;
function onCreate()
	makeLuaSprite('BG3','purgatory/NightEffect',-600,-200) --ok the alpha shit somehow didnt work in source im gonna do it here lmao
	setLuaSpriteScrollFactor('BG3', 0, 0)
	setProperty('BG3.alpha',0.7)
	--setting it so that it doesn't affect people who have super low camera zoom offsets
	setProperty('BG3.scale.x',10)
	setProperty('BG3.scale.y',10)

	makeLuaSprite('redTunnel', 'purgatory/helltunnel', -350, -600);
	setScrollFactor('redTunnel', 0.2, 0.2); -- wanted to keep it in the middle so DO NOT SCROLL
	setProperty('redTunnel.scale.x',0.7)
	setProperty('redTunnel.scale.y',0.7)
	close(true);

	makeLuaSprite('cubes', 'purgatory/cube', -50, -100);
	setScrollFactor('cubes', 0.5, 0.5);
	setProperty('cubes.scale.x',1.5)
	setProperty('cubes.scale.y',1.5)
	close(true);

	makeLuaSprite('platform', 'purgatory/platform', 0, 750);
	setScrollFactor('platform', 1, 1);
	setProperty('platform.scale.x',1.5)
	setProperty('platform.scale.y',1.5)
	close(true);

	addLuaSprite('BG3', false)
	addLuaSprite('redTunnel', false)
	addLuaSprite('cubes', false)
	addLuaSprite('platform', false)
end

function onStartCountdown()
	doTweenAngle('the funny red tunnel spin', 'redTunnel', 14040, 8000, 'quartzInOut'); -- (OLD) Antagonism: First 11 Minutes - Bambi's Purgatory OST
end

function onCreatePost()
    setProperty('gf.alpha', 0)
end

function onUpdatePost(elapsed)
    dalapsed = dalapsed + elapsed;
    setProperty('cubes.y', -165 + 100 * math.sin((dalapsed - 10) * 0.5));
end