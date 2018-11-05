///Purpose: Check if the player has a certain quest. This is checked using a quest's unique identifier (Name Field) 
///Returns either a list of both (bool,index)

//player
var ply = argument0;

//quest
var qst = argument1;

//Before even doing anything. Lets make sure the player even has a quest.
//If they don't return false
if (ply.quests[0] == noone){
	
	return list(false,-1);
	
}


//Iterate through all of the player's quests
for (var i = 0; i < array_length_1d(ply.quests); i++){
	
	var plyQst = ply.quests[i];
	
	
	//If we find one that matches, then return true
	if (plyQst[QUEST_FIELD.NAME] == qst[QUEST_FIELD.NAME]){
		
		return list(true,i);
		
	}
	
	
}
return list(false,-1);