counterStore = 0;
objectStorage[0,0] = 0;
storedids[0] = 0;
counterFull = 0;

global.houseGroup[0,0] = 0;
enum MENU_DRAW{
	
	SHOP,
	STATS,
	
	
	
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


var reward = CreateArray("5 Gold",REWARD.GOLD,5);

var dialogue = CreateArray("Do you like pie?",2,"Yes",1,"No",2,"Cool. Me too!",0,"Eww. You're gross",0);

var content = CreateArray(QUEST.INTERACT,"self");

var locked = CreateArray(-1);

var quest = CreateQuest("Enjoyment of Pie",QUEST.INTERACT,content,reward,dialogue,locked,false,true);
PrintQuest(quest)