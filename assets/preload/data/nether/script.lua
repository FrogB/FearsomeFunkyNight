local bop = 1;
local woah = false;

local anglePlus = 1;

function onSongStart()
	
	for i = 0,7 do 
		x = getPropertyFromGroup('strumLineNotes', i, 'x')
  
		y = getPropertyFromGroup('strumLineNotes', i, 'y')
  
		table.insert(defaultNotePos, {x,y})
	end
end

function onBeatHit()
	if woah then
		if curBeat % 2 == 0 then
			setProperty('camGame.angle', bop*5)
			doTweenAngle('angledGame', 'camGame', 0, 0.5, 'quadOut')
		end
		if curBeat % 2 == 1 then
			setProperty('camGame.angle', bop*-5)
			doTweenAngle('angledGame', 'camGame', 0, 0.5, 'quadOut')
		end
	end

	if curBeat == 304 then
		woah = true
	end
	if curBeat == 368 then
		woah = false
	end
	if curBeat == 400 then
		woah = true
	end
	if curBeat == 432 then
		woah = false
	end
end

function onCreatePost()
    setProperty('gf.alpha', 0)
end