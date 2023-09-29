
local Font = require("include/font")

local self = {}
local api = {}

--------------------------------------------------
-- Smooth Numbers
--------------------------------------------------

local function UpdateSmoothNumber(dt, name)
	local number = self.smoothNumbers[name]
	if not number.diff or number.diff == 0 then
		return
	end
	if not dt then
		-- Force update
		number.has = number.want
		number.diff = 0
	else
		local rate = dt*number.rate*15*(0.24 + 0.06 * math.abs(number.want - number.has) / number.diff)
		if math.abs(rate) <= 0.008 or math.abs(number.want - number.has) < 0.02*number.diff then
			number.has = number.want
			number.diff = false
		end
		number.has = number.has + rate*(number.want - number.has)*2
	end
	while number.wrap and number.has >= number.wrap do
		number.want = number.want - number.wrap
		number.has = number.has - number.wrap
		number.wrap = GameHandler.ReportOnWrap(name, number.wrap) or number.wrap
	end
	if (not number.wrap) and number.has > number.recordHigh then
		GameHandler.ReportOnRecord(name, number.has, number.recordHigh)
		number.recordHigh = number.has
	end
end

function api.Round(x)
	return math.floor(x + 0.5)
end

function api.SetNumber(name, value)
	local number = self.smoothNumbers[name]
	while number.wrap and value < number.want do
		value = value + 1
	end
	number.want = value
	number.diff = math.abs(number.want - number.has)
end

function api.AddNumber(name, value)
	api.SetNumber(name, value + self.smoothNumbers[name].want)
end

function api.GetRawNumber(name)
	local number = self.smoothNumbers[name]
	return number.want
end

function api.GetNumber(name)
	local number = self.smoothNumbers[name]
	return number.has
end

function api.IsNumberBehindWrap(name)
	local number = self.smoothNumbers[name]
	return math.floor(number.has) ~= math.floor(number.want)
end

function api.RegisterSmoothNumber(name, initial, rate, wrap)
	initial = initial or 0
	rate = rate or 1
	wrap = wrap or false
	self.smoothNumbers[name] = {
		want = initial,
		has = initial,
		diff = 0,
		recordHigh = initial,
		wrap = wrap,
		rate = rate
	}
	self.smoothNumberList[#self.smoothNumberList + 1] = name
end

function api.ForceUpdataAllNumbers()
	for i = 1, #self.smoothNumberList do
		UpdateSmoothNumber(false, self.smoothNumberList[i])
	end
end

--------------------------------------------------
-- Progress Bars
--------------------------------------------------

function api.GetBarProp(prop)
	local period = math.max(0.25, 1 - 0.8*prop)
	local amount = self.barDt%period
	if amount > period*0.5 then
		return util.SmoothZeroToOne(2*(1 - amount/period), 3)
	else
		return util.SmoothZeroToOne(2*amount/period, 3)
	end
end

function api.DrawBar(col, backCol, prop, text, textPos, barPos, barSize)
	prop = math.max(0, math.min(1, prop))
	textPos = util.Add(textPos, barPos)
	
	love.graphics.setColor(backCol[1], backCol[2], backCol[3], 1)
	love.graphics.rectangle("fill", barPos[1], barPos[2], barSize[1], barSize[2])
	
	love.graphics.setColor(col[1], col[2], col[3], 1)
	if barSize[1] > barSize[2] then
		love.graphics.rectangle("fill", barPos[1], barPos[2], barSize[1]*prop, barSize[2])
		Font.SetSize(2)
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.printf(text, barPos[1], textPos[2], barSize[1], "center")
	else
		love.graphics.rectangle("fill", barPos[1], barPos[2] + barSize[2]*(1 - prop), barSize[1], barSize[2]*prop)
		Font.SetSize(2)
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.printf(text, textPos[1], barPos[2] + barSize[2], barSize[2], "center", -math.pi/2)
	end
end

function api.DrawSmoothNumberBar(name, color, backgroundCol, pos, size)
	local number = self.smoothNumbers[name]
	local prop = number.has / number.wrap
	local text = api.Round(number.has) .. " / " .. api.Round(number.wrap)
	api.DrawBar(color, backgroundCol, prop, text, {0, -3}, pos, size)
end

--------------------------------------------------
-- Buttons
--------------------------------------------------

function api.DrawButton(x, y, width, height, mousePos, text, disabled, flash, canHoverDisabled)
	local hovered = ((not disabled) or canHoverDisabled) and util.PosInRectangle(mousePos, x, y, width, height)
	
	if disabled then
		love.graphics.setColor(Global.PANEL_DISABLE_COL[1], Global.PANEL_DISABLE_COL[2], Global.PANEL_DISABLE_COL[3], 1)
	elseif (flash and (self.animDt%Global.BUTTON_FLASH_PERIOD < Global.BUTTON_FLASH_PERIOD/2)) then
		love.graphics.setColor(Global.PANEL_FLASH_COL[1], Global.PANEL_FLASH_COL[2], Global.PANEL_FLASH_COL[3], 1)
	elseif hovered then
		love.graphics.setColor(Global.PANEL_HIGHLIGHT_COL[1], Global.PANEL_HIGHLIGHT_COL[2], Global.PANEL_HIGHLIGHT_COL[3], 1)
	else
		love.graphics.setColor(Global.PANEL_COL[1], Global.PANEL_COL[2], Global.PANEL_COL[3], 1)
	end
	love.graphics.setLineWidth(4)
	love.graphics.rectangle("fill", x, y, width, height, 4, 4, 16)
	
	Font.SetSize(3)
	if disabled then
		love.graphics.setColor(Global.TEXT_DISABLE_COL[1], Global.TEXT_DISABLE_COL[2], Global.TEXT_DISABLE_COL[3], 1)
	elseif (flash and (self.animDt%Global.BUTTON_FLASH_PERIOD < Global.BUTTON_FLASH_PERIOD/2)) then
		love.graphics.setColor(Global.TEXT_FLASH_COL[1], Global.TEXT_FLASH_COL[2], Global.TEXT_FLASH_COL[3], 1)
	elseif hovered then
		love.graphics.setColor(Global.TEXT_HIGHLIGHT_COL[1], Global.TEXT_HIGHLIGHT_COL[2], Global.TEXT_HIGHLIGHT_COL[3], 1)
	else
		love.graphics.setColor(Global.TEXT_COL[1], Global.TEXT_COL[2], Global.TEXT_COL[3], 1)
	end
	love.graphics.printf(text, x, y + 8, width, "center")
	
	if disabled then
		love.graphics.setColor(Global.OUTLINE_DISABLE_COL[1], Global.OUTLINE_DISABLE_COL[2], Global.OUTLINE_DISABLE_COL[3], 1)
	elseif (flash and (self.animDt%Global.BUTTON_FLASH_PERIOD < Global.BUTTON_FLASH_PERIOD/2)) then
		love.graphics.setColor(Global.OUTLINE_FLASH_COL[1], Global.OUTLINE_FLASH_COL[2], Global.OUTLINE_FLASH_COL[3], 1)
	elseif hovered then
		love.graphics.setColor(Global.OUTLINE_HIGHLIGHT_COL[1], Global.OUTLINE_HIGHLIGHT_COL[2], Global.OUTLINE_HIGHLIGHT_COL[3], 1)
	else
		love.graphics.setColor(Global.OUTLINE_COL[1], Global.OUTLINE_COL[2], Global.OUTLINE_COL[3], 1)
	end
	
	love.graphics.setLineWidth(8)
	love.graphics.rectangle("line", x, y, width, height, 4, 4, 16)
	return hovered and text
end

--------------------------------------------------
-- Updating
--------------------------------------------------

function api.Update(dt)
	for i = 1, #self.smoothNumberList do
		UpdateSmoothNumber(dt, self.smoothNumberList[i])
	end
	self.barDt = self.barDt + dt
	self.animDt = self.animDt + dt
end

function api.Initialize()
	self = {
		smoothNumbers = {},
		smoothNumberList = {},
		barDt = 0,
		animDt = 0,
	}
end

return api
