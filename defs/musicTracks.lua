
local trackData = {
	useAsDurationForAllTracks = 'bgm_space',
	list = {
		'bgm_classical',
		'bgm_modern',
		'bgm_space',
	},
	initialTrack = 'bgm_classical',
	WantTrack = function (cosmos, index)
		return (math.floor(cosmos.GetRealTime()/10)%3 + 1) == index
	end,
}

return trackData
