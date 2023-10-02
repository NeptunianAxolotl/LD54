
local globals = {
	BACK_COL = {36/255, 77/255, 135/255},
	TILE_COL = {124/255, 149/255, 61/255},
	BACK_COL_EDITOR = {1.2*10/255, 1.2*84/255, 1.2*156/255},
	
	PANEL_COL = {197/255, 136/255, 71/255},
	
	HOVER_HIGHLIGHT = {240/255, 179/255, 86/255},
	BUTTON_BORDER = {99/255, 68/255, 36/255},
	
	PUSH_BUTTON_BORDER = {124/255, 149/255, 61/255},
	BUTTON_HIGHLIGHT = {198/255, 206/255, 105/255},
	BUTTON_BACK = {175/255, 185/255, 92/255},
	
	HINT_BACK = {198/255, 206/255, 105/255},
	HINT_OUTLINE = {74/255, 91/255, 32/255},
	
	GREY = {0.7, 0.7, 0.7},
	WHITE = {1, 1, 1},
	RED = {1, 0.3, 0.3},
	
	MASTER_VOLUME = 0.75,
	MUSIC_VOLUME = 0.25,
	DEFAULT_MUSIC_DURATION = 174.69,
	CROSSFADE_TIME = 0,
	
	WORLD_WIDTH = 900,
	WORLD_HEIGHT = 900,
	LINE_SPACING = 36,
	
	GRID_SIZE = 96,
	SHOP_SIZE = 80,
	SHOP_SPACING = 115,
	SHOP_IMAGE_SCALE = 0.4,
	
	DOMINO_GENERATION_TRIES = 100,
	DOMINIO_DUPLICATE_RELAX = 0.7,
	DOMINIO_DUPLICATE_TRIES = 3.5,
	CAMERA_SPEED = 2000,
	WAVE_PERIOD = 0.5,
	
	STARVE_GROW_RATE = 0.02,
	STARVE_SHRINK_RATE = 0.6,
	
	TAVERN_FOOD_COST = 6,
	
	INVASION_RANGE = 7.49,
	LONG_WALK_RANGE = 6.49,
	MEDIUM_WALK_RANGE = 5.49,
	SHORT_WALK_RANGE = 4.49,
	ALCHEMIST_RANGE = 8.49,
	CATHEDRAL_BUILD_GAP = 7.9,
	CATHEDRAL_ARMY_MULT = 0.2,
	
	RESOURCE_MOVE_SPEED = 0.9,
	
	EXPLODE_COST = 4,
	EXPLODE_COST_INC = 1,
	EXPLODE_CHARGES = 3,
	
	REFRESH_COST = 1,
	REFRESH_COST_INC = 1,
	REFRESH_CHARGES = 3,
	
	WEAPON_ARMY_MULT = 2,
	BEER_BUFF_MULT = 1.5,
	BEER_BUFF_TIME = 100,
	BEER_RANGE_BUFF = 1,
	
	BUILDING_STOCKPILE_SIZE = 2,
	
	DECK_SIZE_MULT = 1,
	SHOP_SLOTS = 3,
	
	SHOW_REFRESH_DEBUG_MODE = false,
	
	DESTROY_NAME = "explosion",
	SHOP_WIDTH = 450,
	VIEW_WIDTH = 1920,
	VIEW_HEIGHT = 1080,
	GAME_SPEED = 2,
	WORKER_SPEED = 0.9,
	REFRESH_TIMER = 0.05,
	TOOLTIP_FADE_RATE = 5.2,
	TOOLTIP_FADE_DELAY = 0.11,
	END_GAME_FADE_RATE = 2.8,
	
	SAVE_ORDER = {"humanName", "width", "height", "cameraPos", "tileDeck", "hints", "tiles", "terrain", "doodads", "invasionMask"},
}

return globals