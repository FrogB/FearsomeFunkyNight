local flip = -1
function onBeatHit(elapsed)
    if (curBeat >= 304 and curBeat == 368) or (curBeat >= 400 and curBeat == 432) then
        if curBeat % 4 == 0 then
            setProperty('offsettween.x',-60*flip)
            doTweenX('notebounce3','offsettween',0,crochet*0.0005,'linear')
            setProperty('camHUD.zoom',1.05)
            setProperty('camHUD.angle',flip*-5)
            doTweenZoom('cambounce1','camHUD',1,crochet*0.001,'linear')
            doTweenAngle('cambounce2','camHUD',0,crochet*0.001,'sineOut')
            for i = 0,7 do
                setProperty('scalecontrol' .. i .. '.y',0.5)
                setProperty('scalecontrol' .. i .. '.x',0.9)
                doTweenY('notebounce1' .. i,'scalecontrol' .. i,0.7,crochet*0.00025,'linear')
                doTweenX('notebounce2' .. i,'scalecontrol' .. i,0.7,crochet*0.00025,'linear')
            end
        end
        if curBeat % 4 == 2 then
            doTweenY('notebounce4','offsettween',100,crochet*0.0005,'sineIn')
        end
    end
end