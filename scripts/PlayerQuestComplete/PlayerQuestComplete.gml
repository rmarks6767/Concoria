///Purpose: Determining whether or not a player completed a quest or not. Returns bool

//player
var ply = argument0;
var qstNum = argument1;
if (ply.quests[0] != noone){
	var qst = ply.quests[qstNum];
	var content = qst[QUEST_FIELD.CONTENT]
	var type = content[0];

	switch(type){
	
		case QUEST.KILL:
		
			if (content[2] <= 0){
			
				return true;	
			
			}
			else{
			
				return false;
			
			}
			break;
		
		case QUEST.FETCH:
		break;
	
		case QUEST.INTERACT:
		break;
	
	}
}
return false;