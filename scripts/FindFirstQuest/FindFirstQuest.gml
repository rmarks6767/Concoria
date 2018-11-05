//Purpose: Finds the first available quest
var quests = argument0

//Iterate through all of the quests
//print("::Quest find begun")
for(var i = 0; i < array_length_1d(quests); i++){
	
	//The individual quest we are checking
	var quest = quests[i];
	//print(quest[QUEST_FIELD.NAME]," Is being checked");
	//Check if our quest has been completed
	if(quest[QUEST_FIELD.COMPLETED] == false){
		//print("::QUEST HAS NOT BEEN COMPLETED")
		
		//Locked quest locked array
		var locked = quest[QUEST_FIELD.LOCK]
		
		//Whether or not this quest has passed all of its requirements to be first
		var questPassed = 0;
		
		//Iterate through all locked quest numbers for this current quest
		var lockedLen = array_length_1d(locked);
		//print("Locked Len:",lockedLen);
		for (var ii = 0; ii < lockedLen;ii++ ){
			
			if (locked[ii] != -1){
				
				
				//The quest we are checking has been completed
				var checkQuest = quests[locked[ii]]
				
				//Checking if the quest has been completed
				if (checkQuest[QUEST_FIELD.COMPLETED] == true){
					questPassed += 1;
				}
			}
			else{
				
				//print("::Quest has no requirements")
				questPassed = 1;
			}
		}
		
		
		if (questPassed == array_length_1d(quest[QUEST_FIELD.LOCK])){
			
			return list(quest,i);
			
		}

	}
	else{
		
		//print("QUEST HAS BEEN COMPLETED")
		
	}
		
	

}


return noone;