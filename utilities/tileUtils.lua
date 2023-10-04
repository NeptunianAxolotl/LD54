
local api = {}

function api.InitTileData(data)
	local resourceList = {}
	for resource in pairs(data.needResource or {}) do
		resourceList[#resourceList + 1] = resource
	end
	data.needResourceList = resourceList
	
	data.cannotPairWith_map = util.ListToMask(data.cannotPairWith or {})
	if data.canBuildOn then
		data.canBuildOn_map = util.ListToMask(data.canBuildOn)
	end
	if data.mustBuildNear then
		data.mustBuildNear_map = util.ListToMask(data.mustBuildNear)
	end
	
	return data
end

return api
