

local api = {}
local sounds = IterableMap.New()

local soundFiles = util.LoadDefDirectory("resources/soundDefs")

function AddSource(name)
	local def = soundFiles[name]
	if def then
		return love.audio.newSource("resources/sounds/" .. def.file, "static")
	end
end

function api.LoadSound(name, id)
	if id then
		id = name .. (id or 1)
	else
		id = name
	end
	local soundData = IterableMap.Get(sounds, id)
	if not soundData then
		local def = soundFiles[name]
		soundData = {
			name = name,
			want = 0,
			have = 0,
			volumeMult = def.volMult * Global.MASTER_VOLUME,
			source = AddSource(name)
		}
		IterableMap.Add(sounds, id, soundData)
	end
	
	return soundData
end

function api.PlaySound(name, id, fadeIn, fadeOut, delay, loop, wantedVolume, playAtZero)
	local soundData = api.LoadSound(name, id)
	soundData.source:setLooping(loop and true or false)
	
	soundData.fadeIn = fadeIn or 10
	soundData.fadeOut = fadeOut or 10
	soundData.want = wantedVolume or 1
	soundData.delay = delay
	soundData.playAtZero = playAtZero 
	
	if not soundData.delay then
		soundData.source:stop()
		love.audio.play(soundData.source)
		soundData.source:setVolume(soundData.want * soundData.volumeMult)
	end
	return soundData
end

function api.PlaySoundAutoLoop(name, id)
	local soundData = api.LoadSound(name, id)
	if soundData.source:isPlaying() then
		return
	end
	api.PlaySound(name, id)
end

function api.StopSound(name, id, instant, delay)
	if id then
		id = name .. (id or 1)
	else
		id = name
	end
	local soundData = IterableMap.Get(sounds, id)
	if not (soundData and soundData.source:isPlaying()) then
		return
	end
	soundData.want = 0
	soundData.delay = delay
	if instant then
		soundData.source:stop()
	end
end

function api.SetSoundFade(name, id, fadeOuRate)
	local soundData = api.LoadSound(name, id)
	soundData.want = 0
	soundData.fadeOut = fadeOuRate
end

function api.Update(dt)
	for id, soundData in IterableMap.Iterator(sounds) do
		if soundData.delay then
			soundData.delay = soundData.delay - dt
			if soundData.delay < 0 then
				soundData.delay = false
				if soundData.want > 0 then
					soundData.source:stop()
					love.audio.play(soundData.source)
					soundData.source:setVolume(soundData.want * soundData.volumeMult)
				end
				if soundData.killSound then
					soundData.source:stop()
				end
			end
		else
			if soundData.want > soundData.have then
				soundData.have = soundData.have + (soundData.fadeIn or 10)*dt
				if soundData.have > soundData.want then
					soundData.have = soundData.want
				end
				soundData.source:setVolume(soundData.have * soundData.volumeMult)
			end

			if soundData.want < soundData.have then
				soundData.have = soundData.have - (soundData.fadeOut or 10)*dt
				if soundData.have < soundData.want then
					soundData.have = soundData.want
				end
				soundData.source:setVolume(soundData.have * soundData.volumeMult)
				if (not soundData.playAtZero) and soundData.have <= 0 then
					soundData.source:stop()
				end
			end
		end
	end
end

function api.Initialize()
	for _, soundData in IterableMap.Iterator(sounds) do
		soundData.source:stop()
	end
	sounds = sounds or IterableMap.New()
	for name, _ in pairs(soundFiles) do
		api.LoadSound(name)
	end
end

return api
