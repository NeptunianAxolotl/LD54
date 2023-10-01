
local api = {}

function api.InitTileData(data)
	local resourceList = {}
	for resource in pairs(data.needResource or {}) do
		resourceList[#resourceList + 1] = resource
	end
	data.needResourceList = resourceList
	
	data.cannotPairWith_map = util.ToMask(data.cannotPairWith or {})
	data.canBuildOn_map = util.ToMask(data.canBuildOn or {})
	data.mustBuildNear_map = util.ToMask(data.mustBuildNear or {})
	
	return data
end

return api
