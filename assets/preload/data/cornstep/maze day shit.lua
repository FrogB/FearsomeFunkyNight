--was going to do this in haxe but i forgot how to lmao -frogb

function onCreatePost()
	makeLuaSprite('NoonEffect', 'bambi/NoonEffect', 0, 0)
	addLuaSprite('NoonEffect',true)
	setObjectCamera('NoonEffect', 'camgame')
	setProperty('NoonEffect.scale.x', 12.5);
    setProperty('NoonEffect.scale.y', 12.5);
	setProperty('NoonEffect.alpha', 0.0)

	makeLuaSprite('NightEffect', 'bambi/NightEffect', 0, 0)
	addLuaSprite('NightEffect',true)
	setObjectCamera('NightEffect', 'camgame')
	setProperty('NightEffect.scale.x', 12.5);
    setProperty('NightEffect.scale.y', 12.5);
	setProperty('NightEffect.alpha', 0.0)
end

function onSongStart() --I DONT KNOW DOING IT AS CURSTEPS CRASHES IT
	doTweenAlpha('TurningNoon', 'NoonEffect', 0.7, 80.1, quadIn)
	doTweenAlpha('TurningNoon2', 'DayBG', 0, 80.1, quadOut)
	doTweenAlpha('TurningNoon3', 'NoonBG', 1, 80.1, quadOut)
end

function onUpdate(elapsed)

	--if curStep == ??? then
		--doTweenAlpha('TurningNight05', 'NoonEffect', 0.0, 35, quadIn)
		--doTweenAlpha('TurningNight1', 'NightEffect', 0.6, 35, quadIn)
		--doTweenAlpha('TurningNight2', 'NightBG', 1, 35, quadOut)
	--end

	if curStep == 640 then --except for this one
		doTweenAlpha('TurningNight', 'NoonEffect', 0, 65.1, quadIn)
		doTweenAlpha('TurningNight2', 'NightEffect', 0.55, 65.1, quadIn)
		doTweenAlpha('TurningNight3', 'NightBG', 1, 65.1, quadOut)
		doTweenAlpha('TurningNight4', 'NoonBG', 0, 65.1, quadOut)
	end

end