///Purpose: To set an npc's quest's "Completed" field to true (Usally called after a quest is completed)

//The quest giver we are changing this on
var qstGiver = argument0;

//The number within the quest giver's quests array that we are editing
var qstNum = argument1;

with(qstGiver){
						
	// Create a copy of our quest
	var replacementQuest = quests[qstNum];
	
	//Only edit the completed field if the quest is not repeatable
	if (!replacementQuest[QUEST_FIELD.REPEATABLE]){
		
		replacementQuest[QUEST_FIELD.COMPLETED] = true;

		//Set the actual quest equal to our edited copy
		quests[qstNum] = replacementQuest;
						
							
	}
				
						
}