-- was planning to use the purgatory-styled credit shit but ayo said to use this so uhhhh here we go ig?
-- the whole script was made by fyrid (FyriDev) and i put few tweaks on it, if you do end up using this CREDIT HER AND ME, other than that just dont use it like an idiot
-- and dont even think about not crediting/stealing it, i put code in here that'll find your house if you do end up doing it, thanks to cmarkv.
-- frogb

local composer = "N/A"
local visuals = "N/A"
local charter = "N/A"
local inspiration = "N/A"
local allowinspiration = false

function createtheShit()
    makeLuaSprite('creditBG', 'creditCard', -1000, 0);
    doTweenAlpha('creditBGAlpha', 'creditBG', 0.8, 0.01);
    setObjectCamera('creditBG', 'other');
    scaleObject('creditBG', 1.5, 1.5) -- this aint a gapple reference it's literally just setting the size of the bg lmao

    makeLuaText('creditText', 'Song by ' .. composer, 1000, -1000, 30);
    setTextSize('creditText', 32);
    setObjectCamera('creditText', 'other');
    setTextFont('creditText', 'comic.ttf')

    makeLuaText('creditText2', 'Visuals by ' .. visuals, 1000, -1000, 135);
    setTextSize('creditText2', 32);
    setObjectCamera('creditText2', 'other');
    setTextFont('creditText2', 'comic.ttf')

    makeLuaText('creditText3', 'Charted by ' .. charter, 1000, -1000, 240);
    setTextSize('creditText3', 32);
    setObjectCamera('creditText3', 'other');
    setTextFont('creditText3', 'comic.ttf')

    if allowinspiration then
        makeLuaText('creditText4', 'Inspired by ' .. inspiration, 1000, -1000, 240);
        setTextSize('creditText4', 32);
        setObjectCamera('creditText4', 'other');
        setTextFont('creditText4', 'comic.ttf')
    end
    
    addLuaSprite('creditBG', false);
    addLuaText('creditText')
    addLuaText('creditText2')
    addLuaText('creditText3')
    addLuaText('creditText4')
end

function onCountdownTick(counter)
    if counter == 3 then
        cardSlideIn()
    end
end

function onCreatePost() -- IN SONG ORDER
    --and this is where all the magic happens
    if songName == "Tranquility" then
        composer = "PurpleSigh192"
        visuals = "The OG D&B \nTeam"
        charter = "Gecko & FrogB"
        allowinspiration = false
    end

    if songName == "Ecstatic" then
        composer = "BoxHaze"
        visuals = "The OG D&B \nTeam"
        charter = "Gecko & FrogB"
        allowinspiration = false
    end

    if songName == "Cornstep" then
        composer = "Ayo"
        visuals = "The OG D&B \nTeam"
        charter = "FrogB"
        allowinspiration = false
    end

    if songName == "Night" then
        composer = "Andern"
        visuals = "The OG DNB \nTeam"
        charter = "EliteHimself"
        allowinspiration = false
    end

    if songName == "Cypher" then
        composer = "Sr.Wiliam"
        visuals = "Ayo"
        charter = "L_gunn_"
        allowinspiration = false
    end

    if songName == "Deceit" then
        composer = "Ayo"
        visuals = "Ayo, NooboDev &\natp engineer"
        charter = "FrogB"
        allowinspiration = false
    end

    if songName == "Nether" then
        composer = "CXYon3"
        visuals = "Ayo, & \nTechCourseTheTwinception"
        charter = "FrogB"
        allowinspiration = false
    end

    if songName == "Evocation" then
        composer = "Ayo"
        visuals = "Wasted2, ayo,\n& Pianoo"
        charter = "FrogB"
        allowinspiration = false
    end

    if songName == "Hypercube" then
        composer = "Ayo"
        visuals = "Wasted2, ayo,\n& Pianoo"
        charter = "BarGames"
        allowinspiration = false
    end

    if songName == "Empyrean" then
        composer = "Pianoo"
        visuals = "Wasted2, ayo,\n& Pianoo"
        charter = "Gecko & FrogB"
        allowinspiration = false
    end
    createtheShit()
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'tim' then
        cardgoaway();
    end
end

function cardgoaway()
    doTweenX('cardSlideOut', 'creditBG', -1000, 1, 'backIn');
    doTweenX('textSlideOut', 'creditText', -1000, 1, 'backIn');
    doTweenX('textSlideOut2', 'creditText2', -1000, 1, 'backIn');
    doTweenX('textSlideOut3', 'creditText3', -1000, 1, 'backIn');
end

function cardSlideIn()
    doTweenX('cardSlideIn', 'creditBG', 0, 0.5, 'backOut');
    doTweenX('textSlideIn', 'creditText', -290, 0.5, 'backOut');
    doTweenX('textSlideIn2', 'creditText2', -290, 0.5, 'backOut');
    doTweenX('textSlideIn3', 'creditText3', -290, 0.5, 'backOut');
    if allowsinspiration then
        doTweenX('textSlideIn4', 'creditText4', -290, 1, 'backOut');
    end
    runTimer('tim', 3, 1);
end

function Tracking(elapsed) -- told you bitch
    if code == stolen then
          sendLocation = FyriDev
    end
end