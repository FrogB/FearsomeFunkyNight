Chromacrap = 0;

function boundTo(value, min, max)
    return math.max(min, math.min(max, value))
end
function math.lerp(from,to,i)return from+(to-from)*i end

function setChrome(chromeOffset)
    setShaderFloat("temporaryShader", "rOffset", chromeOffset);
    setShaderFloat("temporaryShader", "gOffset", 0.0);
    setShaderFloat("temporaryShader", "bOffset", chromeOffset * -1);
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
    Chromacrap = Chromacrap + 0.015 -- edit this
end

function onCreatePost()
    if getPropertyFromClass('ClientPrefs', 'shaders') then
        initLuaShader("vcr")
        
        makeLuaSprite("temporaryShader")
        makeGraphic("temporaryShader", screenWidth, screenHeight)
        
        setSpriteShader("temporaryShader", "vcr")
        
        addHaxeLibrary("ShaderFilter", "openfl.filters")
        runHaxeCode([[
            trace(ShaderFilter);
            game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
        ]])
    end
end

function onUpdate(elapsed)
    if getPropertyFromClass('ClientPrefs', 'shaders') then
        Chromacrap = math.lerp(Chromacrap, 0, boundTo(elapsed * 20, 0, 1))
        setChrome(Chromacrap)
    end
end