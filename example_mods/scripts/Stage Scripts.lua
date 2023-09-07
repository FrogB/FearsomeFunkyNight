local dalapsed = 0.0;
function onUpdatePost(elapsed)
    if songName == 'Cypher' or 'Deceit' or 'Nether' or 'Evocation' or 'Hypercube' or 'Empyrean' then
        dalapsed = dalapsed + elapsed;
        setProperty('cubes.y', -165 + 100 * math.sin((dalapsed - 10) * 0.5));
    end
end

function onStartCountdown()
    if songName == 'Evocation' or 'Hypercube' or 'Empyrean' then
        doTweenAngle('the funny red tunnel spin', 'redTunnel', 14040, 8000, 'quartzInOut'); -- (OLD) Antagonism: First 11 Minutes - Bambi's Purgatory OST
    end
end