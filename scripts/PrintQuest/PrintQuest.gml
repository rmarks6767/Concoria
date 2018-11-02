var quest = argument0;

//0:Name of quest<string>: (Display name for quest)

//1:Content of the quest<array>: (This will contain different data depending on it's quest type)

//2:Rewards of the quest<array>: (This will contain different data depending on the preset award);

//3:Dialogue of quest<array>: (This array will store strings and ints giving jump to positions different dialogues based on decisions);

//4:Quest Lock<array>: (This array will store ints of all the indexes of the quests that must be completed before this quest is availible.)

//5:Quest is completed or not<bool>:true, false

//6:Quest is repetable or not<bool>:true, false
print("=========QUEST=========");
print("Quest Name: ", quest[0]);


var temp = quest[1];




var contents = "This quest wants you to: ";


for(var i = 0; i < array_length_1d(temp);i++){

	if (is_real(temp[i])){
		
		contents += string(GetQuestType(temp[i])) + " ";
	}
	else{
		
		contents += string(temp[i]) + " ";
	}
	
}

print("Quest Contents: ",contents);

print("Quest Rewards:");

var reward = "";
var temp0 = quest[2];
for(var i = 0 ; i < array_length_1d(temp0); i+=3){
	
	
	reward += "Reward " + string(i%3) + " : " + string(temp0[i]) + " ,";
	//reward += string(temp0[i+1]) + ":";
	reward += string(GetRewardType(temp[i+1])) + ","
	reward += string(temp0[i+2]) + ",";
	
	
}

print(reward);
var dialogues = quest[3];

print("Quest Dialogues:");
for(var i = 0; i < array_length_1d(dialogues); i++){
	
	var dialogue = GetQuestDialogue(dialogues,i);
	print("Dialogue #", i, " The Quester will say \"",dialogue[0],"\"");
	var responses = "You can respond with ";
	if (array_length_1d(dialogue) > 2){
		for(var ii = 2; ii < array_length_1d(dialogue);ii += 2){
		
			responses += "\"" + string(dialogue[ii]) + "\""
			responses += " Which jumps to dialogue#" + string(dialogue[ii+1]) +", ";
		
		}
		
	}
	else{
		
		responses = "You cannot respond";
		
	}
	print(responses);

	
}

print("Quest Locked: Cannot be done until these are done:");
var locked = quest[4];
for(var i = 0; i < array_length_1d(locked); i++){
	
	if (locked[i] != -1){
		print(locked[i]);
	}else{
		
		print("This quest is always unlocked");
		
	}
	
}

print("Quest Completed: ", BoolToString(quest[5]));

print("Quest Repeatable: ", BoolToString(quest[6]));

print("=========END_OF_QUEST=========");