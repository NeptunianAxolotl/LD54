
local api = {}

function api.InitTileData(data)
	local resourceList = {}
	for resource in pairs(data.needResource or {}) do
		resourceList[#resourceList + 1] = resource
	end
	data.needResourceList = resourceList
	
	data.cannotPairWith_map = util.ToMask(data.cannotPairWith or {})
	data.canBuildOn_map = util.ToMask(data.canBuildOn)
	if data.mustBuildNear then
		data.mustBuildNear_map = util.ToMask(data.mustBuildNear)
	end
	
	return data
end

return api
