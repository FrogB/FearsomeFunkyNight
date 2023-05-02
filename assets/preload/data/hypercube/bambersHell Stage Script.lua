local dalapsed = 0.0;
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