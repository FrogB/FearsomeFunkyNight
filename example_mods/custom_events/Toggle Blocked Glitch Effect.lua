isEnabled = false
function onCreatePost()
  luaDebugMode = true
  if getPropertyFromClass('ClientPrefs', 'shaders') then
	initLuaShader("BlockedGlitchShader")

	makeLuaSprite("temporaryShader")
	makeGraphic("temporaryShader", screenWidth, screenHeight)

	setSpriteShader("temporaryShader", "BlockedGlitchShader")
  	--setShaderFloat("temporaryShader", "time", 1) <-- this is what stopped the shader from moving

	addHaxeLibrary("ShaderFilter", "openfl.filters")
  end
end
eT = 0

function onUpdate(e)
  eT = e + eT
  setShaderFloat("temporaryShader", "time", eT) -- <-- this is what you're supposed to be doing, not setting the time manually
end

function onEvent(n)
	if getPropertyFromClass('ClientPrefs', 'shaders') then
		if n == 'Toggle Blocked Glitch Effect' then
			isEnabled = not isEnabled
			if isEnabled then
				runHaxeCode[[
					game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
				]]
			else
				runHaxeCode[[
					game.camHUD.setFilters([]);
				]]
			end
		end
	end
end