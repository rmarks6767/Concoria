counterStore = 0;
objectStorage[0,0] = 0;
storedids[0] = 0;
counterFull = 0;

global.houseGroup[0,0] = 0;
enum MENU_DRAW{
	
	SHOP,
	STATS,
	QUEST,
	
	
	
}

enum QUEST{
	
	KILL,
	FETCH,
	BOSS,
	DUNGEON,
	GOTO,
	ESCORT,
	RIDDLE,
	INTERACT,
	
}

enum REWARD{
	
	GOLD,
	ITEM,
	EXP,
	LVL,
	
}

enum REWARDS_FIELD{
	
	DISPLAYNAME,
	TYPE,
	QUANTITY,
	
}

enum QUEST_FIELD{
	
	NAME,
	CONTENT,
	REWARDS,
	DIALOGUE,
	LOCK,
	COMPLETE_DIALOGUE,
	COMPLETED,
	REPEATABLE,
	
}
