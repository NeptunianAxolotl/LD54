
local globals = {
	BACK_COL = {10/255, 84/255, 156/255},
	TILE_COL = {90/255, 135/255, 3/255},
	BACK_COL_EDITOR = {1.2*10/255, 1.2*84/255, 1.2*156/255},
	PANEL_COL = {0.53, 0.53, 0.55},
	
	GREY = {0.5, 0.5, 0.5},
	WHITE = {1, 1, 1},
	RED = {1, 0.3, 0.3},
	
	MASTER_VOLUME = 0.75,
	MUSIC_VOLUME = 0.01,
	DEFAULT_MUSIC_DURATION = 174.69,
	CROSSFADE_TIME = 0,
	
	WORLD_WIDTH = 900,
	WORLD_HEIGHT = 900,
	LINE_SPACING = 36,
	
	GRID_SIZE = 96,
	SHOP_SIZE = 80,
	SHOP_SPACING = 140,
	SHOP_IMAGE_SCALE = 0.4,
	
	DOMINO_GENERATION_TRIES = 100,
	DOMINIO_DUPLICATE_RELAX = 0.7,
	DOMINIO_DUPLICATE_TRIES = 10,
	CAMERA_SPEED = 2000,
	WAVE_PERIOD = 0.5,
	
	STARVE_GROW_RATE = 0.12,
	STARVE_SHRINK_RATE = 0.18,
	
	INVASION_RANGE = 7.49,
	LONG_WALK_RANGE = 6.49,
	MEDIUM_WALK_RANGE = 5.49,
	SHORT_WALK_RANGE = 4.49,
	
	WEAPON_ARMY_MULT = 2,
	BEER_BUFF_MULT = 2,
	BEER_BUFF_TIME = 90,
	BEER_RANGE_BUFF = 1,
	
	DECK_SIZE_MULT = 1,
	INIT_LEVEL = "testLevel",
	SHOP_SLOTS = 4,
	CAN_REFRESH = false,
	
	SHOP_WIDTH = 350,
	VIEW_WIDTH = 1920,
	VIEW_HEIGHT = 1080,
	GAME_SPEED = 2,
	WORKER_SPEED = 0.9,
	REFRESH_TIMER = 0.1,
}

return globals