--was going to do this in haxe but i forgot how to lmao -frogb

function onCreatePost()
	makeLuaSprite('NoonEffect', 'Bambi/NoonEffect', 0, 0)
	addLuaSprite('NoonEffect',true)
	setObjectCamera('NoonEffect', 'camgame')
	setProperty('NoonEffect.scale.x', 12.5);
    setProperty('NoonEffect.scale.y', 12.5);
	setProperty('NoonEffect.alpha', 0.0)

	makeLuaSprite('NightEffect', 'Bambi/NightEffect', 0, 0)
	addLuaSprite('NightEffect',true)
	setObjectCamera('NightEffect', 'camgame')
	setProperty('NightEffect.scale.x', 12.5);
    setProperty('NightEffect.scale.y', 12.5);
	setProperty('NightEffect.alpha', 0.0)

end

function onUpdate(elapsed)

	if curStep == 100 then
		doTweenAlpha('TurningNoon', 'NoonEffect', 0.7, 155.84, quadIn)
		doTweenAlpha('TurningNoon2', 'NoonBG', 1, 155.84, quadOut)
	end

	--if curStep == ??? then
		--doTweenAlpha('TurningNight05', 'NoonEffect', 0.0, 35, quadIn)
		--doTweenAlpha('TurningNight1', 'NightEffect', 0.6, 35, quadIn)
		--doTweenAlpha('TurningNight2', 'NightBG', 1, 35, quadOut)
	--end

	if curStep == 8484584848 then
		doTweenAlpha('TurningNoon', 'NoonEffect', 0, 20, quadIn)
	end

end