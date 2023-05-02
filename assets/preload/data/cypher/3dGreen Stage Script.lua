local dalapsed = 0.0;
function onCreatePost()
    setProperty('gf.alpha', 0)
end

function onUpdatePost(elapsed)
    dalapsed = dalapsed + elapsed;
    setProperty('cubes.y', -165 + 100 * math.sin((dalapsed - 10) * 0.5));
end