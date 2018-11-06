///Purpose: Create a quest and populate it's fields

//Name of quest<string>: (Display name for quest)
	var questName =  argument0;


//Content of the quest<array>: (This will contain different data depending on it's quest type)
	var questContent = argument1;

//Rewards of the quest<array>: (This will contain different data depending on the preset award);
	var questRewards = argument2;

//Dialogue of quest<array>: (This array will store strings and ints giving jump to positions different dialogues based on decisions);
	var questDialogue = argument3;

//Quest Lock<array>: (This array will store ints of all the indexes of the quests that must be completed before this quest is availible.)
	var questLocked = argument4;
	
//Quest completed dialogue<array>: (This array will dialogue displayed after the quest is completed
	var completedDialogue = argument5;

//Quest is completed or not<bool>:true, false
	var questCompleted = argument6;

//Quest is repetable or not<bool>:true, false
	var questRepeatable = argument7;


//Set up quest array;
var quest;
quest[0] = questName;
quest[1] = questContent;
quest[2] = questRewards;
quest[3] = questDialogue;
quest[4] = questLocked;
quest[5] = completedDialogue;
quest[6] = questCompleted;
quest[7] = questRepeatable;

//Return it
return quest;
