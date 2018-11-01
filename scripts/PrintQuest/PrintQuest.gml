var quest = argument0;

//0:Name of quest<string>: (Display name for quest)

//1:Type of quest<enum QUEST>: KILL, FETCH, BOSS, DUNGEON, GOTO, ESCORT, INTERACT, RIDDLE

//2:Content of the quest<array>: (This will contain different data depending on it's quest type)

//3:Rewards of the quest<array>: (This will contain different data depending on the preset award);

//4:Dialogue of quest<array>: (This array will store strings and ints giving jump to positions different dialogues based on decisions);

//5:Quest Lock<array>: (This array will store ints of all the indexes of the quests that must be completed before this quest is availible.)

//6:Quest is completed or not<bool>:true, false

//7:Quest is repetable or not<bool>:true, false
print("=========QUEST=========");
print("Quest Name: ", quest[0]);

var type = quest[1];

type = GetQuestType(type);

print("Quest Type: ",type);




var contents = "This quest wants you to: ";
var temp = quest[2];

for(var i = 0; i < array_length_1d(temp);i++){

	if (is_real(temp[i])){
		
		contents += string(GetQuestType(temp[i])) + " ";
	}
	else{
		
		contents += string(temp[i]) + " ";
	}
	
}

print("Quest Contents: ",contents);

var reward = "";
var temp0 = quest[3];
for(var i = 0 ; i < array_length_1d(temp0); i+=3){
	
	
	reward += "Reward " + string(i%3) + " : " + string(temp0[i]) + " ,";
	//reward += string(temp0[i+1]) + ":";
	switch(temp0[i+1]){
		
		case REWARD.EXP:
			reward += "EXP,";
			break;
		
		case REWARD.GOLD:
			reward += "GOLD,";
			break;
			
		case REWARD.ITEM:
			reward += "ITEM,";
			break;
			
		case REWARD.LVL:
			reward += "LVL,";
			break;
		
	}
	reward += string(temp0[i+2]) + ",";
	
	
}

print("Quest Reward: ",reward);

print("=========END_OF_QUEST=========");