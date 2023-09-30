
local api = {}

function api.InitTileData(data)
	local resourceList = {}
	for resource in pairs(data.needResource or {}) do
		resourceList[#resourceList + 1] = resource
	end
	data.needResourceList = resourceList
	
	return data
end

return api
