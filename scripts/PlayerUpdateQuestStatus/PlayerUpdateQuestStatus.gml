///Purpose:Edit the player's quest statuses if need be

var ply = argument0;
var qstType = argument1;
var npcName = argument2

print("UPDATE QUEST STATUS STARTED");
//Make sure we have quests to iterate through
if (ply.quests[0] != noone){
	print("We have a quest")
	for (var i = 0; i < array_length_1d(ply.quests); i++){
		//Store the quest
		var qst = ply.quests[i];
		var content = qst[QUEST_FIELD.CONTENT]
		if (qstType == QUEST.KILL){
			
			print("Reached Case");
	
			
			//WE HAVE A QUEST IN THE PROPER MODE
			if(content[0] == qstType){
					
				//WE HAVE THE SAME NPC WE NEED TO KILL
				if(content[1] == ObjNameToReference(npcName)){
						
					content[2] -= 1;
						
					qst[QUEST_FIELD.CONTENT] = content;
					ply.quests[i] = qst;
					print("Subtracted one from kill counter");

				}
			
			}
			
		}
		
	}


}