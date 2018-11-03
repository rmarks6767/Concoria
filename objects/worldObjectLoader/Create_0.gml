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


enum QUEST_FIELD{
	
	NAME,
	CONTENT,
	REWARDS,
	DIALOGUE,
	LOCK,
	COMPLETED,
	REPEATABLE,
	
}
var quests = 0;

var reward = CreateArray("5 Gold",REWARD.GOLD,5);

var dialogue0 = CreateArray("Do you like pie",2,"Yes",1,"No",2);
var dialogue1 = CreateArray("Cool. Me too!",0);
var dialogue2 = CreateArray("Eww. You're gross",0);

var dialogues = CreateArray(dialogue0,dialogue1,dialogue2);

var content = CreateArray(QUEST.INTERACT,"self");

var locked = CreateArray(-1);

var quest = CreateQuest("Enjoyment of Pie",content,reward,dialogues,locked,false,true);

quests[0] = quest;

//PrintQuest(quest)

var reward = CreateArray("10 EXP",REWARD.EXP,100);

var dialogue0 = CreateArray("I want to die",2,"Pls dont",1,"Do it faggot",2);
var dialogue1 = CreateArray("Alright I won't",0);
var dialogue2 = CreateArray("Alright. Lemme get the rope",0);

var dialogues = CreateArray(dialogue0,dialogue1,dialogue2);

var content = CreateArray(QUEST.INTERACT,"self");

var locked = CreateArray(0,1,2,3,4,5);

var quest = CreateQuest("Go commit sudoku",content,reward,dialogues,locked,false,true);

quests[1] = quest;

//PrintQuest(quest)
var foo = FindFirstQuest(quests)
if (foo != noone){
	PrintQuest(foo);
}
else{
	
	print("No quest found")
	
}