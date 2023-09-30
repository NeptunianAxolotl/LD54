
local api = {}
local self = {}

local function DrawCard(deck)
	if not deck.cards[deck.drawIndex] then
		util.Permute(deck.cards)
		deck.drawIndex = 1
	end
	local draw = deck.cards[deck.drawIndex]
	deck.drawIndex = deck.drawIndex + 1
	return draw
end

--------------------------------------------------
-- API
--------------------------------------------------

function api.GetNextDraw(deck, drawCount, toAvoid)
	drawCount = drawCount or 1
	local toDraw = {}
	local drawnType = toAvoid or {}
	local tries = 200
	while #toDraw < drawCount and tries > 0 do
		local card = DrawCard(deck)
		if not drawnType[card] then
			toDraw[#toDraw + 1] = card
			drawnType[card] = true
		end
		tries = tries - 1
	end
	return toDraw
end

function api.GetDeck(newCards, shuffled)
	local newDeck = {
		cards = util.CopyTable(newCards),
		drawIndex = 1,
	}
	if shuffled then
		util.Permute(newDeck.cards)
	end
	return newDeck
end

--------------------------------------------------
-- Updating
--------------------------------------------------

function api.Initialize(world)
	self = {}
end

return api
