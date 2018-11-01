///Purpose: Create a quest and populate it's fields

//Name of quest<string>: (Display name for quest)
	var questName =  argument0;

//Type of quest<enum QUEST>: KILL, FETCH, BOSS, DUNGEON, GOTO, ESCORT, INTERACT, RIDDLE
	var questType = argument1;

//Content of the quest<array>: (This will contain different data depending on it's quest type)
	var questContent = argument2;

//Rewards of the quest<array>: (This will contain different data depending on the preset award);
	var questRewards = argument3;

//Dialogue of quest<array>: (This array will store strings and ints giving jump to positions different dialogues based on decisions);
	var questDialogue = argument4;

//Quest Lock<array>: (This array will store ints of all the indexes of the quests that must be completed before this quest is availible.)
	var questLocked = argument5;

//Quest is completed or not<bool>:true, false
	var questCompleted = argument6;

//Quest is repetable or not<bool>:true, false
	var questRepeatable = argument7;


//Set up quest array;
var quest;
quest[0] = questName;
quest[1] = questType;
quest[2] = questContent;
quest[3] = questRewards;
quest[4] = questDialogue;
quest[5] = questLocked;
quest[6] = questCompleted;
quest[7] = questRepeatable;

//Return it
return quest;
