
local api = {}
local self = {}

local function DrawCard(deck)
	if not deck.cards[deck.drawIndex] then
		if deck.ModifyDeckOnShuffleFunc then
			deck.cards = deck.ModifyDeckOnShuffleFunc(deck.cards)
		end
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
	local drawnType = (toAvoid and util.CopyTable(toAvoid)) or {}
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

function api.GetDeck(newCards, shuffled, ModifyDeckOnShuffleFunc)
	local newDeck = {
		cards = util.CopyTable(newCards),
		drawIndex = 1,
		ModifyDeckOnShuffleFunc = ModifyDeckOnShuffleFunc,
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
