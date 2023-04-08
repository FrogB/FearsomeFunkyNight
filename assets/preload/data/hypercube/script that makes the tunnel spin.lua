local basething = -100
local someamountidfk = 25
local TIME = 5
function onStartCountdown()
	doTweenAngle('the funny red tunnel spin', 'redTunnel', 14040, 8000, 'quartzInOut'); -- (OLD) Antagonism: First 11 Minutes - Bambi's Purgatory OST
end

function onCreatePost()
    runTimer('fuckinUP', 0.001)
    setProperty('gf.alpha',0)
end
    
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'fuckinUP' then
        doTweenY('fuckinshit1', 'cubes', basething - someamountidfk, TIME, 'quartInOut')
        doTweenY('fuckinshit2', 'cubes', basething - someamountidfk, TIME, 'quartInOut')
        runTimer('fuckinDOWN', TIME)
    elseif tag == 'fuckinDOWN' then
        doTweenY('fuckinshit1', 'cubes', basething + someamountidfk, TIME, 'quartInOut')
        doTweenY('fuckinshit2', 'cubes', basething + someamountidfk, TIME, 'quartInOut')
        runTimer('fuckinUP', TIME)
    end
end